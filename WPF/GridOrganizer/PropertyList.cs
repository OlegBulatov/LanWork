using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Controls;
using System.Text;
using System.ComponentModel;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using System.IO;
using System.Threading.Tasks;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using CSHTML5.Extensions.Json;


namespace GridOrganizer
{
    [DataContract]
    public class XProperty : INotifyPropertyChanged
    {
        private string _name;
        private string _value;
        [DataMember]
        public string Name
        {
            get { return _name; }
            set
            {
                _name = value;
                OnPropertyChanged("Name");
            }
        }
        [DataMember]
        public string Value
        {
            get
            {
                if (this.Type == 1)
                    return _value;
                else
                    return "...";
            }
            set
            {
                _value = value;
                OnPropertyChanged("Value");
            }
        }
        public string FullValue
        {
            get
            {
                return _value;
            }
        }
        [DataMember]
        public int Type { get; set; }
        [DataMember]
        public bool ReadOnly { get; set; }
        [DataMember]
        public bool WriteUnchanged { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged(string prop = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(prop));
        }
    }

    [DataContract]
    class PViewModel : INotifyPropertyChanged

    {
        public string PropertiesHtml { get; set; }
        private string _selectedNode;
        public string SelectedNode
        {
            get
            {
                return _selectedNode;
            }
            set
            {
                _selectedNode = value;
                ReadFromServer();
                OnPropertyChanged("SelectedNode");
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
                TabItem tiSelected = value as TabItem;
                SelectedGrid = tiSelected.Content;
                OnPropertyChanged("SelectedObject");
            }
        }
        private int _selectedIndex;
        public int SelectedIndex
        {
            get
            {
                return 0;
            }
            set
            {
                _selectedIndex = value;
                OnPropertyChanged("SelectedIndex");
            }
        }
    public object SelectedGrid { get; set; }
        private int LastIndex = 0;
        private XProperty _selectedProperty;
        [DataMember]
        public ObservableCollection<XProperty> Properties { get; set; }
        public XProperty SelectedProperty
        {
            get
            {
                return _selectedProperty;
            }
            set
            {
                _selectedProperty = value;
                OnPropertyChanged("SelectedProperty");
            }
        }
        public PViewModel(int itemsCount): this()
        {
            for(int i = 0; i < itemsCount; i++)
                AddProp();
        }
        public PViewModel()
        {
            this.Properties = new ObservableCollection<XProperty>();
        }
        public void AddProp()
        {
            XProperty prop = new XProperty();
            prop.Name = "X" + LastIndex.ToString();
            prop.Value = LastIndex++.ToString();
            Properties.Insert(0, prop);
            var dataContractSerializer = new DataContractSerializer(typeof(PViewModel));
            //var xml = dataContractSerializer.SerializeToString(this);
        }

        //public async Task WriteToFile()
        //{
        //    var dataContractSerializer = new DataContractSerializer(typeof(PViewModel));
        //    FileStream FS = File.OpenWrite("/Temp/model.xml");
        //    dataContractSerializer.WriteObject(FS, this);
        //    FS.Close();
        //}
        //public async Task ReadFromFile()
        //{
        //    FileStream FS = File.OpenRead("data.json");
        //    byte[] bts = new byte[FS.Length];
        //    FS.Read(bts, 0, bts.Length);
        //    FS.Close();
        //    //string xmlData = Encoding.UTF8.GetString(bts);
        //    //var dataContractSerializer = new DataContractSerializer(typeof(PViewModel));
        //    //PViewModel savedModel = (PViewModel)dataContractSerializer.DeserializeFromString(xmlData);
        //    string jsonData = Encoding.Default.GetString(bts);
        //    this.Properties = JsonConvert.DeserializeObject<ObservableCollection<XProperty>>(jsonData);
        //    //this.Properties.Add(P);
        //    OnPropertyChanged("Properties");
        //}

        public void ReadFromServer()
        {
            ////if (SelectedNode.Substring(0, 1) == "D")
            ////{
            ////    PropertiesHtml = await jQueryAjaxHelper.MakeAjaxCall("http://dersa.ru/Node/Description?id=" + SelectedNode + "&attr_name=DiagramXml", null, "get");
            ////    return;
            ////}
            //string jsonProps = "[]"; //await jQueryAjaxHelper.MakeAjaxCall("http://dersa.ru/Node/Properties/" + SelectedNode, null, "get");
            ////FrontResponse result = await JsonConvert.DeserializeObject<FrontResponse>(jsonData);
            ////jsonData = result.response_body;
            //ObservableCollection<XProperty> col = JsonConvert.DeserializeObject<ObservableCollection<XProperty>>(jsonProps);
            ////DiosWcfService.ObjectWcfServiceClient sClient = new DiosWcfService.ObjectWcfServiceClient();
            ////string token = sClient.GetUserToken("x", "x");
            ////byte[] jsonComressedData = sClient.List("MODULE", token);

            ////ObservableCollection<XProperty> result = await JsonConvert.DeserializeObject<ObservableCollection<XProperty>>(jsonData);
            //this.Properties.Clear();
            //foreach (XProperty m in col)
            //{
            //    this.Properties.Add(m);
            //}
            //OnPropertyChanged("Properties");
        }


        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged(string prop = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(prop));
        }
    }
}
