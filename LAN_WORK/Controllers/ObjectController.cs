using System;
using System.IO;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LanWork.Models;
using Newtonsoft.Json;
using DIOS.BusinessBase;

namespace LanWork.Controllers
{
    public class ObjectController : Controller
    {
        public ObjectController()
        {
            if (System.Web.HttpContext.Current.User.Identity.Name == "scott")
                throw new Exception("Unauthorized");
        }

        private static Hashtable fileTable = new Hashtable();
        public string FullInfo(string class_name, int id)
        {

            string result = (new ObjectControllerAdapter()).FullInfo(class_name, id);
            return result;

        }

        public string DownloadById(string file_id, string file_name)
        {
            byte[] bts = fileTable[file_id] as byte[];
            if (bts == null)
                return "file not found";
            try
            {
                Response.ContentType = "application/force-download";
                string Header = "Attachment; Filename=" + file_name;
                Response.AppendHeader("Content-Disposition", Header);
                Response.OutputStream.Write(bts, 0, bts.Length);
                Response.End();
            }
            catch (Exception exc)
            {
                Response.OutputStream.Flush();
                Response.OutputStream.Close();
                Response.ContentType = "TEXT/HTML";
                Response.ClearHeaders();
                Response.Write(exc.Message);
            }
            return "OK";
        }

        public string SendToWord(string json_table, string file_name)
        {
            byte[] bts = (new ObjectControllerAdapter()).SendToWord(json_table, file_name);
            //FileInfo fi = new FileInfo(fileName);
            //System.IO.Stream S = fi.OpenRead();
            //byte[] bts = new byte[S.Length];
            //S.Read(bts, 0, bts.Length);
            //S.Flush();
            //S.Close();
            string key = Guid.NewGuid().ToString();
            fileTable[key] = bts;
            //fi.Delete();
            return key;
        }
        //
        // GET: /Object/
        public string ExecMethod(string class_name, int id, string method_name, string json_object = null)
        {
            string result = (new ObjectControllerAdapter()).ExecMethod(class_name, id, method_name, json_object);
            return result;
        }

        public string ExecStaticMethod(string class_name, string method_name, string json_params = null)
        {
            string result = (new ObjectControllerAdapter()).ExecStaticMethod(class_name, method_name, json_params);
            return result;
        }
        public string GetKeyName(string class_name)
        {
            return ObjectMethods.GetKeyName(class_name);
        }
        public string List(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            string result = (new ObjectControllerAdapter()).List(class_name, filter, order, limit, offset);
            return result;
        }
        public string ColumnsList(string class_name)
        {
            string result = (new ObjectControllerAdapter()).ColumnsList(class_name);
            return result;
        }
        public string GetFormModel(string class_name, int form_type)
        {
            string result = (new ObjectControllerAdapter()).GetFormModel(class_name, form_type);
            return result;
        }

        [HttpPost]
        public string SetFormModel(string class_name, int form_type, string value)
        {
            string result = (new ObjectControllerAdapter()).SetFormModel(class_name, form_type, value);
            return result;
        }
        public string PureList(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            string result = (new ObjectControllerAdapter()).List(class_name, filter, order, limit, offset);
            dynamic resultObject = JsonConvert.DeserializeObject(result);

            return resultObject.response_body;
        }

        public string VCList(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            HttpContext.Response.AddHeader("Access-Control-Allow-Origin", "*");
            string result = (new ObjectControllerAdapter()).VCList(class_name, filter, order, limit, offset);
            return result;

        }

        [HttpPost]
        public string Update(string class_name, string json_object, bool overwrite_sync = false)
        {
            string result = (new ObjectControllerAdapter()).Update(class_name, json_object, overwrite_sync);
            return result;
        }

        [HttpPost]
        public string Drop(string class_name, int objectid)
        {
            string result = (new ObjectControllerAdapter()).Drop(class_name, objectid);
            return result;
        }


        [HttpPost]
        public string Create(string class_name, string json_object)
        {
            string result = (new ObjectControllerAdapter()).Create(class_name, json_object);
            return result;
        }

    }
}
