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
    public class OBJECT_TYPEStruct : DIOSObject
    {
        public string object_type { get; set; }
        public string changer { get; set; }
        public string created_at { get; set; }
        public string updated_at { get; set; }
        public string assembly_name { get; set; }
        public string class_name { get; set; }
        public string database_name { get; set; }
        public string key_name { get; set; }
        public string _name { get; set; }
        public string records_limit { get; set; }
        public string table_name { get; set; }
        public string type_name { get; set; }
    }

    class OBJECT_TYPE : CollectionInitializer
    {
        public override string ObjectClassName
        {
            get
            {
                return "OBJECT_TYPE";
            }
        }

        public override INotifyPropertyChanged GetObjectCollection(string Where) 
        {
            DIOSObjectCollection<OBJECT_TYPEStruct> col = new DIOSObjectCollection<OBJECT_TYPEStruct>(ObjectClassName, Where, "");
            this.objectCollection = col;
            return col;
        }

        public override bool GenerateColumns(DataGrid dataGrid)
        {
            Binding colBinding = null;

            DataGridTextColumn object_typeColumn = new DataGridTextColumn();
            object_typeColumn.Header = "#";
            colBinding = new Binding("object_type");
            dataGrid.Columns.Add(object_typeColumn);
            object_typeColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn assembly_nameColumn = new DataGridTextColumn();
            assembly_nameColumn.Header = "assembly_name";
            colBinding = new Binding("assembly_name");
            dataGrid.Columns.Add(assembly_nameColumn);
            assembly_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn class_nameColumn = new DataGridTextColumn();
            class_nameColumn.Header = "class_name";
            colBinding = new Binding("class_name");
            dataGrid.Columns.Add(class_nameColumn);
            class_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn database_nameColumn = new DataGridTextColumn();
            database_nameColumn.Header = "database_name";
            colBinding = new Binding("database_name");
            dataGrid.Columns.Add(database_nameColumn);
            database_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn key_nameColumn = new DataGridTextColumn();
            key_nameColumn.Header = "key_name";
            colBinding = new Binding("key_name");
            dataGrid.Columns.Add(key_nameColumn);
            key_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn _nameColumn = new DataGridTextColumn();
            _nameColumn.Header = "name";
            colBinding = new Binding("_name");
            dataGrid.Columns.Add(_nameColumn);
            _nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn records_limitColumn = new DataGridTextColumn();
            records_limitColumn.Header = "records_limit";
            colBinding = new Binding("records_limit");
            dataGrid.Columns.Add(records_limitColumn);
            records_limitColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn table_nameColumn = new DataGridTextColumn();
            table_nameColumn.Header = "table_name";
            colBinding = new Binding("table_name");
            dataGrid.Columns.Add(table_nameColumn);
            table_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn type_nameColumn = new DataGridTextColumn();
            type_nameColumn.Header = "type_name";
            colBinding = new Binding("type_name");
            dataGrid.Columns.Add(type_nameColumn);
            type_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            return true;
        }
    }
}
