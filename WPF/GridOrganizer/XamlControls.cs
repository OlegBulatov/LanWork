using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Data;
using System.Reflection;
using CSHTML5;
using CSHTML5.Native.Html.Controls;


namespace DIOS.Web.XamlExtensions
{
    public class HtmlMenu : HtmlPresenter
    {
        public HtmlMenu()
        {
            this.Html = @"<div id=""mtree""></div>";
//            this.Html = @"<div id=""html-menu"" style=""width:180px;height:400px;overflow-x:hidden""><ul>
//<li>Modules
//<ul>
//<li><a href=""#"" onclick=""OpenModule('8','GridOrganizer.LNT_SERVER')"">Серверы</a></li>
//</ul></li>
//<li>Администрирование
//<ul>
//<li><a href=""#"" onclick=""OpenModule('5','GridOrganizer.OBJECT_TYPE')"">Объекты</a></li>
//<li><a href=""#"" onclick=""OpenModule('3','GridOrganizer.MODULE')"">Модули</a></li>
//<li><a href=""#"" onclick=""OpenModule('1','GridOrganizer.FORM')"">Формы</a></li>
//<li><a href=""#"" onclick=""InitDemoTree()"">Tree</a></li>
//</ul></li></ul></div>";
        }
        public void Collapse()
        {
            if (this.DomElement != null) //Note: the DOM element is null if the control has not been added to the visual tree yet.
            {
                Interop.ExecuteJavaScript("$0.style.display = \"block\"", this.DomElement);
                Interop.ExecuteJavaScript("var e = jQuery('#' + $0.id);e.width(10)", this.DomElement);
                //;e.animate({width:'10px'},500)
            }
        }
        public void Expand()
        {
            if (this.DomElement != null) //Note: the DOM element is null if the control has not been added to the visual tree yet.
            {
                Interop.ExecuteJavaScript("$0.style.display = \"block\"", this.DomElement);
                Interop.ExecuteJavaScript("var e = jQuery('#' + $0.id);e.animate({ width: '200px'}, 500)", this.DomElement);
            }
        }
    }
    public class DataContextProvider : UserControl
    {
        public DataContextProvider()
        {
            this.Width = 0;
            this.Height = 0;
            this.Loaded += DataContextProvider_Loaded;
        }

        private void DataContextProvider_Loaded(object sender, RoutedEventArgs e)
        {
            FrameworkElement parentControl = this.Parent as FrameworkElement;
            while (parentControl != null)
            {
                if (parentControl is Page)
                {
                    Page pageControl = parentControl as Page;
                    foreach (object key in pageControl.Resources.Keys)
                    {
                        object resource = pageControl.Resources[key];
                        if (resource is ControllerBase)
                        {
                            (resource as ControllerBase).DataContext = this.DataContext;
                        }
                    }
                    return;
                }
                parentControl = parentControl.Parent as FrameworkElement;
            }
        }
    }

    public class ControllerBase : DependencyObject//Controller as Static Resourse
    {//задача контроллера - соединить значение фильтра с DataContext. Описание этой логики в отдельном классе снимает необходимость дублирования кода для разных контролов
        //Контрол знает свое значение и DataContext, а контроллер знает, в какое поле и с каким предикатом это значение отправить.
        private FilterController filterController;
        public virtual object DataContext { get; set; }
        public string Name { get; set; }
        public string DataField { get; set; }
        public string Predicate { get; set; }
        private bool autoRefresh = false;
        public bool AutoRefresh
        {
            get
            {
                return autoRefresh;
            }
            set
            {
                autoRefresh = value;
            }
        }
        public void SetFilterValue(object filterValue, bool filterIsEnabled)
        {
            IFilterControlled target = DataContext as IFilterControlled;
            if (this.filterController == null)
            {
                if (target != null)
                    this.filterController = target.FilterController;
            }
            if (this.filterController == null)
                return;
            this.filterController.SetFilterParam(this.Name, this.DataField, this.Predicate, filterValue, filterIsEnabled);
            if (this.AutoRefresh)
                target.Refresh();
        }

    }

    public class Controller : ControllerBase
    {
        private FilterController filterController;
        private bool filterIsEnabled;
        public bool FilterIsEnabled
        {
            get
            {
                return filterIsEnabled;
            }
            set
            {
                filterIsEnabled = value;
                SetFilterValue(FilterControllerValue, filterIsEnabled && filterControllerValue != null);
            }
        }
        public static readonly DependencyProperty FilterIsEnabledProperty;

        public static void FilterIsEnabledChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            Controller source = d as Controller;
            source.FilterIsEnabled = (bool)e.NewValue;
        }

        private object controllerValue;
        public object ControllerValue
        {
            get
            {
                return this.controllerValue;
            }
            set
            {
                this.controllerValue = value;
            }
        }
        public static readonly DependencyProperty ControllerValueProperty;

