using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using System.IO;
using System.Threading.Tasks;
using CSHTML5.Extensions.Json;

namespace GridOrganizer
{

    public class GridObject
    {
        public int id;
    }

    [DataContract]
    class XObjectCollection<OT> : INotifyPropertyChanged
        where OT : GridObject, new()
    {
        private string _className = "some class";
        private string _dataJson = "some text";
        public string DataJson
        {
            get
            {
                return _dataJson;
            }
            set
            {
                _dataJson = value;
                OnPropertyChanged("DataJson");
            }
        }
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

        public XObjectCollection()
        {

        }
        public XObjectCollection(string className, string Where, string Order):this()
        {
            this._className = className;
            ObjectService.ObjectWcfServiceClient sClient = new ObjectService.ObjectWcfServiceClient();
            string token = sClient.GetUserToken("scott", "tiger");
            string jsonList = sClient.SimpleList(this._className, Where, Order, -1, 0, token);
            //Windows.UI.Xaml.MessageBox.Show(jsonList);
            //string res = "[{\"class_name\":\"FORM\",\"record_count\":10},{\"class_name\":\"MODULE\",\"record_count\":20}]";
            //Windows.UI.Xaml.MessageBox.Show(res);
            GetCollection(jsonList);
        }

        public async Task GetCollection(string jsonCol)
        {
            this.XObjects = await JsonConvert.DeserializeObject<ObservableCollection<OT>>(jsonCol.Replace("\"name\":", "\"_name\":"), true);
            //this.XObjects = new ObservableCollection<OT>();
            //IJsonType receivedObjects = await JsonConvert.DeserializeObject(jsonCol, true);
            //if (receivedObjects is JsonArray)
            //{
            //    JsonArray jArr = receivedObjects as JsonArray;
            //    for (int i = 0; i < jArr.Count; i++)
            //    {
            //        JsonObject obj = jArr[i] as JsonObject;
            //        if (obj != null)
            //        {
            //            OT objectType = new OT();
            //            System.Reflection.PropertyInfo[] props = objectType.GetType().GetProperties();
            //            for (int p = 0; p < props.Length; p++)
            //            {
            //                foreach (string key in obj.Keys)
            //                {
            //                    if (props[p].Name.ToLower() == key.ToLower() || props[p].Name.ToLower() == "$" + key.ToLower())
            //                        props[p].SetValue(objectType, obj[key].Value);
            //                }
            //            }
            //            this.XObjects.Add(objectType);
            //        }
            //    }
            //}
        }

        //public void AddProp()
        //{
        //    XProperty prop = new XProperty();
        //    prop.Name = "X" + LastIndex.ToString();
        //    prop.Value = LastIndex++.ToString();
        //    XObjects.Insert(0, prop);
        //    //var dataContractSerializer = new DataContractSerializer(typeof(PViewModel));
        //    //var xml = dataContractSerializer.SerializeToString(this);
        //}

        public async Task WriteToFile()
        {
            //var dataContractSerializer = new DataContractSerializer(typeof(PViewModel));
            //FileStream FS = File.OpenWrite("/Temp/model.xml");
            //dataContractSerializer.WriteObject(FS, this);//.SerializeToString(this);
            ////byte[] bts = Encoding.Default.GetBytes(xml);
            ////FS.Write(bts, 0, bts.Length);
            //FS.Close();
        }
        public async Task ReadFromFile()
        {
            //FileStream FS = File.OpenRead("data.json");
            //byte[] bts = new byte[FS.Length];
            //FS.Read(bts, 0, bts.Length);
            //FS.Close();
            ////string xmlData = Encoding.UTF8.GetString(bts);
            ////var dataContractSerializer = new DataContractSerializer(typeof(PViewModel));
            ////PViewModel savedModel = (PViewModel)dataContractSerializer.DeserializeFromString(xmlData);
            //string jsonData = Encoding.Default.GetString(bts);
            //ObservableCollection < XProperty > result = JsonConvert.DeserializeObject<ObservableCollection<XProperty>>(jsonData);
            //this.XObjects.Clear();
            //foreach(XProperty prop in result)
            //{
            //    this.XObjects.Add(prop);
            //}
            ////this.Properties.Add(P);
            //OnPropertyChanged("XObjects");
        }
        //public async Task ReadFromServer()
        //{
        //    string jsonData = "[]";// await jQueryAjaxHelper.MakeAjaxCall("http://dersa.ru/Node/Properties/10000387", null, "get");
        //    //MessageBox.Show(jsonData);
        //    FrontResponse result = JsonConvert.DeserializeObject<FrontResponse>(jsonData);
        //    jsonData = result.response_body;
        //    ObservableCollection<XProperty> col = JsonConvert.DeserializeObject<ObservableCollection<XProperty>>(jsonData);
        //    //DiosWcfService.ObjectWcfServiceClient sClient = new DiosWcfService.ObjectWcfServiceClient();
        //    //string token = sClient.GetUserToken("x", "x");
        //    //byte[] jsonComressedData = sClient.List("MODULE", token);

        //    //ObservableCollection<XProperty> result = await JsonConvert.DeserializeObject<ObservableCollection<XProperty>>(jsonData);
        //    this.XObjects.Clear();
        //    foreach (XProperty m in col)
        //    {
        //        this.XObjects.Add(m);
        //    }
        //    OnPropertyChanged("XObjects");
        //}

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
