using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Data;
using DIOS.Web.XamlExtensions;

namespace GridOrganizer
{
    public class CLASS_INFOStruct : DIOSObject
    {
        public string class_info { get; set; }
        public string property_name { get; set; }
        public string sql_type_name { get; set; }
        public string class_name { get; set; }
        public string description { get; set; }
    }

    class CLASS_INFO : CollectionInitializer
    {
        public override string ObjectClassName
        {
            get
            {
                return "CLASS_INFO";
            }
        }
        public override INotifyPropertyChanged GetObjectCollection(string Where)
        {
            DIOSObjectCollection<CLASS_INFOStruct> col = new DIOSObjectCollection<CLASS_INFOStruct>(ObjectClassName, Where, "");
            this.objectCollection = col;
            return col;
        }

        public override bool GenerateColumns(DataGrid dataGrid)
        {
            Binding colBinding = null;

            DataGridTextColumn class_infoColumn = new DataGridTextColumn();
            class_infoColumn.Header = "#";
            colBinding = new Binding("class_info");
            dataGrid.Columns.Add(class_infoColumn);
            class_infoColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn property_nameColumn = new DataGridTextColumn();
            property_nameColumn.Header = "property_name";
            colBinding = new Binding("property_name");
            dataGrid.Columns.Add(property_nameColumn);
            property_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn sql_type_nameColumn = new DataGridTextColumn();
            sql_type_nameColumn.Header = "sql_type_name";
            colBinding = new Binding("sql_type_name");
            dataGrid.Columns.Add(sql_type_nameColumn);
            sql_type_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn class_nameColumn = new DataGridTextColumn();
            class_nameColumn.Header = "class_name";
            colBinding = new Binding("class_name");
            dataGrid.Columns.Add(class_nameColumn);
            class_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn descriptionColumn = new DataGridTextColumn();
            descriptionColumn.Header = "description";
            colBinding = new Binding("description");
            dataGrid.Columns.Add(descriptionColumn);
            descriptionColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            return true;
        }
    }
}
