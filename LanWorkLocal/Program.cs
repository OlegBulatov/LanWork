using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LanWorkLocal
{
    class Program
    {
        static void Main(string[] args)
        {
            using (Microsoft.Owin.Hosting.WebApp.Start<Startup>("http://localhost:8087"))
            {
                Console.WriteLine("Сервер запущен. Нажмите любую клавишу для завершения работы...");
                Console.ReadLine();
            }
        }
    }
}
