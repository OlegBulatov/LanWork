using System;
using System.Xml;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;


namespace WpfLib
{
    public class XGenerator
    {
        public enum NodeType : int { FieldsOnly = 1, FieldsMissing = 2, Mixed = 3 }
        public class Leaf
        {
            public Leaf(string fieldName, string header, Node parent)
            {
                _fieldName = fieldName;
                _header = header;
                _parent = parent;
                parent.Leaves.Add(this);
            }
            private string _fieldName;
            private string _header;
            public string Header
            {
                get
                {
                    return _header;
                }
            }
            private Node _parent;
            public string Width
            {
                get
                {
                    XTree tree = _parent.xTree;
                    if(tree != null && tree.WidthsDictionary != null && tree.WidthsDictionary.Keys.Contains(this._fieldName))
                    {
                        return tree.WidthsDictionary[this._fieldName];
                    }
                    return null;
                }
            }
            public string Color
            {
                get
                {
                    XTree tree = _parent.xTree;
                    if (tree != null && tree.WidthsDictionary != null && tree.ColorsDictionary.Keys.Contains(this._fieldName))
                    {
                        return tree.ColorsDictionary[this._fieldName];
                    }
                    return null;
                }
            }
            public XmlNode AddToXmlNode(XmlNode xNode)
            {
                XmlDocument doc = xNode.OwnerDocument;
                    XmlElement chXNode = doc.CreateElement("dxg:GridColumn", "http://schemas.devexpress.com/winfx/2008/xaml/grid");
                chXNode.SetAttribute("Header", this._header);
                chXNode.SetAttribute("FieldName", this._fieldName);
                chXNode.SetAttribute("ReadOnly", "True");
                string width = this.Width;
                if(width == null)
                    width = "80";
                chXNode.SetAttribute("Width", width);
                XmlElement htNode = doc.CreateElement("dxg:GridColumn.HeaderTemplate", "http://schemas.devexpress.com/winfx/2008/xaml/grid");
                chXNode.AppendChild(htNode);
                XmlElement dtNode = doc.CreateElement("l:DataTemplate", "http://schemas.microsoft.com/winfx/2006/xaml/presentation");
                htNode.AppendChild(dtNode);
                XmlElement tbNode = doc.CreateElement("l:TextBlock", "http://schemas.microsoft.com/winfx/2006/xaml/presentation");
                dtNode.AppendChild(tbNode);
                tbNode.SetAttribute("TextWrapping", "Wrap");
                tbNode.SetAttribute("Text", "http://schemas.microsoft.com/winfx/2006/xaml/presentation", "{l:Binding}");
                if (this.Color != null)
                    tbNode.SetAttribute("Background", this.Color);
                return xNode.AppendChild(chXNode);
            }

        }
        public class Node
        {
            public NodeType NodeType;
            private int _id;
            public int Id
            {
                get
                {
                    return _id;
                }
            }
            private XTree _xTree;
            public XTree xTree
            {
                get
                {
                    return _xTree;
                }
            }
            public Node(Tuple<string, string> header, Node parent):this(header, parent, null)
            {
            }
            public Node(Tuple<string, string> header, Node parent, XTree tree)
            {
                if (tree == null)
                    tree = parent?.xTree;
                _fieldName = header.Item1;
                _header = header.Item2;
                _parent = parent;
                _xTree = tree;
                if (parent != null)
                {
                    parent.Children.Add(this);
                }
                if(tree != null)
                {
                    this._id = tree.CurrentNodeId;
                }
            }
            private string _header;
            private string _fieldName;
            public Tuple<string, string> Header
            {
                get
                {
                    return new Tuple<string, string>(_fieldName, _header);
                }
            }
            public List<Leaf> Leaves = new List<Leaf>();
            public List<Node> Children = new List<Node>();
            private Node _parent;
            public Node Parent
            {
                get
                {
                    return _parent;
                }
            }
            public XmlNode AddToXmlNode(XmlNode xNode, string width, string color, bool readOnly)
            {
                XmlDocument doc = xNode.OwnerDocument;
                XmlElement chXNode = doc.CreateElement("dxg:GridControlBand", "http://schemas.devexpress.com/winfx/2008/xaml/grid");
                string bandHeader = this.Header.Item2;
                //if (this.NodeType == NodeType.FieldsMissing)
                //    bandHeader = "";
                chXNode.SetAttribute("Header", bandHeader);
                chXNode.SetAttribute("HorizontalHeaderContentAlignment", "Center");
                if (this.NodeType == NodeType.FieldsMissing)
                {
                    Leaf L = new Leaf(this.Header.Item1, "    ", this);
                    L.AddToXmlNode(chXNode);
                }
                if (this.Children.Count > 0)
                {
                    if (this.NodeType == NodeType.FieldsOnly)
                    {
                        foreach (Leaf Lf in this.Leaves)
                        {
                            Lf.AddToXmlNode(chXNode);
                        }
                    }
                    else
                    {
                        XmlElement ch2XNode = doc.CreateElement("dxg:GridControlBand.Bands", "http://schemas.devexpress.com/winfx/2008/xaml/grid");
                        chXNode.AppendChild(ch2XNode);
                        foreach (Node chN in this.Children)
                        {
                            chN.AddToXmlNode(ch2XNode, null, null, readOnly);
                        }
                    }
                }
                return xNode.AppendChild(chXNode);
            }

