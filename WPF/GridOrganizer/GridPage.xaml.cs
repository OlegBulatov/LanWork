using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.ComponentModel;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Data;
using CSHTML5;
using CSHTML5.Extensions.Json;
using System.Threading.Tasks;
using DIOS.Web.XamlExtensions;

namespace GridOrganizer
{

    public partial class GridPage : Page
    {
        private string formId;
        private string lastWhere;
        private CollectionInitializer pageInitializer = null;

        public GridPage()
        {
            this.InitializeComponent();
        }

        public GridPage(string initializerClassName, string FormId) : this()
        {
            this.formId = FormId;
            this.filterFrame.Height = 0;
            Type formInitType = Type.GetType(initializerClassName);//Type.GetType(this.GetType().Namespace + "." + initializerClassName);
            if (formInitType != null)
            {
                pageInitializer = Activator.CreateInstance(formInitType) as CollectionInitializer;
            }
            if (pageInitializer == null)
                throw new Exception("Класс инициализатора страницы " + initializerClassName + " не определен.");
            dataGrid.AutoGenerateColumns = !pageInitializer.GenerateColumns(dataGrid);

            this.DataContext = pageInitializer.GetObjectCollection();
        }

        private void ApplyFilters()
        {
            pageInitializer.RefreshObjectCollection();
        }
        private async Task ApplyFilters(Grid contentGrid, bool doQueryDatabase)
        {
            if (!string.IsNullOrEmpty(this.lastWhere))//фильтр на клиенте можно включать только если выборка была полной (без фильтров)
                doQueryDatabase = true;
            StringBuilder Where = new StringBuilder();
            foreach (UIElement el in contentGrid.Children)
            {
                Type elType = el.GetType();
                if (elType.GetProperty("Tag") != null && elType.GetProperty("Tag").GetValue(el) != null)
                {
                    object Tag = el.GetType().GetProperty("Tag").GetValue(el);
                    string jsonTag = Tag.ToString().Replace("{}", "");
                    FilterStruct fs = await JsonConvert.DeserializeObject<FilterStruct>(jsonTag, true);
                    if (fs != null)
                    {
                        if (Where.ToString() != "")
                            Where.Append(" and ");
                        Where.Append("(");
                        Where.Append(fs.DataField);
                        Where.Append(" ");
                        Where.Append(fs.Predicate);
                        Where.Append(" '");
                        //Where.Append(fs.DataType == "string" ? "'" : "");
                        Where.Append(fs.Predicate == "like" ? "%" : "");
                        string filterPropertyName = fs.DataProperty == null?"Text" : fs.DataProperty;
                        object value = elType.GetProperty(filterPropertyName)?.GetValue(el);
                        System.Reflection.PropertyInfo enabledProp = elType.GetProperty("IsEnabled");
                        bool filterEnabled = enabledProp == null || (bool)enabledProp.GetValue(el);
                        if (value != null && filterEnabled)
                            Where.Append(value.ToString());
                        Where.Append(fs.Predicate == "like" ? "%" : "");
                        //Where.Append(fs.DataType == "string" ? "'" : "");
                        Where.Append("')");
                    }
                }
            }
            string currentWhere = Where.ToString();
            if (doQueryDatabase)//фильтруем на сервере
            {
                this.lastWhere = currentWhere;
                this.DataContext = pageInitializer.GetObjectCollection(this.lastWhere);
            }
            else//применяем фильры на клиенте
            {

            }
        }

        private void bnRefresh_Click(object sender, RoutedEventArgs e)
        {
            ApplyFilters();
            //FilterPage filterPage = filterFrame.Content as FilterPage;
            //if (filterPage != null)
            //{
            //    ApplyFilters(filterPage.ContentGrid, true);
            //    return;
            //}
            //Page filterPageCommon = filterFrame.Content as Page;
            //if (filterPageCommon != null)
            //{
            //    Grid contentGrid = filterPageCommon.Content as Grid;
            //    if(contentGrid != null)
            //        ApplyFilters(contentGrid, true);
            //    return;
            //}
        }

        public void SetFilterForm(Page filterPage)
        {
            this.filterFrame.Height = filterPage.Height;
            MainGrid.RowDefinitions[0].Height = new GridLength(90);
            if(filterFrame.Height == 0)
            {
                MainGrid.RowDefinitions[0].Height = new GridLength(0);
            }
            this.filterFrame.Content = filterPage;
            filterPage.DataContext = this.DataContext;
        }

        public void SetFilterForm(string filterPageType)
        {
            Type filterType = Type.GetType(this.GetType().Namespace + "." + filterPageType);
            if (filterType != null)
            {
                this.filterFrame.Height = 90;
                Page filterPage = Activator.CreateInstance(filterType) as Page;
                filterPage.DataContext = this.DataContext;
                this.filterFrame.Content = filterPage;
            }
        }

