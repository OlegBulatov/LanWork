using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RestWcfService
{
    static class Program
    {
        /// <summary>
        /// Главная точка входа для приложения.
        /// </summary>
        [STAThread]
        static void Main(string[] Args)
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            MainForm MF = new MainForm();
            //if (Args != null && Args.Length > 0)
            //    MF.RestService.SetUserNameExt(Args[0]);
            Application.Run(MF);
        }
    }
}