            public void AddLeaves()
            {
                this.NodeType = GetNodeType();
                if(this.Header.Item1 != null)
                {
                    Leaf leaf = new Leaf(this.Header.Item1, this.Header.Item2, this.Parent);
                }
                foreach(Node chNode in this.Children)
                {
                    chNode.AddLeaves();
                }
            }

            public NodeType GetNodeType()
            {
                if(this.Children.Count == 0)
                {
                    if (this.Parent.NodeType == NodeType.Mixed)
                        return NodeType.FieldsMissing;
                    else
                        return NodeType.FieldsOnly;
                }
                else
                {
                    var mixedChildren =
                        from Node chB in this.Children
                        from Node chF in this.Children
                        where chB.Children.Count > 0 && chF.Children.Count < 1
                        select 1;
                    if (mixedChildren.Count() > 0)
                        return NodeType.Mixed;
                    else
                    {
                        var fieldsChildren =
                            from Node chF in this.Children
                            where chF.Children.Count < 1
                            select 1;
                        if (fieldsChildren.Count() > 0)
                            return NodeType.FieldsOnly;
                        else
                            return NodeType.Mixed;
                    }
                }
            }
        }

        public class XTree
        {
            private int _currentNodeId = 0;
            public int CurrentNodeId
            {
                get
                {
                    return _currentNodeId++;
                }
            }
            private Dictionary<string, string> _widthsDictionary;
            public Dictionary<string, string> WidthsDictionary
            {
                get
                {
                    return _widthsDictionary;
                }
            }
            private Dictionary<string, string> _colorsDictionary;
            public Dictionary<string, string> ColorsDictionary
            {
                get
                {
                    return _colorsDictionary;
                }
            }
            private bool _readOnly;
            public bool ReadOnly
            {
                get
                {
                    return _readOnly;
                }
            }
            public List<Node> Nodes = new List<Node>();
            public Node[] LastChain = new Node[] {};
            public XTree(Dictionary<string, string> widthsDictionary, Dictionary<string, string> colorsDictionary, bool readOnly)
            {
                _widthsDictionary = widthsDictionary;
                _colorsDictionary = colorsDictionary;
                _readOnly = readOnly;
                LastChain = new Node[] { new Node(new Tuple<string, string>(null, "---top---"), null, this) };
                Nodes.Add(LastChain[0]);
            }
            public void AddChain(Node[] chain)
            {
                Node targetNode = null;
                for (int i = 0; i < LastChain.Length; i++)
                {
                    if(i == LastChain.Length - 1)//прошли всю цепочку
                    {
                        targetNode = LastChain[LastChain.Length - 1];
                        for (int j = 0; j < chain.Length; j++)
                        {
                            targetNode = new Node(chain[j].Header, targetNode);
                        }
                    }
                    else
                    {
                        if(LastChain[i].Header.Item2 == chain[0].Header.Item2)
                        {
                            targetNode = LastChain[i];
                            int startIndex = 1;
                            while(startIndex < chain.Length && chain[startIndex].Header.Item2 == LastChain[startIndex + i].Header.Item2)
                            {
                                targetNode = LastChain[i + startIndex];
                                startIndex++;
                            }
                            for (int j = startIndex; j < chain.Length; j++)
                            {
                                targetNode = new Node(chain[j].Header, targetNode);
                            }
                            Node[] newChain = new Node[i + chain.Length];//соединим начало одного массива и хвост другого
                            for (int k = 0; k < i; k++)
                            {
                                newChain[k] = LastChain[k];
                            }
                            for (int j = 0; j < chain.Length; j++)
                            {
                                newChain[j] = chain[j];
                            }
                            chain = newChain;//заменим цепочку на новую
                            break;
                        }
                    }
                }
                Node[] newLastChain = new Node[chain.Length + 1];
                newLastChain[chain.Length] = LastChain[LastChain.Length - 1];//последний копируем в последний
                for (int j = 0; j < chain.Length; j++)
                {
                    newLastChain[chain.Length - 1 - j] = targetNode;
                        targetNode = targetNode.Parent;
                }
                LastChain = newLastChain;
            }

