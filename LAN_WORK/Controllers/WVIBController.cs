using System;
using System.Collections.Generic;
using System.Collections;
using System.Data;
using System.Linq;
using System.Web.Mvc;
using LanitWork.Models;
using System.Web;
using System.IO;
using Newtonsoft.Json;

namespace LanitWork.Controllers
{
    public class WVIBController : Controller
    {

        private static MTreeNode[] treeCopy = null;
        private static HtmlButton[] htmlButtons = null;
        private static HtmlNote[] htmlNotes = null;

        public ActionResult Index()
        {
            return View();
        }

        private bool HasChildren(int parentId, DNode[] sourceData)
        {
            var query = from DNode N in sourceData
                        where N.PARENT == parentId
                        select 1;
            return query.ToArray<int>().Length > 0;
        }

        public string ModuleTree()
        {
            try
            {
                string loadButtonsResult = null;
                using (StreamReader SR = System.IO.File.OpenText(Path.Combine(System.AppDomain.CurrentDomain.BaseDirectory, "saved_buttons_for_vue.json")))
                {
                    loadButtonsResult = SR.ReadToEnd();
                    htmlButtons = JsonConvert.DeserializeObject<HtmlButton[]>(loadButtonsResult);
                }
                string loadNotesResult = null;
                htmlNotes = new HtmlNote[0];
                using (StreamReader SR = System.IO.File.OpenText(Path.Combine(System.AppDomain.CurrentDomain.BaseDirectory, "saved_notes.json")))
                {
                    loadNotesResult = SR.ReadToEnd();
                    htmlNotes = JsonConvert.DeserializeObject<HtmlNote[]>(loadNotesResult);
                }
            }
            catch { }//кнопки и заметки инициализируем при каждом рефреше

            if (treeCopy != null)
            {
                return JsonConvert.SerializeObject(treeCopy); 
            }
            string loadResult = null;
            try
            {
                using (StreamReader SR = System.IO.File.OpenText(Path.Combine(System.AppDomain.CurrentDomain.BaseDirectory, "saved_tree.json")))
                {
                    loadResult = SR.ReadToEnd();
                }
            }
            catch { }
            if (loadResult == null)
            {
                using (StreamReader SR = System.IO.File.OpenText(Path.Combine(System.AppDomain.CurrentDomain.BaseDirectory, "Form405ModuleTree.json")))
                {
                    var sourceData = JsonConvert.DeserializeObject<DNode[]>(SR.ReadToEnd());
                    //var query = NodesWithChildren(0, sourceData, 1, 3);
                    var query = from DNode N in sourceData
                                where N.PARENT == 0
                                select
                                    new
                                    {
                                        id = N.DELPHI_TREE,
                                        text = N.H001_DISPL_NAME,
                                        children = from DNode CN1 in sourceData
                                                   where CN1.PARENT == N.DELPHI_TREE
                                                   select
                                                       new
                                                       {
                                                           id = CN1.DELPHI_TREE,
                                                           icon = HasChildren(CN1.DELPHI_TREE, sourceData) ? "Package" : "BrowseForm",
                                                           text = CN1.H001_DISPL_NAME,
                                                           children = from DNode CN2 in sourceData
                                                                      where CN2.PARENT == CN1.DELPHI_TREE
                                                                      select
                                                                          new
                                                                          {
                                                                              id = CN2.DELPHI_TREE,
                                                                              text = CN2.H001_DISPL_NAME,
                                                                              icon = "BrowseForm",
                                                                              children = new object[0],
                                                                              parent_id = CN2.PARENT
                                                                          },
                                                           parent_id = CN1.PARENT
                                                       },
                                        parent_id = 0
                                    };
                    loadResult = JsonConvert.SerializeObject(query);
                }
            }
            treeCopy = JsonConvert.DeserializeObject<MTreeNode[]>(loadResult);
            return loadResult;
        }

        [HttpPost]
        public string UploadFile(IEnumerable<HttpPostedFileBase> fileUpload)
        {
            foreach (var file in fileUpload)
            {
                if (file == null) continue;
                if (!file.ContentType.Contains("image/")) 
                    throw new System.Exception("Файл не является изображением");
                byte[] fileContent = new byte[file.InputStream.Length];
                file.InputStream.Read(fileContent, 0, fileContent.Length);
                System.Tuple<string, string, string> fileNameInfo = WIBControllerAdapter.GetPath(file.FileName);
                System.IO.File.WriteAllBytes(fileNameInfo.Item1, fileContent);
                return fileNameInfo.Item3 + fileNameInfo.Item2;
            }
            return "";
        }

