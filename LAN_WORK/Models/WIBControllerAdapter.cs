using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DIOS.Common;
using DIOS.Common.Interfaces;
using Newtonsoft.Json;
using System.Net.Mail;
using System.Net;

namespace LanitWork.Models
{

    public class WIBControllerAdapter
    {
        public static System.Tuple<string, string, string> GetPath(string clientPath)
        {
            string userName = AccountControllerAdapter.GetCurrentUserName();//HttpContext.Current.User.Identity.Name;
            string[] fileNameParts = clientPath.Split('\\');
            string fileName = fileNameParts[fileNameParts.Length - 1];
            string path1 = Path.Combine(System.AppDomain.CurrentDomain.BaseDirectory, "user_resources");
            if (!Directory.Exists(path1))
                Directory.CreateDirectory(path1);
            string path2 = Path.Combine(System.AppDomain.CurrentDomain.BaseDirectory, "user_resources", userName);
            if (!Directory.Exists(path2))
                Directory.CreateDirectory(path2);
            path2 = Path.Combine(System.AppDomain.CurrentDomain.BaseDirectory, "user_resources", userName, fileName);
            return new Tuple<string, string, string>(path2, fileName, "/user_resources/" + userName + "/");
        }

        public static void SaveToFile(string fileName, object entityToSave)
        {
            string path = Path.Combine(System.AppDomain.CurrentDomain.BaseDirectory, fileName);
            if (System.IO.File.Exists(path))
                System.IO.File.Delete(path);
            using (Stream S = System.IO.File.OpenWrite(path))
            {
                StreamWriter SW = new StreamWriter(S, System.Text.Encoding.UTF8);
                SW.Write(JsonConvert.SerializeObject(entityToSave));
                SW.Flush();
                SW.Close();
            }
        }

    }

    public class HtmlButton
    {
        public string Id;
        public string Caption;
        public int Left;
        public int Top;
        public string ownerNodeId;
        public string targetNodeId;

        public string GetHtml(string idPostfix)
        {
            return "<div class=\"frame-button\" id=\""
                + Id
                + idPostfix
                + "\" style=\"position:fixed;left:" 
                + Left.ToString() 
                + "px;top:" 
                + Top.ToString() 
                + "px;\"><button onclick=\"selectNode('" 
                + targetNodeId 
                + "')\">" 
                + Caption 
                + "</button></div>";
        }

        public static string GetHtml(HtmlButton[] buttons, string nodeId, string idPostfix)
        {
            if (buttons == null)
                return "";
            var query = from HtmlButton B in buttons
                        where B.ownerNodeId == nodeId
                        select B;
            string result = "";
            foreach(HtmlButton button in query)
            {
                result += button.GetHtml(idPostfix);
            }
            //if (query.Count<HtmlButton>() > 0)
            //    button = query.ToArray<HtmlButton>()[0];
            //if (button != null)
            //    return button.GetHtml();
            return result;
        }

        public static HtmlButton GetButton(HtmlButton[] buttons, string buttonId)
        {
            var res = from HtmlButton B in buttons
                      where B.Id == buttonId
                                   select B;
            if(res.Count<HtmlButton>() > 0)
                return res.ToArray<HtmlButton>()[0];
            return null;
        }

        public static HtmlButton[] Add(HtmlButton[] buttons, string nodeId, string caption, int left, int top, string targetNodeId = "")
        {
            HtmlButton newButton = new HtmlButton();
            newButton.Id = Guid.NewGuid().ToString();
            newButton.ownerNodeId = nodeId;
            newButton.Caption = caption;
            newButton.Left = left;
            newButton.Top = top;
            newButton.targetNodeId = targetNodeId;
            var modifiedButtons = (from HtmlButton B in buttons
                      select B).Union(new HtmlButton[] { newButton });
            return modifiedButtons.ToArray<HtmlButton>(); 
        }

    }

    public class DNode
    {
        public string H001_DISPL_NAME;
        public int DELPHI_TREE;
        public int PARENT;
        public string H001_CLASS_NAME;
    }

    public class MTreeNode
    {
        public string id;
        public string text;
        public string icon;
        public object data;
        public MTreeNode[] children;
        public string parent_id;

        public static object[] GetAllNodes(MTreeNode[] topNodes, ArrayList A = null)
        {
            if (A == null)
            {
                A = new ArrayList();
            }
            foreach (MTreeNode N in topNodes)
            {
                A.Add(N);
                GetAllNodes(N.children, A);
            }
            return A.ToArray();
        }

        public static MTreeNode GetNode(MTreeNode[] topNodes, string nodeId)
        {
            object[] allNodes = MTreeNode.GetAllNodes(topNodes);
            var nodesRaw = from MTreeNode n in allNodes
                           where n.id == nodeId
                           select n;
            MTreeNode[] nodes = nodesRaw.ToArray<MTreeNode>();
            if (nodes.Length > 0)
            {
                return nodes[0];
            }
            return null;
        }

        public static MTreeNode[] AddNode(MTreeNode[] topNodes, string parentId, string nodeId, string text, string icon = "BrowseForm")
        {
            MTreeNode exNode = GetNode(topNodes, nodeId);
            if (exNode != null)
            {
                return null;//ничего не делаем, такой узел уже есть
            }
            MTreeNode newNode = new MTreeNode();
            newNode.id = nodeId;
            newNode.parent_id = parentId;
            newNode.text = text;
            newNode.icon = icon;
            newNode.children = new MTreeNode[] { };
            if (parentId == "0" || parentId == "")//добавляем на верхний уровень
            {
                var query = (from MTreeNode N in topNodes
                            select N).Union(new MTreeNode[] { newNode });
                topNodes = query.ToArray<MTreeNode>();
                return topNodes;
            }
            MTreeNode pNode = GetNode(topNodes, parentId);
            if (pNode == null)
                return null;
            var ch = (from MTreeNode N in pNode.children
                         select N).Union(new MTreeNode[] { newNode });
            pNode.children = ch.ToArray<MTreeNode>();
            return null;
        }

        public static MTreeNode[] RemoveNode(MTreeNode[] topNodes, string parentId, string nodeId) 
        {
            MTreeNode pNode = GetNode(topNodes, parentId);
            if (pNode != null)
            {
                var query = from MTreeNode N in pNode.children
                            where N.id != nodeId
                            select N;
                pNode.children = query.ToArray<MTreeNode>();
            }
            else
            {
                MTreeNode selNode = GetNode(topNodes, nodeId);
                if (selNode != null)
                {
                    var query = from MTreeNode N in topNodes
                                where N.id != nodeId
                                select N;
                    topNodes = query.ToArray<MTreeNode>();
                    return topNodes;
                }
            }
            return null;
        }

        public static void RenameNode(MTreeNode[] topNodes, string nodeId, string nodeName)
        {
            MTreeNode node = GetNode(topNodes, nodeId);
            if (node != null)
            {
                node.text = nodeName;
            }
        }

        public static void SetNodeData(MTreeNode[] topNodes, string nodeId, object nodeData)
        {
            MTreeNode node = GetNode(topNodes, nodeId);
            if (node != null)
            {
                node.data = nodeData;
            }
        }

    }

}