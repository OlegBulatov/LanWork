using System;
using System.Data;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DIOS.BusinessBase;
using DIOS.Common;
using DIOS.Common.Interfaces;
using DIOS.ObjectLib;
using Newtonsoft.Json;
using System.ComponentModel;
using System.Reflection;

namespace LanWork.Models
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
        private bool _onlyFactoryMethods = true;

        public string FullInfo(string class_name, int id)
        {
            _className = class_name;
            _objectid = id;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForFullInfo), null);
            return M.MakeResponse();
        }

        private string doTrueResponseForFullInfo()
        {
            IObject obj = ObjectMethods.GetObject(_className, _objectid);
            if (obj == null)
                throw new Exception(string.Format("Object {0} of class {1} not found.", _objectid, _className));
            Type _Type = obj.GetType();
            if (_Type != null)
            {
                MethodInfo FullInfoMethod = _Type.GetMethod("FullInfo");
                if (FullInfoMethod != null)
                    return (string)FullInfoMethod.Invoke(obj, new object[0]);
            }
            return JsonConvert.SerializeObject(obj);
        }

        public byte[] SendToWord(string json_table, string file_name)
        {
            GenerateService.ObjectWcfServiceClient sClient = new GenerateService.ObjectWcfServiceClient();
            return sClient.GenerateWordFile(json_table, file_name);
            //return res;
            //DIOS.WordAdapter.WordDocument doc = new DIOS.WordAdapter.WordDocument();
            //DataSet dataSet = new DataSet();
            //DataTable T = JsonConvert.DeserializeObject<DataTable>(json_table);
            //dataSet.Tables.Add(T);
            //string templateName = "c:\\doc\\project_solution_template.docx";
            //doc.NewDocument(templateName);
            //doc.SetDataSource(dataSet);
            //string fileName = AppDomain.CurrentDomain.BaseDirectory + "\\user_resources\\" + HttpContext.Current.User.Identity.Name + "\\" + Guid.NewGuid().ToString() + ".doc";
            //doc.SaveAs(fileName);
            ////doc.CloseDocument();
            //doc.CloseWord();
            //return new FileInfo(fileName);
        }

        public string ExecMethod(string class_name, int id, string method_name, string json_params = null)
        {
            _className = class_name;
            _objectid = id;
            _methodName = method_name;
            _json_params = json_params;

            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForExecMethod), null);
            return M.MakeResponse();
        }

        private string doTrueResponseForExecMethod()
        {
            DiosSqlManager M = new DiosSqlManager();
            ObjectFactory F = M.GetFactory(_className);
            IObject obj = F.GetObject(_objectid);
            object[] methodArgs = new object[0];
            if (_json_params != null)
            {
                Hashtable HT = JsonConvert.DeserializeObject(_json_params, typeof(Hashtable)) as Hashtable;
                if (HT != null)
                {
                    methodArgs = new object[HT.Count];
                    for (int i = 1; i <= methodArgs.Length; i++)
                    {
                        string key = "p" + i.ToString();
                        methodArgs[i - 1] = HT[key];
                    }
                }
            }
            object result = obj.ExecuteMethod(_methodName, methodArgs);
            return JsonConvert.SerializeObject(result);
            //if (result != null)
            //    return result.ToString();
            //return "no result";
        }
        public string ExecStaticMethod(string className, string methodName, string json_params, bool onlyFactoryMethods = true)
        {
            _json_params = json_params;
            _className = className;
            _methodName = methodName;
            _onlyFactoryMethods = onlyFactoryMethods;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForExecStaticMethod), null);
            return M.MakeResponse();
        }
        private string doTrueResponseForExecStaticMethod()
        {
            if (_onlyFactoryMethods)
            {
                object[] methodArgs = new object[0];
                if (!string.IsNullOrEmpty(_json_params))
                {
                    Hashtable HT = JsonConvert.DeserializeObject(_json_params, typeof(Hashtable)) as Hashtable;
                    if (HT != null)
                    {
                        methodArgs = new object[HT.Count];
                        for (int i = 1; i <= methodArgs.Length; i++)
                        {
                            string key = "p" + i.ToString();
                            methodArgs[i - 1] = HT[key];
                        }
                    }
                }
                object result = ObjectMethods.ExecuteStaticMethod(_className, _methodName, methodArgs);
                return JsonConvert.SerializeObject(result);
            }
            return "Not implemented";

            //if (result != null)
            //    return result.ToString();
            //return null;
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
            try
            {
                DiosSqlManager M = new DiosSqlManager();
                ObjectFactory F = null;
                string result = "";
                try
                {
                    F = M.GetFactory("OBJECT_TYPE");
                    IParameterCollection Params = new ParameterCollection();
                    Params.Add("class_name", _className);
                    IObject obj = F.GetObject(Params);
                    Params.Clear();
                    Params.Add("object_type", obj.id);
                    Params.Add("form_type", _form_type);
                    F = M.GetFactory("FORM");
                    IObject form = F.GetObject(Params);
                    if (form != null)
                    {
                        form.Load();
                        form["content_json"] = _json_object;
                        form.Post();
                    }
                }
                catch (Exception exc)
                {
                    throw new Exception("Form for " + _className + " not found");
                }
                return result;
            }
            catch (Exception exc)
            {
                return exc.Message;
            }
        }
        public string GetFormModel(string class_name, int form_type)
        {
            _className = class_name;
            _form_type = form_type;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForGetFormModel), null);
            return M.MakeResponse();
        }

        private string doTrueResponseForGetFormModel()
        {
            try
            {
                DiosSqlManager M = new DiosSqlManager();
                ObjectFactory F = null;
                string result = "";
                try
                {
                    F = M.GetFactory("OBJECT_TYPE");
                    IParameterCollection Params = new ParameterCollection();
                    Params.Add("class_name", _className);
                    IObject obj = F.GetObject(Params);
                    Params.Clear();
                    Params.Add("object_type", obj.id);
                    Params.Add("form_type", _form_type);
                    F = M.GetFactory("FORM");
                    IObject form = F.GetObject(Params);
                    if (form != null)
                        result = form["content_json"].ToString();
                }
                catch (Exception exc)
                {
                    throw new Exception("Form for " + _className + " not found");
                }
                return result;
            }
            catch (Exception exc)
            {
                return exc.Message;
            }
        }
        public string ColumnsList(string class_name)
        {
            _className = class_name;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForColumnsList), null);
            return M.MakeResponse();
        }

        private bool PropertyIsLongText(PropertyDescriptor prop)
        {
            foreach(Attribute attr in prop.Attributes)
            {
                if (attr is DIOS.Common.Interfaces.ObjectPropertyAttribute && (attr as DIOS.Common.Interfaces.ObjectPropertyAttribute).MaxLength > 1000)
                    return true;
            }
            return false;
        }
        private string doTrueResponseForColumnsList()
        {
            try
            {
                DiosSqlManager M = new DiosSqlManager();
                ObjectFactory F = null;
                try
                {
                    F = M.GetFactory(_className);
                }
                catch (Exception exc)
                {
                    throw new Exception("Object type " + _className + " not found");
                }
                IndexerPropertyDescriptorCollection props = F.GetObjectProperties();
                var query = from PropertyDescriptor prop in props
                            select new
                            {
                                prop.DisplayName,
                                prop.Name,
                                TypeName = PropertyIsLongText(prop)? "LongText" : prop.PropertyType.FullName
                            };
                var queryId = from object p in new object[1]
                              select new
                              {
                                  DisplayName = "Id",
                                  Name = "id",
                                  TypeName = "DIOS.Common.SqlInt32"
                              };
                string result = JsonConvert.SerializeObject(query.Union(queryId));
                return result;
            }
            catch (Exception exc)
            {
                return exc.Message;
            }
        }

        public string List(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            _className = class_name;
            _json_params = filter;
            _order = order;
            _limit = limit;
            _offset = offset;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForList), new RowCountHandler(getRowCount));
            return M.MakeResponse();
        }

        private string doTrueResponseForList()
        {
            try
            {
                DiosSqlManager M = new DiosSqlManager();
                ObjectFactory F = null;
                try
                {
                    F = M.GetFactory(_className);
                }
                catch (Exception exc)
                {
                    throw new Exception("Object type " + _className + " not found");
                }
                IParameterCollection Params = Util.DeserializeParams(_json_params);
                string result = F.ListJson(Params, _order, _limit, _offset);
                _row_count = F.RowCount;
                return result;
            }
            catch (Exception exc)
            {
                return exc.Message;
            }
        }

        private int getRowCount()
        {
            return _row_count;
        }

        public string VCList(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            _className = class_name;
            _json_params = filter;
            _order = order;
            _limit = limit;
            _offset = offset;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForVCList), new RowCountHandler(getRowCount));
            return M.MakeResponse();
        }

        private string doTrueResponseForVCList()
        {
            IParameterCollection Params = Util.DeserializeParams(_json_params);
            return ObjectMethods.JsonVirtualClassList(_className, Params, _order, _limit, _offset, out _row_count);
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
            IParameterCollection Params = Util.ConvertJsonToParameterCollection(_json_object);

            try
            {
                DiosSqlManager M = new DiosSqlManager();
                if (_json_object == null)
                    _json_object = "";
                ObjectFactory F = M.GetFactory(_className);

                if (Params.Contains("id"))
                {
                    Params.Remove("id");
                }
                IObject targetObject = F.Create(Params);
                return JsonConvert.SerializeObject(targetObject);

            }
            catch (Exception exc)
            {
                //ObjectMethods.LogOperation(string.Format("Exception in object create. Params were {0}, exception was {1}.", _json_object, exc.Message));
                Logger.LogStatic(string.Format("Exception in object create. Params were {0}, exception was {1}.", _json_object, exc.Message));
                throw exc;
            }
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
                DiosSqlManager M = new DiosSqlManager();//null;
                //if (_anonimous && _amanager != null)
                //    M = _amanager;
                //else
                //    M = new CuksSqlManager();
                ObjectFactory F = M.GetFactory(_className);
                IParameterCollection Params = Util.ConvertJsonToParameterCollection(_json_object);
                string key = "";
                if (Params.Contains("id"))
                {
                    key = Params["id"].Value.ToString();
                    IObject targetObject = F.GetObject(key);
                    Params.Remove("id");
                    Params.Add(ObjectFactory.InformationSourceParamName, DIOS.ObjectLib.InformationSource.web_interface);
                    targetObject.ApplyParams(Params);
                }
                //Params.Clear();
                //Params.Add("c." + _className.ToLower(), key);
                //return F.ListJson(Params);
                _objectid = int.Parse(key);
                return ""; //doTrueResponseForFullInfo();
            }
            catch (LoggedException exc)
            {
                //ObjectMethods.LogOperation(string.Format("Exception in object update. Params were {0}, exception was {1}.", _json_object, exc.Message));
                Logger.LogStatic(string.Format("Exception in object update. Params were {0}, exception was {1}.", _json_object, exc.Message));
                throw exc;
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
            DiosSqlManager M = new DiosSqlManager();
            ObjectFactory F = M.GetFactory(_className);
            IObject o = F.GetObject(_objectid);
            if (o != null)
            {
                o.Drop();
                return string.Format("Object {0} of class [{1}] was dropped.", _objectid, _className);
            }
            throw new Exception(string.Format("Object {0} of class [{1}] was not found.", _objectid, _className));
        }

    }
}