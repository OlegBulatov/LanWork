using System;
using System.ServiceModel;
using System.ServiceModel.Configuration;
using System.ServiceModel.Description;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RestWcfService
{
    public delegate void displayMethod(string shortStatus, string longStatus);
    public partial class MainForm : Form
    {

        private void DisplayStatus(string shortStatus, string longStatus)
        {
            stLabel.Text = shortStatus;
            stLabel.ToolTipText = longStatus;
            tbError.Text = longStatus;
        }

        public MainForm()
        {
            InitializeComponent();
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

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string address = tbUri.Text;
                ServiceHost host = new MyHost(typeof(RestService), new Uri(address));
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
}
