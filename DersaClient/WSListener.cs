﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.WebSockets;
using System.Threading;
using Newtonsoft.Json;
using System.Runtime.Remoting.Messaging;
using System.Reflection;

namespace DersaClientService
{
    class WSListener
    {
        private object methodCallService = null;
        private MethodCallDecoder decoder = null;
        private string _wsUri;
        public delegate void ConnectHanler();
        public event ConnectHanler  OnConnect;
        public event displayMethod OnReceiveMessage;
        public event displayMethod OnConnectError;
        public WSListener(string ws_uri, IMethodCallServiceClass serviceEnvelope, ConnectHanler connectHanler)
        {
            methodCallService = Activator.CreateInstance(serviceEnvelope.serviceType);

            _wsUri = ws_uri;
            OnConnect += connectHanler;
            OnReceiveMessage += serviceEnvelope.dMethod;
            OnConnectError += serviceEnvelope.dMethod;
            Task T = new Task(ProcessMessages);
            T.Start();
        }
        private async void ProcessMessages()
        {
            long messageLength = -1;
            using (var ws = new ClientWebSocket())
            {
                try
                {
                    await ws.ConnectAsync(new Uri(_wsUri), CancellationToken.None);
                    OnConnect?.Invoke();

                    while (ws.State == WebSocketState.Open)
                    {
                        try
                        {
                            var buf = new ArraySegment<byte>(new byte[512]);
                            var result = await ws.ReceiveAsync(buf, CancellationToken.None);

                            if (result.MessageType == WebSocketMessageType.Close)
                            {
                                await ws.CloseAsync(WebSocketCloseStatus.NormalClosure, null, CancellationToken.None);
                                //Console.WriteLine(result.CloseStatusDescription);
                            }
                            else
                            {
                                string maybeHeader = Encoding.UTF8.GetString(buf.ToArray<byte>(), 0, result.Count);
                                try
                                {
                                    var keys = JsonConvert.DeserializeObject<Dictionary<string, object>>(maybeHeader);
                                    messageLength = (long)keys["length"];
                                }
                                catch (Exception exc)
                                {
                                    messageLength = -1;
                                }
                            }
                            if (messageLength > 0)
                            {
                                var messageBuf = new ArraySegment<byte>(new byte[messageLength]);
                                var messageResult = await ws.ReceiveAsync(messageBuf, CancellationToken.None);

                                if (result.MessageType == WebSocketMessageType.Close)
                                {
                                    await ws.CloseAsync(WebSocketCloseStatus.NormalClosure, null, CancellationToken.None);
                                    //Console.WriteLine(result.CloseStatusDescription);
                                }
                                else
                                {
                                    string messageBody = Encoding.UTF8.GetString(messageBuf.ToArray<byte>(), 0, messageResult.Count);
                                    try
                                    {
                                        if (decoder == null)
                                            decoder = new MethodCallDecoder(methodCallService);
                                        string callResult = decoder.CallServiceMethod(messageBody);
                                        if (callResult != null)
                                            OnReceiveMessage?.Invoke($"get message {messageBody}", callResult);
                                    }
                                    catch (Exception exc)
                                    {
                                        //something logging logics 
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            //Console.WriteLine(ex.Message);
                        }
                    }
                }
                catch (Exception exc)
                {
                    OnConnectError?.Invoke("connection error", exc.Message);
                }
            }
        }

    }
}