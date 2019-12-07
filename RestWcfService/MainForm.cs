using System;
using System.ServiceModel;
using System.ServiceModel.Configuration;
using System.ServiceModel.Description;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Reflection;

namespace RestWcfService
{
    public interface IRestServiceClass
    {
        displayMethod dMethod { get; set; }
        string ServerURL { get; set; }
        string ConnectionString { get; set; }
        void SetUserNameExt(string userName);
        Type serviceType { get; }
    }

    public delegate void displayMethod(string shortStatus, string longStatus);
    public partial class MainForm : Form
    {
        private void DisplayStatus(string shortStatus, string longStatus)
        {
            stLabel.Text = shortStatus;
            stLabel.ToolTipText = longStatus;
            tbError.Text = longStatus;
        }

        public IRestServiceClass RestService = null;

        public MainForm()
        {
            InitializeComponent();
            Type dType = GetServiceClassType();
            if (dType == null)
            {
                Assembly svcAssembly = Assembly.Load("RestWcfService");
                if (svcAssembly == null)
                    throw new Exception("assembly RestWcfService not found");
                dType = svcAssembly.GetType("RestWcfService.DCServiceClass");
            }
            if (dType == null)
                throw new Exception("type DCServiceClass not found");
            RestService = Activator.CreateInstance(dType) as IRestServiceClass;
            if(RestService == null)
                throw new Exception("service does not implement IRestServiceClass");
            RestService.dMethod = new displayMethod(DisplayStatus);
            DisplayStatus("please start", "press Start button");
            tbConnectionString.Text = Properties.Settings.Default.DatabaseConnectionString;
            tbUri.Text = Properties.Settings.Default.ClientWebServiceUrl;
            tbTempDir.Text = Properties.Settings.Default.TempDir;
            tbCompareFilesPath.Text = Properties.Settings.Default.CompareProgramPath;
            tbAfterSaveCommand.Text = Properties.Settings.Default.AfterSaveCommand;
            tbEditCommand.Text = Properties.Settings.Default.EditTextCommand;
            tbWordDir.Text = Properties.Settings.Default.WordDir;
            tbQueryExecProc.Text = Properties.Settings.Default.QueryExecuteProcedure;
            chUniqueNames.Checked = Properties.Settings.Default.UseUniqueFileNames;
            chDeleteAfterEdit.Checked = Properties.Settings.Default.DeleteFileAfterSaveOnServer;
            RestService.ServerURL = tbServerURL.Text = Properties.Settings.Default.ServerWebServiceUrl;
        }

        private void bnStart_Click(object sender, EventArgs e)
        {
            try
            {
                string address = tbUri.Text;
                ServiceHost host = new MyHost(RestService.serviceType, new Uri(address));
                //host.Description.Behaviors.Add(new HostBehavior());
                // Добавляем конечную точку службы с заданным интерфейсом, привязкой (создаём новую) и адресом конечной точки
                //host.Description.Endpoints.Add(new WebScriptEndpoint(ContractDescription.GetContract(typeof(ISqlService))));
                //host.AddServiceEndpoint(typeof(ISqlService), new BasicHttpBinding(), "");
                //host.AddServiceEndpoint(typeof(ISqlService), new WebHttpBinding(), "");
                //host.AddServiceEndpoint(new WebHttpEndpoint(ContractDescription.GetContract(typeof(ISqlService)), new EndpointAddress(new Uri(address))));
                //host.Description.Behaviors.Add(new ServiceMetadataBehavior());

                //ServiceDebugBehavior debugBhv = host.Description.Behaviors[typeof(ServiceDebugBehavior)] as ServiceDebugBehavior;
                //if(debugBhv != null)
                //    debugBhv.IncludeExceptionDetailInFaults = true;

                host.AddServiceEndpoint(ServiceMetadataBehavior.MexContractName, MetadataExchangeBindings.CreateMexHttpBinding(), address + "/mex");            // Запускаем службу

                //host.Description.Endpoints[0].EndpointBehaviors.Add(new WebScriptEnablingBehavior());
                //host.Description.Endpoints[0].EndpointBehaviors.Add(new EnableCorsBehavior());
                //host.Description.Endpoints[1].EndpointBehaviors.Add(new EnableCorsBehavior());
                // Запускаем службу
                host.Open();
                //host.Description.Endpoints[0].EndpointBehaviors.Add(new EnableCorsBehavior());
                //host.Description.Endpoints[0].EndpointBehaviors.Add(new WebScriptEnablingBehavior());
                DisplayStatus("OK", "WCF server started");
            }
            catch (Exception exc)
            {
                DisplayStatus("error", exc.Message); 
            }
        }

        private void tbConnectionString_TextChanged(object sender, EventArgs e)
        {
            RestService.ConnectionString = tbConnectionString.Text;
        }

