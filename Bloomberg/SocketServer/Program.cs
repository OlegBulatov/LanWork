using System;
using System.Text;
using System.Net;      
using System.Net.Sockets;
class Program
{
    private static string url;
    static void Main()
    {
        // устанавливаем IP-адрес сервера и номер порта 1234
        TcpListener server = new TcpListener(IPAddress.Any, 5000);
        server.Start();  // запускаем сервер
        while (true)   // бесконечный цикл обслуживания клиентов
        {
            TcpClient client = server.AcceptTcpClient();  // ожидаем подключение клиента
            NetworkStream ns = client.GetStream(); // для получения и отправки сообщений
            byte[] answer = new byte[100];   // любое сообщение должно быть сериализовано
            answer = Encoding.Default.GetBytes("READY");  // конвертируем строку в массив байт
            //ns.Write(answer, 0, answer.Length);     // отправляем сообщение
            string clientKey = "";
            int count = 0;
            bool headerSent = false;
            try
            {
                while (client.Connected)  // пока клиент подключен, ждем приходящие сообщения
                {
                    if (true)//(count < 1)
                    {
                        byte[] msg = new byte[1024];     // готовим место для принятия сообщения
                        count = ns.Read(msg, 0, msg.Length);   // читаем сообщение от клиента
                        Console.WriteLine("клиент пишет:");
                        string clientMessage = Encoding.Default.GetString(msg, 0, count);
                        if (clientMessage.Contains("<") && clientMessage.Contains(">"))
                        {
                            for (int i = 0; i < count; i++)
                            {
                                if (msg[i] >= 32)
                                    Console.Write("{0}", (char)msg[i]);
                                else
                                    Console.Write("{0:x}", msg[i]);
                            }
                        }
                        else
                        {
                            string[] messageLines = clientMessage.Split('\n');
                            for (int i = 0; i < messageLines.Length; i++)
                            {
                                if (messageLines[i].Contains("Sec-WebSocket-Key"))
                                {
                                    clientKey = messageLines[i].Split(':')[1].Trim();
                                }
                            }
                            Console.WriteLine(clientMessage); // выводим на экран полученное сообщение в виде строки
                        }
                    }
                    Console.WriteLine("что отвечаем?");
                    string answerStr = Console.ReadLine();
                    if (answerStr == "")
                        continue;
                    string serverAccept = "";
                    if (answerStr == "1")
                    {
                        using (System.Security.Cryptography.SHA1Managed sha1 = new System.Security.Cryptography.SHA1Managed())
                        {
                            var hash = sha1.ComputeHash(Encoding.UTF8.GetBytes(clientKey + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"));
                            serverAccept = Convert.ToBase64String(hash);
                        }
                        answerStr =
                            "HTTP/1.1 101 Switching Protocols\r\n"
                            + "Upgrade: websocket\r\n"
                            + "Server: Microsoft-HTTPAPI/2.0\r\n"
                            + "Connection: Upgrade\r\n"
                            + "Sec-WebSocket-Accept: " + serverAccept + "\r\n"
                            + "Date: Fri, 18 Dec 2020 08:40:22 GMT\r\n\r\n";
                        answer = Encoding.UTF8.GetBytes(answerStr);
                    }
                    else
                    {
                        byte[] answerBytes = Encoding.UTF8.GetBytes(answerStr);
                        answer = new byte[answerBytes.Length + 2];
                        for (int c = 0; c < answerBytes.Length; c++)
                        {
                            answer[c + 2] = answerBytes[c];
                        }
                        answer[0] = 129;
                        answer[1] = (byte)answerBytes.Length;
                    }
                    //if(headerSent)
                    //{
                    //    answer[0] = 0;
                    //    answer[answer.Length - 1] = 255;
                    //}
                    ns.Write(answer, 0, answer.Length);     // отправляем сообщение
                    headerSent = true;
                    Console.WriteLine(answerStr);
                }
            }
            catch(Exception exc)
            {
                Console.WriteLine(exc.Message);
            }
        }
    }
}