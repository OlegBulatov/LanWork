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

        public string ColumnsList(string class_name)
        {
            _className = class_name;
            ResponseMaker M = new ResponseMaker(new ReceiveResponseHandler(doTrueResponseForColumnsList), null);
            return M.MakeResponse();
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
                                prop.Name
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

    }
}