            public void AddLeaves()
            {
                foreach(Node node in this.Nodes)
                {
                    node.AddLeaves();
                }
            }
        }


        public static XmlNode GenerateBands(List<Tuple<string, string>> headers, Dictionary<string, string> widthsDictionary, Dictionary<string, string> colorsDictionary, bool readOnly)
        {
            XTree Tree  = new XTree(widthsDictionary, colorsDictionary, readOnly);
            Node currentParent = null;
            Node currentNode = null;
            bool mustAddNode = false;
            foreach(Tuple<string, string> header in headers)
            {
                if (header.Item2.Contains("|"))
                {
                    string[] splittedHeader = header.Item2.Split('|');
                    Node[] chain = new Node[splittedHeader.Length];
                    for(int i = 0; i < splittedHeader.Length; i++)
                    {
                        string fieldName = i == splittedHeader.Length - 1 ? header.Item1 : null;
                        chain[i] = new Node(new Tuple<string, string>(fieldName, splittedHeader[i]), null);
                    }
                    Tree.AddChain(chain);
                }
                else
                {
                    currentNode = new Node(header, null);
                    Node[] newChain = new Node[] { currentNode };
                    Tree.AddChain(newChain);
                }
            }
            Tree.AddLeaves();
            XmlDocument xdoc = new XmlDocument();
            XmlNode rootNode = xdoc.CreateElement("dxg:GridControl.Bands", "http://schemas.devexpress.com/winfx/2008/xaml/grid");
            Node rNode = Tree.Nodes.First<Node>();
            foreach (Node node in rNode.Children)
            {
                node.AddToXmlNode(rootNode, null, null, true);
            }
            xdoc.AppendChild(rootNode); 
            return rootNode;
        }

