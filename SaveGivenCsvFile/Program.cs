using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DIOS.Common;
using System.IO;
using System.Text;
using System.Diagnostics;

namespace SaveGivenCsvFile
{
    static class Program
    {
        /// <summary>
        /// Главная точка входа для приложения.
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            if (args.Length < 2)
            {
                Application.EnableVisualStyles();
                Application.SetCompatibleTextRenderingDefault(false);
                Application.Run(new SettingsForm());
                //MessageBox.Show(string.Format("Not enough input data, args count = {0}", args.Length));
                //return;
            }
            else
            {
                string[] modifiedArgs = args[1].Replace("{{{}}}", "ъ").Split('ъ');
                //for (int i = 0; i < modifiedArgs.Length; i++)
                //    MessageBox.Show(modifiedArgs[i].Replace("[[]]", " "));

                if(args.Length > 2)
                {
                    Stream S = File.Open(args[2], FileMode.Open);
                    StreamReader SR = new StreamReader(S);
                    string queryText = SR.ReadToEnd();
                    MessageBox.Show(queryText);
                    modifiedArgs[0] = queryText;
                }
                if (Properties.Settings.Default.ShowCount && !Properties.Settings.Default.UseWcf)
                {
                    Application.EnableVisualStyles();
                    Application.SetCompatibleTextRenderingDefault(false);
                    DisplayCountForm F = new DisplayCountForm(modifiedArgs);
                    Application.Run(F);
                }
                else
                {
                    DisplayCountForm.ExportToExcel(modifiedArgs, null, null);
                }
            }
        }
    }
}
