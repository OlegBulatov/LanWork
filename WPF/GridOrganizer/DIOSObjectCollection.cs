using System.Collections.Generic;
using System;
using System.Reflection;
using System.Text;
using System.ComponentModel;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using System.IO;
using System.Threading.Tasks;
using CSHTML5.Extensions.Json;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Data;

namespace DIOS.Web.XamlExtensions
{
    public interface IUpdateable
    {
        string UpdateSelectedObject();
        string InsertSelectedObject();
        object AddEmptyObject();
        void DeleteObject(object obj, bool dropAtServer);
        void DeleteSelectedObject();
    }
    public interface ICollectionOwner
    {
        ItemsControl dependentItemsControl { get; set; }
        IEnumerable<object> GetObjectsCollection();
        string KeyName { get; }
        string ClassName { get; }
    }
    public delegate string ExternalListMethod(string className, string Where, string Order);
    public delegate string ExternalUpdateMethod(string class_name, string json_object);
    public delegate string ExternalInsertMethod(string class_name, string json_object);
    public delegate string ExternalDeleteMethod(string class_name, int id);

    public class WebDataAdapter
    {
        private static ExternalDeleteMethod externalDelete;
        public virtual string ObjectDelete(string className, int id)
        {
            if (externalDelete == null)
                throw new System.Exception("Метод для добавления объектов не определен");
            return externalDelete(className, id);
        }
        private static ExternalInsertMethod externalInsert;
        public virtual string ObjectInsert(string className, string jsonObject)
        {
            if (externalInsert == null)
                throw new System.Exception("Метод для добавления объектов не определен");
            return externalInsert(className, jsonObject);
        }
        private static ExternalUpdateMethod externalUpdate;
        public virtual string ObjectUpdate(string className, string jsonObject)
        {
            if (externalUpdate == null)
                throw new System.Exception("Метод для редактирования объектов не определен");
            return externalUpdate(className, jsonObject);
        }
        private static ExternalListMethod externalList;
        public virtual string ObjectList(string className, string Where, string Order)
        {
            if (externalList == null)
                throw new System.Exception("Метод для получения списка объектов не определен");
            return externalList(className, Where, Order);
        }
        public static void Initialize(
            ExternalListMethod listMethod, 
            ExternalUpdateMethod updateMethod,
            ExternalInsertMethod insertMethod,
            ExternalDeleteMethod deleteMethod,
            object dataContext)
        {
            externalList = listMethod;
            externalUpdate = updateMethod;
            externalInsert = insertMethod;
            externalDelete = deleteMethod;
        }
    }
    public class DIOSObject
    {
        public int id;
    }