        public static XmlDocument GenerateXml(XmlDocument doc, string fieldsJson, Dictionary<string, string> widthsDictionary, Dictionary<string, string> colorsDictionary, bool readOnly, string className)
        {
            //XmlNamespaceManager xs = new XmlNamespaceManager(doc.NameTable);
            //xs.AddNamespace("x", "http://schemas.microsoft.com/winfx/2006/xaml");
            //xs.AddNamespace("local", "clr-namespace:WpfLib;assembly=WpfLib");


            //XmlElement rootNode = doc.CreateElement("Window", "http://schemas.microsoft.com/winfx/2006/xaml/presentation");
            //rootNode.SetAttribute("xmlns:x", "http://schemas.microsoft.com/winfx/2006/xaml");
            //rootNode.SetAttribute("xmlns:local", "clr-namespace:WpfLib;assembly=WpfLib");
            //rootNode.SetAttribute("xmlns:dx", "clr-namespace:DevExpress.Xpf.Core;assembly=DevExpress.Xpf.Core.v18.1");
            //rootNode.SetAttribute("xmlns:dxg", "http://schemas.devexpress.com/winfx/2008/xaml/grid");
            //rootNode.SetAttribute("dx:ThemeManager.ThemeName", "Office2010Silver");
            //rootNode.SetAttribute("Title", "Форма просмотра данных");
            //rootNode.SetAttribute("Height", "500");
            //rootNode.SetAttribute("Width", "1500");
            //XmlNode resNode = doc.CreateElement("Window.Resources", "http://schemas.microsoft.com/winfx/2006/xaml/presentation");
            //resNode.AppendChild(doc.CreateElement("MultiValueTextConverter", "clr-namespace:WpfLib;assembly=WpfLib"));
            //resNode.AppendChild(doc.CreateElement("MultiValueObjectConverter", "clr-namespace:WpfLib;assembly=WpfLib"));
            //rootNode.AppendChild(resNode);
            //doc.AppendChild(rootNode);

            XmlNamespaceManager xs = new XmlNamespaceManager(doc.NameTable);
            xs.AddNamespace("dxg", "http://schemas.devexpress.com/winfx/2008/xaml/grid");
            xs.AddNamespace("l", "http://schemas.microsoft.com/winfx/2006/xaml/presentation");

            XmlNode labelNode = doc.SelectSingleNode(".//l:Label", xs);
            if (labelNode != null && labelNode is XmlElement)
                (labelNode as XmlElement).SetAttribute("Content", className);
            XmlNode bandsNode = doc.SelectSingleNode(".//dxg:GridControl.Bands", xs); 
            if (bandsNode != null)
            {
                List<GeneratedFieldEntity> fieldsList = JsonConvert.DeserializeObject<List<GeneratedFieldEntity>>(fieldsJson);
                List<Tuple<string, string>> headersList = new List<Tuple<string, string>>();
                foreach (GeneratedFieldEntity fe in fieldsList)
                {
                    headersList.Add(new Tuple<string, string>(fe.PropertyName, fe.Header.Replace("-", "|").Replace("К|во", "Кол-во")));
                }
                XmlNode bandsNodeGenerated = doc.ImportNode(GenerateBands(headersList, widthsDictionary, colorsDictionary, readOnly), true);
                XmlNode parentNode = bandsNode.ParentNode;
                parentNode.ReplaceChild(bandsNodeGenerated, bandsNode);
            }

            return doc;
        }

