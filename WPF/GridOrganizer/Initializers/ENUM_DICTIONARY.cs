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
    public class ENUM_DICTIONARYStruct : DIOSObject
    {
        public string enum_dictionary { get; set; }
        public string assembly_name { get; set; }
        public string enum_class { get; set; }
        public string enum_namespace { get; set; }
        public string description { get; set; }
    }

    class ENUM_DICTIONARY : CollectionInitializer
    {
        public override string ObjectClassName
        {
            get
            {
                return "ENUM_DICTIONARY";
            }
        }
        public override INotifyPropertyChanged GetObjectCollection(string Where)
        {
            return new DIOSObjectCollection<ENUM_DICTIONARYStruct>(ObjectClassName, Where, "");
        }

        public override bool GenerateColumns(DataGrid dataGrid)
        {
            Binding colBinding = null;

            DataGridTextColumn enum_dictionaryColumn = new DataGridTextColumn();
            enum_dictionaryColumn.Header = "#";
            colBinding = new Binding("enum_dictionary");
            dataGrid.Columns.Add(enum_dictionaryColumn);
            enum_dictionaryColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn assembly_nameColumn = new DataGridTextColumn();
            assembly_nameColumn.Header = "assembly_name";
            colBinding = new Binding("assembly_name");
            dataGrid.Columns.Add(assembly_nameColumn);
            assembly_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn enum_classColumn = new DataGridTextColumn();
            enum_classColumn.Header = "enum_class";
            colBinding = new Binding("enum_class");
            dataGrid.Columns.Add(enum_classColumn);
            enum_classColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn enum_namespaceColumn = new DataGridTextColumn();
            enum_namespaceColumn.Header = "enum_namespace";
            colBinding = new Binding("enum_namespace");
            dataGrid.Columns.Add(enum_namespaceColumn);
            enum_namespaceColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn descriptionColumn = new DataGridTextColumn();
            descriptionColumn.Header = "description";
            colBinding = new Binding("description");
            dataGrid.Columns.Add(descriptionColumn);
            descriptionColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            return true;
        }
    }
}
