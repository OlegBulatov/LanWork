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
    public class DELPHI_TREEStruct : DIOSObject
    {
        public string delphi_tree { get; set; }
        public string h001_id { get; set; }
        public string h001_parent_id { get; set; }
        public string h001_class_name { get; set; }
        public string h001_displ_name { get; set; }
        public string H001_MX_OPERATION { get; set; }
        public string H001_ENABLED { get; set; }
        public string H001_POSITION { get; set; }
        public string parent { get; set; }
        public string sequence { get; set; }
    }

    class DELPHI_TREE : CollectionInitializer
    {
        public override string ObjectClassName
        {
            get
            {
                return "DELPHI_TREE";
            }
        }
        public override INotifyPropertyChanged GetObjectCollection(string Where)
        {
            DIOSObjectCollection<DELPHI_TREEStruct> col = new DIOSObjectCollection<DELPHI_TREEStruct>(ObjectClassName, Where, "");
            this.objectCollection = col;
            return col;
        }

        public override bool GenerateColumns(DataGrid dataGrid)
        {
            Binding colBinding = null;

            DataGridTextColumn delphi_treeColumn = new DataGridTextColumn();
            delphi_treeColumn.Header = "#";
            colBinding = new Binding("delphi_tree");
            dataGrid.Columns.Add(delphi_treeColumn);
            delphi_treeColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn h001_idColumn = new DataGridTextColumn();
            h001_idColumn.Header = "ID записи";
            colBinding = new Binding("h001_id");
            dataGrid.Columns.Add(h001_idColumn);
            h001_idColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn h001_parent_idColumn = new DataGridTextColumn();
            h001_parent_idColumn.Header = "ID предка";
            colBinding = new Binding("h001_parent_id");
            dataGrid.Columns.Add(h001_parent_idColumn);
            h001_parent_idColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn h001_class_nameColumn = new DataGridTextColumn();
            h001_class_nameColumn.Header = "Название класса";
            colBinding = new Binding("h001_class_name");
            dataGrid.Columns.Add(h001_class_nameColumn);
            h001_class_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn h001_displ_nameColumn = new DataGridTextColumn();
            h001_displ_nameColumn.Header = "Отображаемое название";
            colBinding = new Binding("h001_displ_name");
            dataGrid.Columns.Add(h001_displ_nameColumn);
            h001_displ_nameColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn H001_MX_OPERATIONColumn = new DataGridTextColumn();
            H001_MX_OPERATIONColumn.Header = "Операция в Матриксе";
            colBinding = new Binding("H001_MX_OPERATION");
            dataGrid.Columns.Add(H001_MX_OPERATIONColumn);
            H001_MX_OPERATIONColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn H001_ENABLEDColumn = new DataGridTextColumn();
            H001_ENABLEDColumn.Header = "Признак активности записи";
            colBinding = new Binding("H001_ENABLED");
            dataGrid.Columns.Add(H001_ENABLEDColumn);
            H001_ENABLEDColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn H001_POSITIONColumn = new DataGridTextColumn();
            H001_POSITIONColumn.Header = "Номер по порядку";
            colBinding = new Binding("H001_POSITION");
            dataGrid.Columns.Add(H001_POSITIONColumn);
            H001_POSITIONColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn parentColumn = new DataGridTextColumn();
            parentColumn.Header = "parent";
            colBinding = new Binding("parent");
            dataGrid.Columns.Add(parentColumn);
            parentColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            DataGridTextColumn sequenceColumn = new DataGridTextColumn();
            sequenceColumn.Header = "sequence";
            colBinding = new Binding("sequence");
            dataGrid.Columns.Add(sequenceColumn);
            sequenceColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            return true;
        }
    }
}
