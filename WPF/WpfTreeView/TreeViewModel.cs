using System;
using System.Linq;
using System.IO;
using System.ComponentModel;
using System.Collections.ObjectModel;
using Newtonsoft.Json;
using System.Data;
using System.Collections.Generic;
using WpfLib;

namespace WpfTreeView
{

    public class MNode
    {
        private int _id;
        public string DisplayedText;
        public string ClassName;
        public List<MNode> childNodes;
        public MNode(int id, string displayedText, string className, List<Tuple<int, int, string, string>> chItems)
        {
            this.childNodes = new List<MNode>();
            _id = id;
            DisplayedText = displayedText;
            ClassName = className;
            var Children =
            from Tuple<int, int, string, string> item in chItems
            where item.Item2 == id
            select item;
            //List<Tuple<int, int, string>> chTuples = new List<Tuple<int, int, string>>();
            //chTuples.AddRange(Children);
            foreach(Tuple<int, int, string, string> child in Children)
            {
                MNode chNode = new MNode(child.Item1, child.Item3, child.Item4, chItems);
                this.childNodes.Add(chNode);
            }
        }
    }
    public class MTree
    {
        public List<MNode> Nodes;
        public MTree(List<Tuple<int, int, string, string>> items)
        {
            Nodes = new List<MNode>();
            //MNode rootNode = new MNode(0, "--root--", items);
            //Nodes.Add(rootNode);
            var RootNodes =
                from Tuple<int, int, string, string> item in items
                where item.Item2 == 0
                select item;
            foreach (Tuple<int, int, string, string> rTuple in RootNodes)
            {
                MNode rNode = new MNode(rTuple.Item1, rTuple.Item3, rTuple.Item4, items);
                this.Nodes.Add(rNode);
            }
        }
    }

    public class TreeViewModel : INotifyPropertyChanged
    {
        private string demoJson;
        public ICollectionView DemoView;
        public ObservableCollection<object> DemoData { get; set; }

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

        public class DNode
        {
            public string H001_DISPL_NAME;
            public int DELPHI_TREE;
            public int PARENT;
            public string H001_CLASS_NAME;
        }

        public TreeViewModel()
        {
            //string fileName = AppDomain.CurrentDomain.BaseDirectory + "demodata.json";
            //if (!System.IO.File.Exists(fileName))
            //{
            //    throw new Exception("Файл  данных" + fileName + " не существует!");
            //}

            //StreamReader FS = File.OpenText(fileName);
            //demoJson = FS.ReadToEnd();
            //FS.Close();

            //DemoData = JsonConvert.DeserializeObject<ObservableCollection<object>>(demoJson);


            //List<Tuple<string, string>> headers = new List<Tuple<string, string>>();
            //headers.Add(new Tuple<string, string>("column1", "header1"));
            //XTree xTree = XGenerator.GetXTree(headers, null, null, true);
            //demoJson = JsonConvert.SerializeObject(xTree.Nodes);
            //DemoData = JsonConvert.DeserializeObject<ObservableCollection<object>>(demoJson);

            string fileName = AppDomain.CurrentDomain.BaseDirectory + "test_tree.json";
            if (!System.IO.File.Exists(fileName))
            {
                throw new Exception("Файл  данных" + fileName + " не существует!");
            }


            Stream FS = File.OpenRead(fileName);
            byte[] bts = new byte[FS.Length];
            FS.Position = 0;
            FS.Read(bts, 0, bts.Length);
            demoJson = System.Text.Encoding.Default.GetString(bts);
            FS.Flush();
            FS.Close();

            var sourceData = JsonConvert.DeserializeObject<DNode[]>(demoJson);
            List<Tuple<int, int, string, string>> treeTuples = new List<Tuple<int, int, string, string>>();
            foreach(DNode N in sourceData)
            {
                treeTuples.Add(new Tuple<int, int, string, string>(N.DELPHI_TREE, N.PARENT, N.H001_DISPL_NAME, N.H001_CLASS_NAME));
            }
            //treeTuples.Add(new Tuple<int, int, string>(1, 0, "Item1"));
            //treeTuples.Add(new Tuple<int, int, string>(2, 0, "Item2"));
            //treeTuples.Add(new Tuple<int, int, string>(3, 1, "Item3"));
            //treeTuples.Add(new Tuple<int, int, string>(4, 1, "Item4"));

            MTree mTree = new MTree(treeTuples);
            demoJson = JsonConvert.SerializeObject(mTree.Nodes);
            DemoData = JsonConvert.DeserializeObject<ObservableCollection<object>>(demoJson);
        }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged(string prop = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(prop));
        }

        public void ApplyFilters(string Where)
        {
            DataTable T = JsonConvert.DeserializeObject<DataTable>(demoJson);
            DataRow[] dataRows = T.Select(Where);
            string filteredJson = "[]";
            if (dataRows.Length > 0)
            {
                DataTable T1 = dataRows.CopyToDataTable<DataRow>();
                filteredJson = JsonConvert.SerializeObject(T1);
            }
            else
            {
                T.Rows.Clear();
                filteredJson = JsonConvert.SerializeObject(T);
            }
            DemoData = JsonConvert.DeserializeObject<ObservableCollection<object>>(filteredJson);
            OnPropertyChanged("");
        }

        public void Refresh()
        {
            DemoData = JsonConvert.DeserializeObject<ObservableCollection<object>>(demoJson);
            OnPropertyChanged("");
        }

    }
}