        private void bnSaveSettings_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Сохранить настройки?", "Подтвердите действие", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                Properties.Settings.Default.DatabaseConnectionString = tbConnectionString.Text; 
                Properties.Settings.Default.ClientWebServiceUrl = tbUri.Text;
                RestService.ServerURL = Properties.Settings.Default.ServerWebServiceUrl = tbServerURL.Text;
                Properties.Settings.Default.TempDir = tbTempDir.Text;
                Properties.Settings.Default.CompareProgramPath = tbCompareFilesPath.Text;
                Properties.Settings.Default.AfterSaveCommand = tbAfterSaveCommand.Text;
                Properties.Settings.Default.EditTextCommand = tbEditCommand.Text;
                Properties.Settings.Default.WordDir = tbWordDir.Text;
                Properties.Settings.Default.QueryExecuteProcedure = tbQueryExecProc.Text;
                Properties.Settings.Default.UseUniqueFileNames = chUniqueNames.Checked;
                Properties.Settings.Default.DeleteFileAfterSaveOnServer = chDeleteAfterEdit.Checked;
                Properties.Settings.Default.Save();
                MessageBox.Show("Настройки сохранены"); 
            }
        }

        private void tbError_TextChanged(object sender, EventArgs e)
        {

        }

        private Type GetServiceClassType()
        {
            try
            {
                StreamReader SR = new StreamReader(AppDomain.CurrentDomain.BaseDirectory + "RestService.cs");
                string source = SR.ReadToEnd();//tbCompile.Text;
                                               //            System.Collections.Specialized.StringCollection additionalReferences = new System.Collections.Specialized.StringCollection();
                string[] referencedAssemblies = {
                                          "System.dll",
                                          "System.IO.dll",
                                          "System.Core.dll",
                                          "System.ServiceModel.dll",
                                          "System.ServiceModel.Web.dll",
                                          "Microsoft.CSharp.dll",
                                          AppDomain.CurrentDomain.BaseDirectory + "DersaClientService.exe",
                                          AppDomain.CurrentDomain.BaseDirectory + "DIOS.WordAdapter.dll",
                                          AppDomain.CurrentDomain.BaseDirectory + "Newtonsoft.Json.dll",
                                          AppDomain.CurrentDomain.BaseDirectory + "Dios.Common.dll",
                                          AppDomain.CurrentDomain.BaseDirectory + "Dios.SqlManager.dll",
                                          AppDomain.CurrentDomain.BaseDirectory + "Dios.Interfaces.dll"

                            };

                //additionalReferences.AddRange(referencedAssemblies);
                //if (Using == null)
                //    Using = new string[0];
                //additionalReferences.AddRange(Using);

                //referencedAssemblies = new string[additionalReferences.Count];
                //additionalReferences.CopyTo(referencedAssemblies, 0);

                System.CodeDom.Compiler.CompilerParameters cp = new System.CodeDom.Compiler.CompilerParameters(referencedAssemblies);
                cp.GenerateInMemory = true;

                cp.OutputAssembly = System.IO.Path.GetTempFileName(); //AppDomain.CurrentDomain.BaseDirectory + "Temp\\RestWcfService.dll";

                System.CodeDom.Compiler.ICodeCompiler codeCompiler = new Microsoft.CSharp.CSharpCodeProvider().CreateCompiler();
                System.CodeDom.Compiler.CompilerResults results = codeCompiler.CompileAssemblyFromSource(cp, source);
                if ((results != null) && (results.Output.Count > 0))
                {
                    System.Text.StringBuilder errorSb = new System.Text.StringBuilder();
                    for (int k = 0; k < results.Output.Count; k++)
                    {
                        errorSb.Append(results.Output[k] + "\r\n");
                    }
                    //Console.WriteLine(source);
                    tbError.Text = errorSb.ToString();
                }
                System.Reflection.Assembly assembly = results.CompiledAssembly;
                System.Type newObjectType = assembly.GetType("RestWcfService.DCServiceClass");
                return newObjectType;
            }
            catch(Exception exc)
            {
                tbError.Text = exc.Message;
                return null;
            }
        }
    }

    public class MyHost: ServiceHost
    {
        public MyHost(Type serviceType, params Uri[] baseAddresses):base(serviceType, baseAddresses)
        { }
        protected override ServiceDescription CreateDescription(out IDictionary<string, ContractDescription> implementedContracts)
        {
            return base.CreateDescription(out implementedContracts);
        }
    }

    public class Properties_Settings_Default
    {
        public static string QueryExecuteProcedure
        {
            get
            {
                return Properties.Settings.Default.QueryExecuteProcedure;
            }
            set
            {
                Properties.Settings.Default.QueryExecuteProcedure = value;
            }
        }
        public static string TempDir
        {
            get
            {
                return Properties.Settings.Default.TempDir;
            }
            set
            {
                Properties.Settings.Default.TempDir = value;
            }
        }
        public static string CompareProgramPath
        {
            get
            {
                return Properties.Settings.Default.CompareProgramPath;
            }
            set
            {
                Properties.Settings.Default.CompareProgramPath = value;
            }
        }
        public static string AfterSaveCommand
        {
            get
            {
                return Properties.Settings.Default.AfterSaveCommand;
            }
            set
            {
                Properties.Settings.Default.AfterSaveCommand = value;
            }
        }
        public static string EditTextCommand
        {
            get
            {
                return Properties.Settings.Default.EditTextCommand;
            }
            set
            {
                Properties.Settings.Default.EditTextCommand = value;
            }
        }
        public static string WordDir
        {
            get
            {
                return Properties.Settings.Default.WordDir;
            }
            set
            {
                Properties.Settings.Default.WordDir = value;
            }
        }
        public static bool DeleteFileAfterSaveOnServer
        {
            get
            {
                return Properties.Settings.Default.DeleteFileAfterSaveOnServer;
            }
            set
            {
                Properties.Settings.Default.DeleteFileAfterSaveOnServer = value;
            }
        }
        public static bool UseUniqueFileNames
        {
            get
            {
                return Properties.Settings.Default.UseUniqueFileNames;
            }
            set
            {
                Properties.Settings.Default.UseUniqueFileNames = value;
            }
        }
    }
}