        public void SetDetailForm(Page detailPage)
        {
            //TabItem detailItem = new TabItem();
            //detailItem.Header = "Зависимые";
            //detailItem.Content = detailPage;
            //this.DetailTabControl.Items.Add(detailItem);
            //this.DetailTabControl.Height = detailItem.Height;
            detailItem.Content = detailPage;
            MainGrid.RowDefinitions[2].Height = new GridLength(detailItem.Height);
        }
        //public void SetDetailForm(string detailPageType)
        //{
        //    Type detailType = Type.GetType(this.GetType().Namespace + "." + detailPageType);
        //    if (detailType != null)
        //    {
        //        //Page detailPage = new GridPage(className);
        //        Page detailPage = Activator.CreateInstance(detailType) as Page;
        //        //detailPage.DataContext = this.DataContext;
        //        TabItem detailItem = new TabItem();
        //        detailItem.Header = "Формы";
        //        detailItem.Content = detailPage;
        //        this.DetailTabControl.Items.Add(detailItem);
        //    }
        //}

        public void SetParent(ICollectionOwner parentCollection)
        {
            if (this.DataContext is IFilterControlled)
                (this.DataContext as IFilterControlled).SetParent(parentCollection);
            //string keyName = parentCollection.KeyName;
            //string Path = "SelectedObject." + keyName;
            //Binding parentBinding = new Binding(Path);
            //parentBinding.Source = parentCollection;
            //DCController parentController = new DCController();
            //MainGrid.Tag = parentController;
            //parentController.FilterIsEnabled = true;
            //parentController.DataField = keyName;
            //parentController.Predicate = "=";
            //parentController.AutoRefresh = true;
            //parentController.DataContext = this.DataContext;
            //parentController.SetBinding(DCController.FilterControllerValueProperty, parentBinding);
        }

        private void Button_Edit_Click(object sender, RoutedEventArgs e)
        {
            ObjectService.ObjectWcfServiceClient sClient = new ObjectService.ObjectWcfServiceClient();
            string token = sClient.GetUserToken("scott", "tiger");
            string formTypeName = sClient.ExecMethod("FORM", "GetWpfTypeName", this.formId, "formType=3", token).Replace("\"", "");
            EditWindow editWindow = new EditWindow(formTypeName);
            editWindow.DataContext = this.DataContext;
            ShowEditWindow(editWindow);
        }

        private async void ShowInsertWindow(EditWindow editWindow)
        {
            IUpdateable target = this.DataContext as IUpdateable;
            if (target == null)
                return;
            object newObject = target.AddEmptyObject();
            await editWindow.ShowAndWait();
            bool result = editWindow.DialogResult.Value;
            if (result)
            {
                target.InsertSelectedObject();
            }
            else
                target.DeleteObject(newObject, false);
        }

        private async void ShowEditWindow(EditWindow editWindow)
        {
            await editWindow.ShowAndWait();
            bool result = editWindow.DialogResult.Value;
            if(result)
            {
                IUpdateable target = this.DataContext as IUpdateable;
                if (target != null)
                    target.UpdateSelectedObject();
            }
        }

        private void Button_New_Click(object sender, RoutedEventArgs e)
        {
            //EditWindow editWindow = new EditWindow("FormEditPage");
            ObjectService.ObjectWcfServiceClient sClient = new ObjectService.ObjectWcfServiceClient();
            string token = sClient.GetUserToken("scott", "tiger");
            string formTypeName = sClient.ExecMethod("FORM", "GetWpfTypeName", this.formId, "formType=3", token).Replace("\"", "");
            EditWindow editWindow = new EditWindow(formTypeName);
            editWindow.Title = "Новый объект";
            editWindow.DataContext = this.DataContext;
            ShowInsertWindow(editWindow);
        }

        private void Button_Del_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Удалить запись?", "требуется подтверждение", MessageBoxButton.OKCancel);
            if(result == MessageBoxResult.OK)
            {
                IUpdateable target = this.DataContext as IUpdateable;
                if (target != null)
                    target.DeleteSelectedObject();
            }
        }

        private void Button_Excel_Click(object sender, RoutedEventArgs e)
        {
            Interop.ExecuteJavaScript("window.open(GetReportUrl($0))", this.pageInitializer.ObjectClassName);
            //this.pageInitializer.ExportToExcel();
        }

        //private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        //{
        //    TabItem tabItem = this.DetailTabControl.SelectedItem as TabItem;
        //    if (tabItem != null)
        //    {
        //        Page detailPage = tabItem.Content as Page;
        //        if (detailPage != null)
        //        {
        //            IFilterControlled objectCollection = detailPage.DataContext as IFilterControlled;
        //            if (objectCollection != null)
        //                objectCollection.Refresh();
        //        }
        //    }
        //}
    }
}
