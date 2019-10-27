using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.Text;
using DIOS.Common.Interfaces;
using DIOS.Common;
using DIOS.BusinessBase;
using Newtonsoft.Json;
//using CuksWebApiApplication.Models;
using System.IO;
//using NLog;

namespace Dios.WCF
{
    // ПРИМЕЧАНИЕ. Команду "Переименовать" в меню "Рефакторинг" можно использовать для одновременного изменения имени класса "ObjectWcfService" в коде, SVC-файле и файле конфигурации.
    // ПРИМЕЧАНИЕ. Чтобы запустить клиент проверки WCF для тестирования службы, выберите элементы ObjectWcfService.svc или ObjectWcfService.svc.cs в обозревателе решений и начните отладку.
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    [ServiceBehavior(IncludeExceptionDetailInFaults = true)]
    public class ObjectWcfService : IObjectWcfService
    {
        //private static NLog.Logger logger = LogManager.GetCurrentClassLogger();

        public string KeyName(string className, string token)
        {
            string result = "You are not authorized to perform this action.";
            bool authorized = WcfUtil.VerifyUser(token);
            if (authorized)
            {
                result =  ObjectMethods.GetKeyName(className);
            }
            return result;
        }

        public string ExecMethod(string class_name, string method_name, string id, string args, string token)
        {
            string result = "You are not authorized to perform this action.";
            bool authorized = WcfUtil.VerifyUser(token);
            if (authorized)
            {
                object objId = null;
                try
                {
                    if (id != "")
                        objId = int.Parse(id.ToString());
                    return ObjectMethods.ExecuteMethod(class_name, objId, method_name, args);
                }
                catch (Exception exc)
                {
                    return exc.Message;
                }
            }
            return result;
        }

        public string GetUserToken(string name, string password)
        {
            return WcfUtil.GetToken(name, password); 
        }

        public string DropObject(string class_name, int id, string token)
        {
            string result = "You are not authorized to perform this action.";
            bool authorized = WcfUtil.VerifyUser(token);
            if (authorized)
            {
                try
                {
                    //(new ObjectControllerAdapter(true)).Drop(class_name, id);
                    ObjectMethods.WcfDropObject(class_name, id);
                    return "";
                }
                catch(Exception exc)
                {
                    return exc.Message;
                }
            }
            return result;
        }
        public string CreateObject(string class_name, string json_object, string token)
        {
            bool authorized = WcfUtil.VerifyUser(token);
            string result = "";
            if (authorized)
            {
                try
                {
                    IObject newObject = ObjectMethods.WcfCreateObject(class_name, json_object);
                    result = newObject.id.ToString();
                }
                catch(Exception exc)
                {
                    Logger L = new Logger();
                    L.LogError(exc.Message);
                    result = exc.Message;
                }
            }
            return result;
        }
        public string SetObjectView(string class_name, string json_object, string token)
        {
            //IObject obj = ObjectMethods.AnonimousGetObject(className, id);
            //UniStructView UV = (UniStructView)obj.GetView();
            //string serialized_object = UV.GetJson();
            //return serialized_object; 
            string result = "You are not authorized to perform this action.";
            bool authorized = WcfUtil.VerifyUser(token);
            if (authorized)
            {
                try
                {
                    //result = (new ObjectControllerAdapter(true)).Update(class_name, json_object);
                    ObjectMethods.WcfUpdateObject(class_name, json_object);
                    return "";
                }
                catch (Exception exc)
                {
                    return exc.Message;
                }
            }
            return result;
        }
        public string GetObjectView(string className, int id, string token)
        {
            bool authorized = WcfUtil.VerifyUser(token);
            if (!authorized)
                return "You are not authorized to perform this action";
            IObject obj = ObjectMethods.WcfGetObject(className, id);
            UniStructView UV = (UniStructView)obj.GetView();
            string serialized_object = UV.GetJson();
            return serialized_object;
        }
        public byte[] List(string className, string token)
        {
            return ListWithParams(className, null, token);
        }
        public byte[] ListWithParams(string className, string JsonParams, string token)
        {
            Logger L = new Logger();
            L.LogError(className + " Params:" + JsonParams);
            bool authorized = WcfUtil.VerifyUser(token);
            IParameterCollection Params = new ParameterCollection();
            if (JsonParams != null && JsonParams != "")
                Params = Util.ConvertJsonToParameterCollection(JsonParams);
            try
            {
                int rowcount = 0;
                ObjectCollection col = ObjectMethods.List(className, Params, "", -1, 0, out rowcount) as ObjectCollection;
                byte[] B = col.SerializeToByteArray();
                var ms = new System.IO.MemoryStream();
                using (var bw = new System.IO.BinaryWriter(ms))
                {
                    bw.Write(B.Length);
                    bw.Write(Serializer.CompressZlib(B, 9));
                    bw.Flush();
                    B = ms.ToArray();
                }
                return B;
            }
            catch(Exception exc)
            {
                //DIOS.Common.Logger L = new DIOS.Common.Logger();
                L.LogError(string.Format(exc.Message));
                //logger.Error(exc.Message);
                throw;
            }
        }
        public byte[] EmptyList(string className, string token)
        {
            bool authorized = WcfUtil.VerifyUser(token);
            IParameterCollection Params = new ParameterCollection();
            Params.Add("1", "0");
            int rowcount = 0;
            ObjectCollection col = ObjectMethods.List(className, Params, "", -1, 0, out rowcount) as ObjectCollection;
            if (col != null)
            {
                byte[] B = col.SerializeToByteArray();
                return B;
            }
            return new byte[0];
        }

        public string SimpleList(string className, string Filter, string Order, int limit, int offset, string token)
        {
            bool authorized = WcfUtil.VerifyUser(token);  
            if (!authorized)
                return "[]";
            int rowcount = 0;
            //return ObjectMethods.JsonVirtualClassList(className, new ParameterCollection(), "", -1, 0, out rowcount);
            IParameterCollection Params = new ParameterCollection();
            try
            {
                Params = Util.DeserializeParams(Filter);
            }
            catch
            {
                string Where = Filter;//не получилось расшифровать фильтр как набор параметров - считаем, что это условие Where
                if (string.IsNullOrEmpty(Where))
                    Where = "(1=1)";
                Parameter whereParam = new Parameter(Where, null);
                whereParam.GenerateWhereAsName = true;
                Params.Add(whereParam);
            }
            ObjectCollection col = ObjectMethods.List(className, Params, Order, -1, 0, out rowcount) as ObjectCollection;
            return JsonConvert.SerializeObject(col);
        }

        public byte[] PropertiesList(string className, string token)
        {
            bool authorized = WcfUtil.VerifyUser(token);
            ObjectCollection col = ObjectMethods.PropertiesList(className) as ObjectCollection;
            if (col != null)
            {
                byte[] B = col.SerializeToByteArray();
                var ms = new System.IO.MemoryStream();
                using (var bw = new System.IO.BinaryWriter(ms))
                {
                    bw.Write(B.Length);
                    bw.Write(Serializer.CompressZlib(B, 9));
                    bw.Flush();
                    B = ms.ToArray();
                }
                return B;
            }
            return new byte[0];
        }
    }
}
