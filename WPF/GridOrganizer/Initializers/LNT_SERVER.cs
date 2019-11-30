using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Data;
using DIOS.Web.XamlExtensions;
using CSHTML5;

namespace GridOrganizer
{
    public class LNT_SERVERStruct : DIOSObject
    {
        public string lnt_server { get; set; }
        public string _name { get; set; }
        public string ip_address { get; set; }
        public string description { get; set; }
    }

    class LNT_SERVER : CollectionInitializer
    {
        public override string ObjectClassName
        {
            get
            {
                return "LNT_SERVER";
            }
        }
        public override INotifyPropertyChanged GetObjectCollection(string Where)
        {
            DIOSObjectCollection<LNT_SERVERStruct> col = new DIOSObjectCollection<LNT_SERVERStruct>(ObjectClassName, Where, "");
            this.objectCollection = col;
            return col;
        }

        public override bool GenerateColumns(DataGrid dataGrid)
        {
            Binding colBinding = null;

            DataGridTextColumn lnt_serverColumn = new DataGridTextColumn();
            lnt_serverColumn.Header = "#";
            colBinding = new Binding("lnt_server");
            dataGrid.Columns.Add(lnt_serverColumn);
            lnt_serverColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn _nameColumn = new DataGridTextColumn();
            _nameColumn.Header = "название";
            colBinding = new Binding("_name");
            dataGrid.Columns.Add(_nameColumn);
            _nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            return true;
        }
    }
}
