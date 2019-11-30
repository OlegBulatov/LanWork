using System;
using System.Xml;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Text.RegularExpressions;
using System.IO;


namespace WpfLib
{
    public class XGenerator
    {

        public static string GetClassName(string fileName)
        {
            if (!string.IsNullOrEmpty(fileName))
            {
                Stream FS = File.OpenRead(fileName);
                byte[] _buffer = new byte[FS.Length];
                try
                {
                    FS.Read(_buffer, 0, _buffer.Length);
                }
                finally
                {
                    FS.Flush();
                    FS.Close();
                }
                string sourceCode = System.Text.Encoding.Default.GetString(_buffer);
                Regex reClassName = new Regex("^(inherited).*\n");
                Match M = reClassName.Match(sourceCode);
                if (!string.IsNullOrEmpty(M.Value))
                    return M.Value.Split(':')[1].Trim();
            }
            return "EmptyClassName";
        }

        public static XTree GetXTree(List<Tuple<string, string>> headers, Dictionary<string, string> widthsDictionary, Dictionary<string, string> colorsDictionary, bool readOnly)
        {
            XTree Tree = new XTree(widthsDictionary, colorsDictionary, readOnly);
            Node currentParent = null;
            Node currentNode = null;
            bool mustAddNode = false;
            foreach (Tuple<string, string> header in headers)
            {
                if (header.Item2.Contains("|"))
                {
                    string[] splittedHeader = header.Item2.Split('|');
                    Node[] chain = new Node[splittedHeader.Length];
                    for (int i = 0; i < splittedHeader.Length; i++)
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
            return Tree;
        }

        public static XmlNode GenerateBands(List<Tuple<string, string>> headers, Dictionary<string, string> widthsDictionary, Dictionary<string, string> colorsDictionary, bool readOnly)
        {
            XTree Tree = GetXTree(headers, widthsDictionary, colorsDictionary, readOnly);
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
                    if (!widthsDictionary.ContainsKey(fe.PropertyName) && fe.Width != null)
                        widthsDictionary.Add(fe.PropertyName, fe.Width.Value.ToString());
                    headersList.Add(new Tuple<string, string>(fe.PropertyName, fe.Header == null? fe.PropertyName : fe.Header.Replace("-", "|").Replace("К|во", "Кол-во")));
                }
                XmlNode bandsNodeGenerated = null;
                if (headersList.Count > 0)
                {
                    bandsNodeGenerated = GenerateBands(headersList, widthsDictionary, colorsDictionary, readOnly);
                }
                if (bandsNodeGenerated != null)
                {
                    XmlNode bandsNodeImported = doc.ImportNode(bandsNodeGenerated, true);
                    XmlNode parentNode = bandsNode.ParentNode;
                    parentNode.ReplaceChild(bandsNodeImported, bandsNode);
                }
            }

            return doc;
        }

    }
    public enum NodeType : int { FieldsOnly = 1, BandsOnly = 2, Mixed = 3 }
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
                if (tree != null && tree.WidthsDictionary != null && tree.WidthsDictionary.Keys.Contains(this._fieldName))
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
            if (width == null)
                width = "80";
            chXNode.SetAttribute("Width", width);
            XmlElement htNode = doc.CreateElement("dxg:GridColumn.HeaderTemplate", "http://schemas.devexpress.com/winfx/2008/xaml/grid");
            XmlElement dtNode = doc.CreateElement("l:DataTemplate", "http://schemas.microsoft.com/winfx/2006/xaml/presentation");
            XmlElement tbNode = doc.CreateElement("l:TextBlock", "http://schemas.microsoft.com/winfx/2006/xaml/presentation");
            tbNode.SetAttribute("Text", "{l:Binding}");
            tbNode.SetAttribute("TextWrapping", "Wrap");
            dtNode.AppendChild(tbNode);
            htNode.AppendChild(dtNode);
            chXNode.AppendChild(htNode);

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
        public Node(Tuple<string, string> header, Node parent) : this(header, parent, null)
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
            if (tree != null)
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
            chXNode.SetAttribute("Header", this.Header.Item2);
            chXNode.SetAttribute("HorizontalHeaderContentAlignment", "Center");
            if (this.Children.Count > 0 || this.Leaves.Count > 0)
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
                        if (chN.Children.Count > 0 || chN.Leaves.Count > 0)
                            chN.AddToXmlNode(ch2XNode, null, null, readOnly);
                    }
                }
            }
            return xNode.AppendChild(chXNode);
        }
        public void AddLeaves()
        {
            this.NodeType = GetNodeType();
            if (this.Header.Item1 != null)
            {
                if (this.Parent.NodeType == NodeType.FieldsOnly)
                    new Leaf(this.Header.Item1, this.Header.Item2, this.Parent);
                else
                {
                    Node leafParent = this;
                    Node[] siblingNodes = new Node[this.Parent.Children.Count];
                    int s = 0;
                    foreach(Node sibl in this.Parent.Children)
                    {
                        siblingNodes[s++] = sibl;
                    }
                    for(s = siblingNodes.Length - 1; s >= 0; s--)
                    {
                        if (siblingNodes[s].Id >= this.Id)
                            continue;
                        if (siblingNodes[s].Children.Count > 0)
                            break;
                        leafParent = siblingNodes[s];
                        break;
                    }
                    new Leaf(this.Header.Item1, this.Header.Item2, leafParent);
                    leafParent._header = "";
                }
            }
            foreach (Node chNode in this.Children)
            {
                chNode.AddLeaves();
            }
        }
        public NodeType GetNodeType()
        {
            if (this.Children.Count == 0)
            {
                if (this.Header.Item1 == null)
                    return NodeType.BandsOnly;
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
                        return NodeType.BandsOnly;
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
        public Node[] LastChain = new Node[] { };
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
                if (i == LastChain.Length - 1)//прошли всю цепочку
                {
                    targetNode = LastChain[LastChain.Length - 1];
                    for (int j = 0; j < chain.Length; j++)
                    {
                        targetNode = new Node(chain[j].Header, targetNode);
                    }
                }
                else
                {
                    if (LastChain[i].Header.Item2 == chain[0].Header.Item2)
                    {
                        targetNode = LastChain[i];
                        int startIndex = 1;
                        while (startIndex < chain.Length && chain[startIndex].Header.Item2 == LastChain[startIndex + i].Header.Item2)
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
            foreach (Node node in this.Nodes)
            {
                node.AddLeaves();
            }
        }
    }

}