        public void SaveToFile(string fileName)
        {
            if(treeCopy != null && !string.IsNullOrEmpty(fileName))
                WIBControllerAdapter.SaveToFile(fileName, treeCopy);
            if (htmlButtons != null)
                WIBControllerAdapter.SaveToFile("saved_buttons_for_vue.json", htmlButtons);
            if (htmlNotes != null)
                WIBControllerAdapter.SaveToFile("saved_notes.json", htmlNotes);
        }

        public string AddButton(string nodeId, string caption, int left, int top, string targetNodeId = "")
        {
            if (htmlButtons == null)
                return null;
            if (targetNodeId != "")
            {
                MTreeNode.AddNode(treeCopy, nodeId, targetNodeId, "screen", "State");
            }
            else
            {
                MTreeNode N = MTreeNode.GetNode(treeCopy, nodeId);
                targetNodeId = N.parent_id;
            }
            return HtmlButton.Add(ref htmlButtons, nodeId, caption, left, top, targetNodeId);
        }

        public string AddNote(string nodeId, string text, int left, int top, int width, int height)
        {
            if (htmlNotes == null)
                return "";
            return HtmlNote.Add(ref htmlNotes, nodeId, text, left, top, width, height);
        }

        public void RenameButton(string buttonId, string caption)
        {
            HtmlButton.Rename(htmlButtons, buttonId, caption);
        }
        public void SetNoteText(string id, string text)
        {
            HtmlNote.SetText(htmlNotes, id, text);
        }

        public void RemoveButton(string id)
        {
            HtmlButton[] res = HtmlButton.Remove(htmlButtons, id);
            htmlButtons = res;
        }

        public void RemoveNote(string id)
        {
            HtmlNote[] res = HtmlNote.Remove(htmlNotes, id);
            htmlNotes = res;
        }

        public void SetButtonCoords(string id, int left, int top)
        {
            HtmlButton B = HtmlButton.GetButton(htmlButtons, id);
            if(B != null)
            {
                B.Left = left;
                B.Top = top;
            }
        }

        public void SetNoteCoords(string id, int left, int top)
        {
            HtmlNote N = HtmlNote.GetNote(htmlNotes, id);
            if (N != null)
            {
                N.left = left;
                N.top = top;
            }
        }

        public void SetNoteGeometry(string id, int width, int height)
        {
            HtmlNote N = HtmlNote.GetNote(htmlNotes, id);
            if (N != null)
            {
                N.width = width;
                N.height = height;
            }
        }

        public void SetButtonTargetId(string buttonId, string targetId)
        {
            HtmlButton B = HtmlButton.GetButton(htmlButtons, buttonId);
            if (B != null)
            {
                B.targetNodeId = targetId;
            }
        }

        public void AddNode(string parentId, string nodeId, string text, string icon)
        {
            if (treeCopy == null)
                return;
            MTreeNode[] res = MTreeNode.AddNode(treeCopy, parentId, nodeId, text, icon);
            if (res != null)//добавили узел на верхний уровень
                treeCopy = res;
        }

        public void RemoveNode(string parentId, string nodeId)
        {
            MTreeNode[] res = MTreeNode.RemoveNode(treeCopy, parentId, nodeId);
            if (res != null)//удалили узел с верхнего уровня
                treeCopy = res;
        }

        public void RenameNode(string nodeId, string name) 
        {
            MTreeNode.RenameNode(treeCopy, nodeId, name);
        }

        public void SetNodeData(string nodeId, string nodeData)
        {
            dynamic dataObj = JsonConvert.DeserializeObject(nodeData);
            string hostUrl = Request.Url.AbsoluteUri.Replace(Request.Url.AbsolutePath, "");//Request.Url.Host + ":" + Request.Url.Port
            string src = dataObj.src;
            if(src != null)
                src = src.Replace(hostUrl, "");
            string style = dataObj.style;
            string xml = dataObj.xml;
            MTreeNode.SetNodeData(treeCopy, nodeId, new { src, style, xml  });
        }

        public string GetHtml(string nodeId, string idPostfix = "")
        {
            return HtmlButton.GetHtml(htmlButtons, nodeId, idPostfix);
            //if (nodeId == "10")
            //    return "<div style=\"position:relative;left:850px;top:75px;\"><button onclick=\"selectNode('j1_110')\">Обновить</button></div>";
            //return "";
        }

        public string GetButtons(string nodeId)
        {
            return HtmlButton.GetJson(htmlButtons, nodeId);
        }
        public string GetNotes(string nodeId)
        {
            return HtmlNote.GetJson(htmlNotes, nodeId);
        }
    }

}
