using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using DIOS.Common;
using DIOS.Common.Interfaces;
using System.Diagnostics;
using System.ServiceModel;
using Newtonsoft.Json;

namespace SaveGivenCsvFile
{

    public partial class DisplayCountForm : Form
    {
        //int RecordsCount;
        //int RecordsCountPrevious;
        //string[] _args;

        //[STAThread]
        public static async void ExportToExcel(string[] Args, DisplayCountMethod dcMethod, Form form)
        {
            StreamWriter SW = null;
            string fileName = "";
            string query = Args[0].Replace("[[]]", " ");
            string headersSubstitutions = null;
            if(Args.Length > 2)
                headersSubstitutions = Args[2].Replace("[[]]", " ");
            try
            {
                string Password = "";
                if (!string.IsNullOrEmpty(Properties.Settings.Default.Password))
                    Password = Cryptor.Decrypt(Properties.Settings.Default.Password, "ntcnjdsq");
                string connString = Properties.Settings.Default.ConnectionString.Replace("********", Password);
                if (!Properties.Settings.Default.UseWcf)
                {
                    Hashtable HT = new Hashtable();
                    HT.Add("FF1", "поле русское поле");
                    headersSubstitutions = JsonConvert.SerializeObject(HT);
                    IParameterCollection Params = new ParameterCollection();
                    Params.Add("headers_substitutions", headersSubstitutions);
                    SqlManager M = new SqlManager(connString);
                    M.dbManager.displayCountMethod = dcMethod;
                    fileName = Properties.Settings.Default.FolderName + "\\" + Args[1].Replace("[[]]", " ");
                    if (File.Exists(fileName))
                        File.Delete(fileName);
                    Stream S = new FileStream(fileName, FileMode.OpenOrCreate);
                    SW = new StreamWriter(S, Encoding.Default);
                    if (dcMethod != null)
                        await M.ExecSqlToStreamAsync(query, SW, Params, Properties.Settings.Default.CounterStep);
                    else
                        M.ExecSqlToStream(query, SW, Params);
                }
                else
                {
                    QueryService.QueryServiceClient serviceClient = new QueryService.QueryServiceClient();
                    if (!string.IsNullOrEmpty(Properties.Settings.Default.WcfServiceUrl))
                        serviceClient.Endpoint.Address = new EndpointAddress(Properties.Settings.Default.WcfServiceUrl);
                    //serviceClient.Endpoint.ListenUri = new Uri(Properties.Settings.Default.WcfServiceUrl);
                    fileName = serviceClient.GetQueryId(query, connString);
                }
                if (!string.IsNullOrEmpty(Properties.Settings.Default.Command))
                {
                    Process proc = new Process();
                    proc.StartInfo.FileName = Properties.Settings.Default.Command;
                    proc.StartInfo.Arguments = fileName;
                    proc.Start();
                }
                if(form != null )
                    form.Close();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
            finally
            {
                if (SW != null)
                    SW.Close();
            }
        }


        public void DisplayCount(int C)
        {
            try
            {
                //RecordsCount = C;
                //if (RecordsCount - RecordsCountPrevious >= 100)
                //{
                    //RecordsCountPrevious = RecordsCount;
                    label1.Invoke(new Action(() => label1.Text = C.ToString()));
                //}
            }
            catch
            {
            }
        }
        public DisplayCountForm(string[] Args)
        {
            InitializeComponent();
            this.FormBorderStyle = FormBorderStyle.None;
            //_args = Args;
            ExportToExcel(Args, new DisplayCountMethod(DisplayCount), this);
        }

    }
}
