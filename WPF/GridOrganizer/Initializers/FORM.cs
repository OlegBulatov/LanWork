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
    public class FORMStruct : DIOSObject
    {
        public string form { get; set; }
        public string changer { get; set; }
        public string created_at { get; set; }
        public string updated_at { get; set; }
        public string object_type { get; set; }
        public string form_type { get; set; }
        public string type_name { get; set; }
        public string wpf_type_name { get; set; }
        public string is_default { get; set; }
        public string assembly_name { get; set; }
    }

    class FORM : CollectionInitializer
    {
        public override string ObjectClassName
        {
            get
            {
                return "FORM";
            }
        }
        public override INotifyPropertyChanged GetObjectCollection(string Where)
        {
            DIOSObjectCollection<FORMStruct> col = new DIOSObjectCollection<FORMStruct>(ObjectClassName, Where, "");
            this.objectCollection = col;
            return col;

        }

        public override bool GenerateColumns(DataGrid dataGrid)
        {
            Binding colBinding = null;

            DataGridTextColumn formColumn = new DataGridTextColumn();
            formColumn.Header = "#";
            colBinding = new Binding("form");
            dataGrid.Columns.Add(formColumn);
            formColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn object_typeColumn = new DataGridTextColumn();
            object_typeColumn.Header = "object_type";
            colBinding = new Binding("object_type");
            dataGrid.Columns.Add(object_typeColumn);
            object_typeColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn form_typeColumn = new DataGridTextColumn();
            form_typeColumn.Header = "form_type";
            colBinding = new Binding("form_type");
            dataGrid.Columns.Add(form_typeColumn);
            form_typeColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn type_nameColumn = new DataGridTextColumn();
            type_nameColumn.Header = "type_name";
            colBinding = new Binding("type_name");
            dataGrid.Columns.Add(type_nameColumn);
            type_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn wpf_type_nameColumn = new DataGridTextColumn();
            wpf_type_nameColumn.Header = "wpf_type_name";
            colBinding = new Binding("wpf_type_name");
            dataGrid.Columns.Add(wpf_type_nameColumn);
            wpf_type_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn is_defaultColumn = new DataGridTextColumn();
            is_defaultColumn.Header = "is_default";
            colBinding = new Binding("is_default");
            dataGrid.Columns.Add(is_defaultColumn);
            is_defaultColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn assembly_nameColumn = new DataGridTextColumn();
            assembly_nameColumn.Header = "assembly_name";
            colBinding = new Binding("assembly_name");
            dataGrid.Columns.Add(assembly_nameColumn);
            assembly_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            return true;
        }
    }
}
