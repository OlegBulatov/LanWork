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
            ns.Write(answer, 0, answer.Length);     // отправляем сообщение
            try
            {
                while (client.Connected)  // пока клиент подключен, ждем приходящие сообщения
                {
                    byte[] msg = new byte[1024];     // готовим место для принятия сообщения
                    int count = ns.Read(msg, 0, msg.Length);   // читаем сообщение от клиента
                    Console.WriteLine("клиент пишет:");
                    Console.WriteLine(Encoding.Default.GetString(msg, 0, count)); // выводим на экран полученное сообщение в виде строки
                    Console.WriteLine("что отвечаем?");
                    string answerStr = Console.ReadLine();
                    answer = Encoding.Default.GetBytes(answerStr);  // конвертируем строку в массив байт
                    ns.Write(answer, 0, answer.Length);     // отправляем сообщение
                }
            }
            catch(Exception exc)
            {
                Console.WriteLine(exc.Message);
            }
        }
    }
}