        public static Tuple<string, string> GenerateXaml(string fieldsJson, Dictionary<string, string> widthsDictionary, Dictionary<string, string> colorsDictionary,  bool readOnly)
        {
            List<GeneratedFieldEntity> fieldsList = JsonConvert.DeserializeObject<List<GeneratedFieldEntity>>(fieldsJson);
            //SourceFilesGenerationService sourceGeneratingService = new SourceFilesGenerationService(repository: null);
            //sourceGeneratingService.GenerateSourceFiles(tbOutputFolder.Text, tbEntityName.Text, tbEntityDescrition.Text, fieldsList);

            StringBuilder sb = new StringBuilder();
            sb.Append("<Window\r\n");
            sb.Append("    xmlns=\"http://schemas.microsoft.com/winfx/2006/xaml/presentation\"\r\n");
            sb.Append("    xmlns:l=\"http://schemas.microsoft.com/winfx/2006/xaml/presentation\"\r\n"); 


            sb.Append("    xmlns:x = \"http://schemas.microsoft.com/winfx/2006/xaml\"\r\n");
            sb.Append("    xmlns:d = \"http://schemas.microsoft.com/expression/blend/2008\"\r\n");
            sb.Append("    xmlns:mc = \"http://schemas.openxmlformats.org/markup-compatibility/2006\"\r\n");
            sb.Append("    xmlns:local = \"clr -namespace:WpfDemoApp\"\r\n");
            sb.Append("    xmlns:ctrl = \"clr -namespace:INV.Styles.Controls;assembly=INV.Styles\"\r\n");
            sb.Append("    xmlns:dxg = \"http://schemas.devexpress.com/winfx/2008/xaml/grid\"\r\n");
            sb.Append("    xmlns:dx = \"clr-namespace:DevExpress.Xpf.Core;assembly=DevExpress.Xpf.Core.v18.1\"\r\n");

            sb.Append("    mc:Ignorable = \"d\"\r\n");
            sb.Append("    dx:ThemeManager.ThemeName = \"###theme_name###\"\r\n");

            sb.Append("    Title = \"Форма просмотра данных\" Height = \"500\" Width = \"1000\" >\r\n");
            sb.Append("        <Grid>\r\n");
            sb.Append("             <GridControlEx  xmlns = \"clr-namespace:INV.Styles.Controls;assembly=INV.Styles\"\r\n");
            sb.Append("             x:Name = \"gData\" AutoGenerateColumns = \"None\" \r\n");
            sb.Append("                  ItemsSource = \"{ l:Binding DemoData}\" Margin = \"0,0,0,0\" >\r\n");
            sb.Append("                      <dxg:GridControl.Bands>\r\n");
            int i = 0;
            Stack<string> bandsAdded = new Stack<string>();
            bool mustAddBand = true;
            foreach (GeneratedFieldEntity fe in fieldsList)
            {
                string bandHeader = "";
                string fieldHeader = fe.Header;
                if (fieldHeader.Contains("|")) 
                {
                    string[] splittedHeader = fieldHeader.Split('|');
                    bandHeader = splittedHeader[0].Trim();
                    fieldHeader = string.Join("|", splittedHeader.Skip<string>(1));
                    //попытка ввести рекурсивные ленты столбцов провалилась, т.к. Dev Express этого не поддерживает
                    //if (fieldHeader.Contains("|"))
                    //{
                    //    bandsAdded.Push(bandHeader);
                    //    sb.Append("    <dxg:GridControlBand Header = \"");
                    //    sb.Append(bandHeader);
                    //    sb.Append("\" HorizontalHeaderContentAlignment=\"Center\">\r\n");
                    //    mustAddBand = false;
                    //    splittedHeader = fieldHeader.Split('|');
                    //    bandHeader = splittedHeader[0].Trim();
                    //    fieldHeader = string.Join("|", splittedHeader.Skip<string>(1));
                    //}
                }
                else
                {
                    bandHeader = "";
                }
                if (bandsAdded.Count > 0 && bandHeader != bandsAdded.Last<string>())
                {
                    sb.Append("    </dxg:GridControlBand >\r\n");
                    bandsAdded.Pop();
                    mustAddBand = true;
                }
                if (mustAddBand)
                {
                    sb.Append("    <dxg:GridControlBand Header = \"");
                    sb.Append(bandHeader);
                    sb.Append("\" HorizontalHeaderContentAlignment=\"Center\">\r\n");
                    mustAddBand = false;
                    bandsAdded.Push(bandHeader);
                }
                sb.Append("        <dxg:GridColumn FieldName = \"");
                sb.Append(fe.PropertyName);
                sb.Append("\" Header = \"");
                sb.Append(fieldHeader);

                string fieldWidthStr = null;
                if(widthsDictionary != null && widthsDictionary.ContainsKey(fe.PropertyName))
                    fieldWidthStr = widthsDictionary[fe.PropertyName];
                if (fieldWidthStr == null)
                {
                    //double fieldWidth = fieldHeader.Length * 5;
                    //if (fieldWidth < 60)
                    //    fieldWidth = 60;
                    //else if (fieldWidth > 180)
                    //{
                    //    fieldWidth /= 2;
                    //}
                    //if (fieldWidth > 180)
                    //{
                    //    fieldWidth /= 1.5;
                    //}
                    //fieldWidthStr = Math.Round(fieldWidth, 2).ToString();
                    fieldWidthStr = "68";
                }

                sb.Append("\" ReadOnly = \"" + readOnly.ToString() + "\" Width = \"" + fieldWidthStr + "\" >\r\n");
                sb.Append("              <dxg:GridColumn.HeaderTemplate>\r\n");
                sb.Append("                   <l:DataTemplate>\r\n");
                sb.Append("                   <l:TextBlock Text = \"{ l:Binding}\" ");
                if (colorsDictionary != null && colorsDictionary.ContainsKey(fe.PropertyName))
                    sb.Append("Background = \"" + colorsDictionary[fe.PropertyName] + "\" ");
                sb.Append("TextWrapping = \"Wrap\" />\r\n");
                sb.Append("                   </l:DataTemplate>\r\n");
                sb.Append("              </dxg:GridColumn.HeaderTemplate>\r\n");
                //sb.Append("              <dxg:GridColumn.CellTemplate >\r\n");
                //sb.Append("                   <l:DataTemplate >\r\n");
                //sb.Append("                        <l:TextBlock\r\n");
                //sb.Append("                          Name = \"columnWidth\"\r\n");
                //sb.Append("                          Text = \"{ l:Binding RowData.Row." + fe.PropertyName + "}\" />\r\n");
                //sb.Append("                        <l:DataTemplate.Triggers >\r\n");
                //sb.Append("                             <l:DataTrigger Binding = \"{ l:Binding RowData.RowPosition}\" Value = \"Top\" >\r\n");
                //sb.Append("                                 <l:Setter TargetName = \"columnWidth\" Property = \"Text\" Value = \"{l:Binding ActualWidth, l:RelativeSource={l:RelativeSource Self}}\" />\r\n");
                //sb.Append("                             </l:DataTrigger >\r\n");
                //sb.Append("                        </l:DataTemplate.Triggers >\r\n");
                //sb.Append("                   </l:DataTemplate >\r\n");
                //sb.Append("              </dxg:GridColumn.CellTemplate >\r\n");
                sb.Append(" </dxg:GridColumn>\r\n");
                if (bandsAdded.Count > 0 && i == fieldsList.Count - 1)
                {
                    sb.Append("    </dxg:GridControlBand>\r\n");
                    bandsAdded.Pop();
                }
                i++;
            }
            sb.Append("                       </dxg:GridControl.Bands>\r\n"); 
            sb.Append("                  <dxg:GridControl.View>\r\n");
            sb.Append("                  <dxg:TableView ShowTotalSummary = \"True\" />\r\n");
            sb.Append("            </dxg:GridControl.View>\r\n");
            sb.Append("       </GridControlEx>\r\n");
            sb.Append("       <TextBox x:Name = \"tbFilter\" HorizontalAlignment = \"Left\" Height = \"23\" Margin = \"133,10,0,0\" TextWrapping = \"Wrap\" Text = \"\" VerticalAlignment = \"Top\" Width = \"600\" />\r\n");
            sb.Append("       <Button x:Name = \"bnFilter\" Content = \"Фильтр\" HorizontalAlignment = \"Left\" Margin = \"10,10,0,0\" VerticalAlignment = \"Top\" Width = \"75\" />\r\n");
            sb.Append("       <TextBox x:Name = \"tbCurrentColumnWidth\" Text = \"{Binding ElementName=gData, Mode=OneWay, Path=CurrentColumn.ActualWidth}\" Height = \"30\" Margin = \"800,10,0,0\" HorizontalAlignment = \"Left\" VerticalAlignment = \"Top\" />\r\n");
            sb.Append("       <TextBox x:Name = \"tbCurrentColumnName\" Text = \"{Binding ElementName=gData, Mode=OneWay, Path=CurrentColumn.FieldName}\" Height = \"30\" Margin = \"830,10,0,0\" HorizontalAlignment = \"Left\" VerticalAlignment = \"Top\" />\r\n");
            sb.Append("    </Grid>\r\n");
            sb.Append("</Window>");

            Dictionary<string, object>[] valuesArray = new Dictionary<string, object>[10];
            int arrayLength = 10;
            for (int f = 0; f < arrayLength; f++)
            {
                valuesArray[f] = new Dictionary<string, object>();
                foreach (GeneratedFieldEntity fe in fieldsList)
                {
                    if (fe.ValuesArray != null && fe.ValuesArray.Length < arrayLength)
                    {
                        arrayLength = fe.ValuesArray.Length;
                    }
                    if (fe.PropertyName != null && fe.ValuesArray != null && fe.ValuesArray.Length > f)
                    {
                        string fieldHeader = fe.Header.Contains("|") ? fe.Header.Split('|')[1].Trim() : fe.Header;
                        valuesArray[f][fe.PropertyName] = fe.ValuesArray[f]?.ToString();//"Значение поля [" + fieldHeader + "]#" + f.ToString();
                    }
                }
            }
            string dataJson = JsonConvert.SerializeObject(valuesArray);
            return new Tuple<string, string>(sb.ToString(), dataJson);
        }
    }
}