    [DataContract]
    class DIOSObjectCollection<OT> : INotifyPropertyChanged, IFilterControlled, ICollectionOwner, IUpdateable
        where OT : DIOSObject, new()
    {
        private List<DCController> controllers = new List<DCController>();
        private string keyName;
        public string KeyName
        {
            get
            {
                return keyName;
            }
        }
        public ItemsControl dependentItemsControl { get; set; }
        public string jsonList;
        public IEnumerable<object> GetObjectsCollection()
        {
            return this.XObjects;
        }
        public void Refresh()
        {
            string Filter = "";
            if (this.filterController != null)
            {
                FilterParam[] filterParams = this.filterController.FilterParams.GetParamsArray();
                Filter = JsonConvert.SerializeObject(filterParams, true);
            }
            jsonList = dataAdapter.ObjectList(this._className, Filter, "");
            GetCollection(jsonList);
        }
        private FilterController filterController = new FilterController();
        public FilterController FilterController
        {
            get
            {
                return filterController;
            }
        }
        private static WebDataAdapter dataAdapter = new WebDataAdapter();
        private string _className = "some class";
        public string ClassName
        {
            get
            {
                return _className;
            }
        }
        //private string _dataJson = "some text";
        //public string DataJson
        //{
        //    get
        //    {
        //        return _dataJson;
        //    }
        //    set
        //    {
        //        _dataJson = value;
        //        OnPropertyChanged("DataJson");
        //    }
        //}
        private int LastIndex = 0;
        private ObservableCollection<OT> _xObjects;
        [DataMember]
        public ObservableCollection<OT> XObjects
        {
            get
            {
                return _xObjects;
            }
            set
            {
                _xObjects = value;
                OnPropertyChanged("XObjects");
            }

        }
        private Dictionary<string, object> GetKeyValuePairs()
        {
            Dictionary<string, object>  _selectedPropertyCollection = new Dictionary<string, object>();
            Type srcType = _selectedObject.GetType();
            var srcProperties = srcType.GetProperties();
            for (int i = 0; i < srcProperties.Length; i++)
            {
                PropertyInfo pi = srcProperties[i];
                object srcValue = pi.GetValue(_selectedObject);
                _selectedPropertyCollection.Add(pi.Name, srcValue);
            }
            return _selectedPropertyCollection;
        }
        private object _selectedObjectBackup;
        private object _selectedObject;
        public object SelectedObject
        {
            get
            {
                return _selectedObject;
            }
            set
            {
                _selectedObject = value;
                OnPropertyChanged("SelectedObject");
            }
        }

        public DIOSObjectCollection()
        {

        }
        public DIOSObjectCollection(string className, string Where, string Order):this()
        {
            this.keyName = className.ToLower();
            this._className = className;
            string jsonList = dataAdapter.ObjectList(this._className, Where, Order);//sClient.SimpleList(this._className, Where, Order, -1, 0, token);
            GetCollection(jsonList);
        }

        public async Task GetCollection(string jsonCol)
        {
            this.XObjects = await JsonConvert.DeserializeObject<ObservableCollection<OT>>(jsonCol.Replace("\"name\":", "\"_name\":"), true);
            if (dependentItemsControl != null)
                dependentItemsControl.ItemsSource = this.XObjects;
            if(XObjects.Count > 0)
                SelectedObject = XObjects[0];
        }

        protected virtual string SerializeSelectedObject()
        {
            OT selectedTypedObject = new OT();
            Dictionary<string, object> keyValuePairs = GetKeyValuePairs();
            var props = selectedTypedObject.GetType().GetProperties();
            for (int i = 0; i < props.Length; i++)
            {
                props[i].SetValue(selectedTypedObject, keyValuePairs[props[i].Name]);
            }
            string result = JsonConvert.SerializeObject(selectedTypedObject)
                .Replace("\"_name\":", "\"name\":");
            return result;
        }

        public object AddEmptyObject()
        {
            OT newObject = new OT();
            //PropertyInfo[] props = newObject.GetType().GetProperties();
            XObjects.Add(newObject);
            _selectedObjectBackup = SelectedObject;
            SelectedObject = newObject;
            foreach (DCController controller in this.controllers)
            {
                object V = controller.FilterControllerValue;
                DCController pushController = new DCController();
                pushController.DataContext = this;
                pushController.DataField = controller.DataField;
                pushController.Predicate = controller.Predicate;
                Binding binding = new Binding("SelectedObject." + controller.DataField);
                binding.Source = this;
                binding.Mode = BindingMode.TwoWay;
                pushController.SetBinding(DCController.ControllerValueProperty, binding);
                pushController.SetValue(Controller.ControllerValueProperty, V);
            }
            return newObject;
        }

        public void DeleteSelectedObject()
        {
            DeleteObject(SelectedObject, true);
        }

        public void DeleteObject(object obj, bool dropAtServer)
        {
            if (!(obj is OT))
                return;
            try
            {
                if (dropAtServer)
                {
                    Dictionary<string, object> keyValuePairs = GetKeyValuePairs();
                    int id = int.Parse(keyValuePairs[this.keyName].ToString());
                    dataAdapter.ObjectDelete(_className, id);
                }
                XObjects.Remove(obj as OT);
                _selectedObject = _selectedObjectBackup;
                _selectedObjectBackup = null;
            }
            catch { }
        }

        public string UpdateSelectedObject()
        {
            string jsonObject = SerializeSelectedObject()
                .Replace("\"" + this.KeyName + "\":", "\"id\":");
            return dataAdapter.ObjectUpdate(_className, jsonObject);
        }

        public string InsertSelectedObject()
        {
            string jsonObject = SerializeSelectedObject();
            return dataAdapter.ObjectInsert(_className, jsonObject);
        }

        public void SetParent(ICollectionOwner parentCollection)
        {
            string keyName = parentCollection.KeyName;
            string Path = "SelectedObject." + keyName;
            Binding parentBinding = new Binding(Path);
            parentBinding.Source = parentCollection;
            DCController parentController = new DCController();
            controllers.Add(parentController);
            parentController.FilterIsEnabled = true;
            parentController.DataField = keyName;
            parentController.Predicate = "=";
            parentController.AutoRefresh = true;
            parentController.DataContext = this;
            parentController.SetBinding(DCController.FilterControllerValueProperty, parentBinding);
        }

        public void FilterCurrentCollection(string Where)
        {//отфильровать без отправки запроса на сервер (может и не нужно)
            //DataTable T = JsonConvert.DeserializeObject<DataTable>(demoJson);
            //DataRow[] dataRows = T.Select(Where);
            //string filteredJson = "[]";
            //if (dataRows.Length > 0)
            //{
            //    DataTable T1 = dataRows.CopyToDataTable<DataRow>();
            //    filteredJson = JsonConvert.SerializeObject(T1);
            //}
            //else
            //{
            //    T.Rows.Clear();
            //    filteredJson = JsonConvert.SerializeObject(T);
            //}
            //DemoData = JsonConvert.DeserializeObject<ObservableCollection<object>>(filteredJson);
        }


        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged(string prop = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(prop));
        }
    }
    [DataContract]
    public class FrontResponse 
    {
        [DataMember]
        public int response_status { get; set; }
        [DataMember]
        public string error_message { get; set; }
        [DataMember]
        public string response_body { get; set; }
        [DataMember]
        public int row_count { get; set; }
    }


}
