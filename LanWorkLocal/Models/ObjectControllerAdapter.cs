using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using System.IO;
using DIOS.BusinessBase;

namespace LanWorkLocal.Models
{
    public class ObjectControllerAdapter
    {
        private string _className = "";
        private int _form_type;
        private string _methodName = "";
        private int _objectid = -1;
        private int _status = -1;
        private string _json_object = null;
        private string _json_params = null;
        private string _order = "";
        private int _limit = 1000;
        private int _offset = 0;
        private int _row_count = -1;
        private static Hashtable contentsTable = new Hashtable();

        private Dictionary<string, object>[] GetContent(string fileName)
        {
            using (StreamReader SR = new StreamReader("..\\..\\json_objects\\" + fileName))
            {
                var result = JsonConvert.DeserializeObject<Dictionary<string, object>[]>(SR.ReadToEnd());
                _row_count = result.Length;
                return result;
            }
        }

        private string GetStringContent(string fileName)
        {
            try
            {
                 return JsonConvert.SerializeObject(GetContent(fileName)); 
            }
            catch (Exception exc)
            {
                return exc.Message;
            }
        }

        private string SetStringContent(string fileName, string content)
        {
            try
            {
                using (StreamWriter SW = new StreamWriter("..\\..\\json_objects\\" + fileName))
                {
                    SW.Write(content);
                    return "OK";
                }
            }
            catch (Exception exc)
            {
                return exc.Message;
            }
        }

        public string PutString(string src)
        {
            string Id = Guid.NewGuid().ToString();
            contentsTable[Id] = src;
            return Id;
        }

        public string GetString(string key)
        {
            string result = (string)contentsTable[key];
            contentsTable[key] = null;
            return result;
        }

        public string SetFormModel(string class_name, int form_type, string value)
        {
            _className = class_name;
            _form_type = form_type;
            _json_object = value;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForSetFormModel), null);
            return M.MakeResponse();
        }

        private string doTrueResponseForSetFormModel()
        {
            string formTypeName = "Browse";//GetFormTypeName(_form_type);
            return SetStringContent(_className + formTypeName + "FormModel.json", _json_object);
        }

        public IFrontResponse GetFormModel(string class_name, int form_type)
        {
            _className = class_name;
            _form_type = form_type;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForGetFormModel), null);
            return M.GetResponse();
        }

        private string GetFormTypeName(int formType)
        {
            switch (formType)
            {
                case 2:
                    return "Filter";
                case 3:
                    return "Edit";
            }
            return "Browse";
        }
        private string doTrueResponseForGetFormModel()
        {
            string formTypeName = GetFormTypeName(_form_type);
            return GetStringContent(_className + formTypeName + "FormModel.json");
        }

        public IFrontResponse ColumnsList(string class_name)
        {
            _className = class_name;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForColumnsList), null);
            return M.GetResponse();
        }

        private string doTrueResponseForColumnsList()
        {
            return GetStringContent(_className + "ColumnsList.json");
        }

        public IFrontResponse List(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            _className = class_name;
            _json_params = filter;
            _order = order;
            _limit = limit;
            _offset = offset;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForList), new RowCountHandler(getRowCount));
            return M.GetResponse();
        }

        private string doTrueResponseForList()
        {
            return GetStringContent(_className + "List.json");
        }

        private int getRowCount()
        {
            return _row_count;
        }

        public IFrontResponse VCList(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            _className = class_name;
            _json_params = filter;
            _order = order;
            _limit = limit;
            _offset = offset;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForVCList), new RowCountHandler(getRowCount));
            return M.GetResponse();
        }

        private string doTrueResponseForVCList()
        {
            return GetStringContent(_className + "List.json");
        }

        public string Create(string class_name, string json_object = null)
        {
            _className = class_name;
            _json_object = json_object;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForCreate));
            return M.MakeResponse();
        }
        private string doTrueResponseForCreate()
        {
            return "Create()";
        }

        public string Update(string class_name, string json_object, bool overwrite_sync = false)
        {
            _className = class_name;
            _json_object = json_object;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForUpdate));
            return M.MakeResponse();
        }

        private string doTrueResponseForUpdate()
        {
            try
            {
                Dictionary<string, object>[] records = GetContent(_className + "List.json");
                Dictionary<string, object> targetObject = JsonConvert.DeserializeObject<Dictionary<string, object>>(_json_object);
                var queryIn = from Dictionary<string, object> rec in records
                            where rec["id"].Equals(targetObject["id"])
                            select rec;
                Dictionary<string, object> targetObjectSaved = null;
                if(queryIn.Count() > 0)
                    targetObjectSaved = queryIn.ToArray()[0] as Dictionary<string, object>;
                if (targetObjectSaved != null)
                {
                    foreach (string key in targetObject.Keys)
                    {
                        if(key != "id")
                            targetObjectSaved[key] = targetObject[key];
                    }
                }
                var queryOut = (from Dictionary<string, object> rec in records
                              where !rec["id"].Equals(targetObject["id"])
                              select rec)
                              .Union(
                                    from Dictionary<string, object> rec in new object[] { targetObjectSaved }
                                    select rec
                    );
                SetStringContent(_className + "List.json", JsonConvert.SerializeObject(queryOut));
                return "OK";
            }
            catch (Exception exc)
            {
                return exc.Message;
            }
        }

        public string Drop(string class_name, int objectid)
        {
            _className = class_name;
            _objectid = objectid;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForDrop));
            return M.MakeResponse();
        }

        private string doTrueResponseForDrop()
        {
            return "Drop()";
        }

    }
}