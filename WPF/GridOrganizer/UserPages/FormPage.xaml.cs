using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Windows.Foundation;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;
using DIOS.Web.XamlExtensions;

namespace GridOrganizer
{
    public class ObjectForm : DIOSObject
    {
        public string form { get; set; }
        public string type_name { get; set; }
        public string object_type { get; set; }
    }

    public partial class FormPage : Page
    {
        public FormPage()
        {
            this.InitializeComponent();
            DataGridTextColumn formColumn = new DataGridTextColumn();
            formColumn.Header = "Форма";
            Binding colBinding = new Binding("form");
            FormGrid.Columns.Add(formColumn);
            formColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);
            DataGridTextColumn formTypeColumn = new DataGridTextColumn();
            formTypeColumn.Header = "Тип";
            colBinding = new Binding("type_name");
            FormGrid.Columns.Add(formTypeColumn);
            formTypeColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);
            DataGridTextColumn objectTypeColumn = new DataGridTextColumn();
            objectTypeColumn.Header = "Объект";
            colBinding = new Binding("object_type");
            FormGrid.Columns.Add(objectTypeColumn);
            objectTypeColumn.SetBinding(DataGridBoundColumn.BindingProperty, colBinding);

            this.DataContext = new DIOSObjectCollection<ObjectForm>("FORM", "", "");

            this.KeyDown += FormPage_KeyDown;
        }

        private void FormPage_KeyDown(object sender, KeyRoutedEventArgs e)
        {
            if (e.Key != Windows.System.VirtualKey.R)
                return;
            //cntrObjectType.FilterControllerValue = "2";
            IFilterControlled objectCollection = this.DataContext as IFilterControlled;
            if (objectCollection != null)
                objectCollection.Refresh();
        }

        public void SetParent(object Source, string Path)
        {
            Binding parentBinding = new Binding(Path);
            parentBinding.Source = Source;
            cntrObjectType.SetBinding(DCController.FilterControllerValueProperty, parentBinding);
        }

    }
}
