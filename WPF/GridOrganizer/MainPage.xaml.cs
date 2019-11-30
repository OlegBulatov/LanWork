using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using DIOS.Web.XamlExtensions;

namespace GridOrganizer
{

    public class Module : DIOSObject
    {
        public string title { get; set; }
        public string form { get; set; }
        public string wpf_type_name { get; set; }
    }

    public partial class MainPage : Page
    {
        private string _token;
        private static int newTabNumber = 1;
        private DIOSObjectCollection<Module> XOC = null;
        public MainPage()
        {
            ExternalListMethod externalListMethod = new ExternalListMethod(ObjectList);
            ExternalUpdateMethod externalUpdateMethod = new ExternalUpdateMethod(UpdateObject);
            ExternalInsertMethod externalInsertMethod = new ExternalInsertMethod(InsertObject);
            ExternalDeleteMethod externalDeleteMethod = new ExternalDeleteMethod(DeleteObject);
            WebDataAdapter.Initialize(externalListMethod, externalUpdateMethod, externalInsertMethod, externalDeleteMethod, this.DataContext);
            this.InitializeComponent();
            XOC = new DIOSObjectCollection<Module>("MODULE", "", "");
            ModuleGrid.DataContext = XOC;
            //MessageBox.Show(XOC.XObjects.ToString());
            // Enter construction logic here...
        }

        private string DeleteObject(string class_name, int id)
        {
            ObjectService.ObjectWcfServiceClient sClient = new ObjectService.ObjectWcfServiceClient();
            if (_token == null)
                _token = sClient.GetUserToken("scott", "tiger");
            return sClient.DropObject(class_name, id, _token);
        }
        private string InsertObject(string class_name, string json_object)
        {
            ObjectService.ObjectWcfServiceClient sClient = new ObjectService.ObjectWcfServiceClient();
            if (_token == null)
                _token = sClient.GetUserToken("scott", "tiger");
            return sClient.CreateObject(class_name, json_object, _token);
        }
        private string UpdateObject(string class_name, string json_object)
        {
            ObjectService.ObjectWcfServiceClient sClient = new ObjectService.ObjectWcfServiceClient();
            if (_token == null)
                _token = sClient.GetUserToken("scott", "tiger");
            return sClient.SetObjectView(class_name, json_object, _token);
        }
        private string ObjectList(string className, string Where, string Order)
        {
            ObjectService.ObjectWcfServiceClient sClient = new ObjectService.ObjectWcfServiceClient();
            if(_token == null)
                _token = sClient.GetUserToken("scott", "tiger");
            return sClient.SimpleList(className, Where, Order, -1, 0, _token);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            htmlMenu.Expand();
            MainGrid.ColumnDefinitions[0].Width = new GridLength(200, GridUnitType.Auto);
            //ModuleGrid.Visibility = Visibility.Visible;
            return;
            try
            {
                object dynSO = XOC.SelectedObject;
                if (dynSO is Module)
                {
                    string initializerTypeName = (dynSO as Module).wpf_type_name;
                    string formId = (dynSO as Module).form;
                    bool found = LocateTabItem(initializerTypeName);
                    AddTabItem(initializerTypeName, formId, found);
                }
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }

        }

        private void NewItem_RightTapped(object sender, Windows.UI.Xaml.Input.RightTappedRoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Закрыть закладку?", "Подтвердите действие", MessageBoxButton.OKCancel);
            if (result == MessageBoxResult.OK)
                MainTabControl.Items.Remove(sender);
        }


        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            if (MainTabControl.Items.Count > 4)
                MainTabControl.Items.RemoveAt(MainTabControl.Items.Count - 1);
        }

        public void OpenModule(string formId, string initializerTypeName, bool doAsk=true)
        {
            if (!LocateTabItem(initializerTypeName))
                AddTabItem(initializerTypeName, formId, doAsk);
        }

