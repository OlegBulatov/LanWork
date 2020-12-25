using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net;
using System.Net.Sockets;

namespace WinFormsSocketClient
{
    public partial class MainForm : Form
    {
        private string receivedText;
        private Socket theSocket = new Socket(SocketType.Stream, ProtocolType.Tcp);
        //private bool socketIsBusy = false;
        private System.Windows.Forms.Timer theTimer = new System.Windows.Forms.Timer();
        public MainForm()
        {
            InitializeComponent();
            theTimer.Tick += TheTimer_Tick;
            theTimer.Interval = 100;
        }

        private async void TheTimer_Tick(object sender, EventArgs e)
        {
            try
            {
                if (theSocket.Connected)// && !socketIsBusy)
                {
                    Task.Run(() => DoReceive());
                }
                if (receivedText != "")
                    tbReceiveText.Text += "\r\n";
                tbReceiveText.Text += receivedText;
                receivedText = "";
            }
            catch (Exception exc)
            {
                tbLastError.Text = exc.Message;
                MessageBox.Show(exc.Message);
                return;
            }
        }

        private async void DoReceive()
        {
            //socketIsBusy = true;
            //var readEvent = new AutoResetEvent(false);
            //var buffer = new byte[10000];
            //var recieveArgs = new SocketAsyncEventArgs()
            //{
            //    UserToken = readEvent
            //};
            //recieveArgs.SetBuffer(buffer, 0, buffer.Length);
            //theSocket.ReceiveAsync(recieveArgs);
            //readEvent.WaitOne();
            //tbReceiveText.Text = Encoding.UTF8.GetString(recieveArgs.Buffer);
            byte[] bytes = new byte[1024];
            int bytesRec = theSocket.Receive(bytes);
            if (bytesRec > 2)
            {
                if(bytesRec > 64)
                    receivedText = Encoding.UTF8.GetString(bytes, 0, bytesRec);
                else
                    receivedText = Encoding.UTF8.GetString(bytes, 2, bytesRec - 2);
            }
            //socketIsBusy = false;
        }

        private void bnConnect_Click(object sender, EventArgs e)
        {
            int port = -1;
            try
            {
                port = int.Parse(tbPort.Text);
            }
            catch
            {
                MessageBox.Show("Неверно задан порт");
                return;
            }
            try
            {
                theSocket = new Socket(SocketType.Stream, ProtocolType.Tcp);
                IPHostEntry ipHost = Dns.GetHostEntry(tbHost.Text);
                IPAddress ipAddr = ipHost.AddressList[ipHost.AddressList.Length - 1];
                IPEndPoint ipEndPoint = new IPEndPoint(ipAddr, port);

                theSocket.Connect(ipEndPoint);
                lbState.Text = "connected";
                tbLastError.Text = "";
                ToggleButtonsEnabled();
            }
            catch (Exception exc)
            {
                tbLastError.Text = exc.Message;
                MessageBox.Show(exc.Message);
                return;
            }
        }

        private void bnDisconnect_Click(object sender, EventArgs e)
        {
            try
            {
                theSocket.Disconnect(false);
                theSocket.Shutdown(SocketShutdown.Both);
                lbState.Text = "not connected";
                tbLastError.Text = "";
                ToggleButtonsEnabled();
            }
            catch (Exception exc)
            {
                tbLastError.Text = exc.Message;
                MessageBox.Show(exc.Message);
                return;
            }
        }

        private void ToggleButtonsEnabled()
        {
            bnConnect.Enabled = !bnConnect.Enabled;
            bnDisconnect.Enabled = !bnDisconnect.Enabled;
            bnSend.Enabled = bnDisconnect.Enabled;
        }

        private void bnSend_Click(object sender, EventArgs e)
        {
            byte[] msg = Encoding.UTF8.GetBytes(tbSendText.Text);

            if(msg.Length < 32)
            {
                //byte[] sendBytes = Encoding.UTF8.GetBytes(tbSendText.Text);
                //msg = new byte[sendBytes.Length + 2];
                //for (int c = 0; c < sendBytes.Length; c++)
                //{
                //    msg[c + 2] = sendBytes[c];
                //}
                //msg[0] = 129;
                //msg[1] = (byte)sendBytes.Length;
                msg = new byte[7];
                msg[0] = 129;
                msg[1] = 129;
                msg[2] = 236;
                msg[3] = 67;
                msg[4] = 218;
                msg[5] = 14;
                msg[6] = 221;
            }

            // Отправляем данные через сокет
            try
            {
                theSocket.Send(msg);
                theTimer.Start();
            }
            catch (Exception exc)
            {
                tbLastError.Text = exc.Message;
                MessageBox.Show(exc.Message);
                bnDisconnect_Click(null, null);
            }
        }
    }
}
