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

namespace Dersa.SqlClient
{
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
            SqlService.SetNotifyMethod(new NotifyParentForm(DisplayStatus));
            DisplayStatus("please start", "press Start button");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string address = tbUri.Text;
                ServiceHost host = new MyHost(typeof(SqlService), new Uri(address));
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