        public static void ControllerValueChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            Controller source = d as Controller;
            source.ControllerValue = e.NewValue;
        }


        private object filterControllerOldValue;
        private object filterControllerValue;
        public object FilterControllerValue
        {
            get
            {
                return this.filterControllerValue;
            }
            set
            {
                this.filterControllerValue = value;
                SetFilterValue(FilterControllerValue, filterIsEnabled && filterControllerValue != null);
            }
        }
        public static readonly DependencyProperty FilterControllerValueProperty;

        public static void FilterControllerValueChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            Controller source = d as Controller;
            source.filterControllerOldValue = e.OldValue;// == null ? null : e.OldValue.ToString();
            source.FilterControllerValue = e.NewValue;// == null ? null : e.NewValue.ToString();
        }

        static Controller()
        {
            PropertyMetadata metadata = new PropertyMetadata("", new PropertyChangedCallback(FilterControllerValueChanged));
            FilterControllerValueProperty = DependencyProperty.Register("FilterControllerValue",
               typeof(object), typeof(Controller), metadata);
            metadata = new PropertyMetadata("", new PropertyChangedCallback(ControllerValueChanged));
            ControllerValueProperty = DependencyProperty.Register("ControllerValue",
               typeof(object), typeof(Controller), metadata);
            metadata = new PropertyMetadata("", new PropertyChangedCallback(FilterIsEnabledChanged));
            FilterIsEnabledProperty = DependencyProperty.Register("FilterIsEnabled",
               typeof(bool), typeof(Controller), metadata);
        }
    }

    public class DCController : Controller
    {
        public override object DataContext { get; set; }
        public static readonly DependencyProperty DataContextProperty;

        public static void DataContextChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            DCController source = d as DCController;
            source.DataContext = e.NewValue;
        }

        static DCController()
        {
            PropertyMetadata metadata = new PropertyMetadata("", new PropertyChangedCallback(DataContextChanged));
            DataContextProperty = DependencyProperty.Register("DataContext",
               typeof(object), typeof(DCController), metadata);
        }
    }

    public class NestedController : Windows.UI.Xaml.Controls.UserControl
    {
        private FilterController filterController;
        public string DataField { get; set; }
        public string Predicate { get; set; }
        public NestedController()
        {
            this.Width = 0;
            this.Height = 0;
        }
        private bool filterIsEnabled;
        public bool FilterIsEnabled
        {
            get
            {
                return filterIsEnabled;
            }
            set
            {
                filterIsEnabled = value;
                IFilterControlled target = this.DataContext as IFilterControlled;
                if (target != null)
                    this.filterController = target.FilterController;
                if (this.filterController == null)
                    return;
                this.filterController.SetFilterParam(this.Name, this.DataField, this.Predicate, this.FilterControllerValue, filterIsEnabled);
            }
        }
        public static readonly DependencyProperty FilterIsEnabledProperty;

        public static void FilterIsEnabledChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            NestedController source = d as NestedController;
            source.FilterIsEnabled = (bool)e.NewValue;
        }

        private string filterControllerOldValue;
        private string filterControllerValue;
        public string FilterControllerValue
        {
            get
            {
                return this.filterControllerValue;
            }
            set
            {
                this.filterControllerValue = value;
                IFilterControlled target = this.DataContext as IFilterControlled;
                if (target != null)
                    this.filterController = target.FilterController;
                if (this.filterController == null)
                    return;
                this.filterController.SetFilterParam(this.Name, this.DataField, this.Predicate, value, value != null);
            }
        }
        public static readonly DependencyProperty FilterControllerValueProperty;

        public static void FilterControllerValueChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            NestedController source = d as NestedController;
            source.filterControllerOldValue = e.OldValue == null ? null : e.OldValue.ToString();
            source.FilterControllerValue = e.NewValue == null ? null : e.NewValue.ToString();
        }

        static NestedController()
        {
            PropertyMetadata metadata = new PropertyMetadata("", new PropertyChangedCallback(FilterControllerValueChanged));
            FilterControllerValueProperty = DependencyProperty.Register("FilterControllerValue",
               typeof(string), typeof(NestedController), metadata);
            metadata = new PropertyMetadata("", new PropertyChangedCallback(FilterIsEnabledChanged));
            FilterIsEnabledProperty = DependencyProperty.Register("FilterIsEnabled",
               typeof(bool), typeof(NestedController), metadata);
        }
    }

    public class CheckBoxEx : CheckBox
    {
        public ControllerBase Controller { get; set; }
        //public static readonly DependencyProperty ControllerProperty;
        //public static void ControllerChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        //{
        //    CheckBoxEx source = d as CheckBoxEx;
        //    source.Controller = e.NewValue as SController;
        //}
        //static CheckBoxEx()
        //{
        //    PropertyMetadata metadata = new PropertyMetadata("", new PropertyChangedCallback(ControllerChanged));
        //    ControllerProperty = DependencyProperty.Register("Controller",
        //       typeof(SController), typeof(CheckBoxEx), metadata);
        //}
        public CheckBoxEx()
        {
            this.Checked += CheckBoxEx_Checked;
        }

        private void CheckBoxEx_Checked(object sender, RoutedEventArgs e)
        {
            bool x = this.IsChecked.Value;
        }
    }

    public class ComboBoxEx : ComboBox
    {

        public ComboBoxEx()
        {
            this.KeyDown += ComboBoxEx_KeyDown;
        }

        private void ComboBoxEx_KeyDown(object sender, Windows.UI.Xaml.Input.KeyRoutedEventArgs e)
        {
            if (e.Key == Windows.System.VirtualKey.Back || e.Key == Windows.System.VirtualKey.Delete)
            {
                this.SelectedValue = null;
            }
        }


        private string listClassName;
        public string ListClassName
        {
            get
            {
                return this.listClassName;
            }
            set
            {
                if (string.IsNullOrEmpty(this.listClassName) && !string.IsNullOrEmpty(value))
                {
                    this.listClassName = value;
                    CollectionInitializer listInitializer = null;
                    Type listInitType = Type.GetType(this.listClassName);
                    if (listInitType != null)
                    {
                        listInitializer = Activator.CreateInstance(listInitType) as CollectionInitializer;
                    }
                    if (listInitializer == null)
                        throw new Exception("Класс инициализатора списка " + this.listClassName + " не определен.");

                    ICollectionOwner collection = listInitializer.GetObjectCollection() as ICollectionOwner;
                    if (collection != null)
                    {
                        this.ItemsSource = collection.GetObjectsCollection();
                        collection.dependentItemsControl = this;
                    }
                }
            }
        }
    }

}