        private void ObjectTypeGrid_RightTapped(object sender, Windows.UI.Xaml.Input.RightTappedRoutedEventArgs e)
        {
            try
            {
                object dynSO = XOC.SelectedObject;
                if (dynSO is Module)
                {
                    string initializerTypeName = (dynSO as Module).wpf_type_name;
                    string formId = (dynSO as Module).form;
                    OpenModule(formId, initializerTypeName);
                }
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }

        private void bnRefresh_Click(object sender, RoutedEventArgs e)
        {
            DIOSObjectCollection<Module> xoc = new DIOSObjectCollection<Module>("MODULE", "", "");
            ModuleGrid.DataContext = xoc;
            XOC = xoc;
        }

        private void bnTest_Click(object sender, RoutedEventArgs e)
        {
            if (MainGrid.ColumnDefinitions[0].ActualWidth < 50)
            {
                htmlMenu.Expand();
                MainGrid.ColumnDefinitions[0].Width = new GridLength(200);
            }
            else
            {
                htmlMenu.Collapse();
                MainGrid.ColumnDefinitions[0].Width = new GridLength(10);
            }
        }

        private void AddTabItem(string initializerTypeName, string formId, bool doAsk = true)
        {
            string className = initializerTypeName.Contains(".") ? initializerTypeName.Split('.')[1] : initializerTypeName;
            if (doAsk)
            {
                MessageBoxResult result = MessageBox.Show("Добавить закладку для " + className + "?", "Подтвердите действие", MessageBoxButton.OKCancel);
                if (result != MessageBoxResult.OK)
                    return;
            }

            TabItem newItem = new TabItem();
            newItem.Header = className;// "new item " + newTabNumber.ToString(); ;
            newItem.RightTapped += NewItem_RightTapped;//.MouseRightButtonUp += newItemMouseRightButtonUp;
            Frame newFrame = new Frame();
            Page newPage = null;
            newPage = new GridPage(initializerTypeName, formId);
            if (className == "FORM")
            {
                //Type formType = Type.GetType("GridOrganizer.FormPage");
                //if (formType != null)
                //{
                //    newPage = (Page)Activator.CreateInstance(formType);
                //}
                //(newPage as GridPage).SetFilterForm("FormFilter");
                GridPage detailPage = new GridPage("GridOrganizer.MODULE", "3");
                detailPage.SetParent(newPage.DataContext as ICollectionOwner);
                (newPage as GridPage).SetDetailForm(detailPage);
            }
            else if (className == "MODULE")
            {
                (newPage as GridPage).SetFilterForm("ModuleFilterPage");
            }
            else if (className == "OBJECT_TYPE")
            {
               (newPage as GridPage).SetFilterForm("ObjectTypeFilterPage");
                //FormPage detailPage = new FormPage();
                GridPage detailPage = new GridPage("GridOrganizer.FORM", "1");
                detailPage.SetParent(newPage.DataContext as ICollectionOwner);
                (newPage as GridPage).SetDetailForm(detailPage);
            }
            else if (className == "CLASS_INFO")
            {
                (newPage as GridPage).SetFilterForm("ClassInfoFilterPage");
            }
            else
            {
                //newPage = new GridPage(className);
                (newPage as GridPage).SetFilterForm(new FilterPage(className + "_Filter"));
                //if (className == "OBJECT_TYPE")
                //    (newPage as GridPage).SetFilterForm(new FilterPage("OBJECT_TYPE_Filter"));
            }

            newFrame.Content = newPage;
            newItem.Content = newFrame;
            MainTabControl.Items.Add(newItem);
            MainTabControl.SelectedItem = newItem;
            MainTabControl.Focus();
            newItem.Focus();
        }

        private bool LocateTabItem(string initializerTypeName)
        {
            string className = initializerTypeName.Contains(".") ? initializerTypeName.Split('.')[1] : initializerTypeName;
            foreach (TabItem exItem in MainTabControl.Items)
            {
                if (exItem.Header == className)
                {
                    MainTabControl.SelectedItem = exItem;
                    MainTabControl.Focus();
                    exItem.Focus();
                    return true;
                }
            }
            return false;
        }

    }
}
