using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DIOS.BusinessBase;
using DIOS.Common;
using DIOS.Common.Interfaces;
using DIOS.ObjectLib;
using Newtonsoft.Json;
using System.ComponentModel;

namespace LanWork.Models
{
    public class ObjectControllerAdapter
    {
        private string _className = "";
        private string _methodName = "";
        private int _objectid = -1;
        private int _status = -1;
        private string _json_object = null;
        private string _json_params = null;
        private string _order = "";
        private int _limit = 1000;
        private int _offset = 0;
        private int _row_count = -1;

        public string GetEditModel(string class_name)
        {
            _className = class_name;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForGetEditModel), null);
            return M.MakeResponse();
        }

        private string doTrueResponseForGetEditModel()
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
                    Params.Add("form_type", 3);
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
                string result = JsonConvert.SerializeObject(query);
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


    }
}