using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DersaClientService
{
    class MethodDescription
    {
        public string MethodName;
        public Dictionary<string, object> MethodArgs;
    }

    class MethodCallInfo
    {
        public MethodInfo mInfo;
        public object[] Args;
    }
    class MethodCallDecoder
    {
        private object methodCallService = null;

        public MethodCallDecoder(object _methodCallService)
        {
            methodCallService = _methodCallService;
        }
        public MethodCallInfo DecodeMethodInfo(string description)
        {
            var methodDescription = JsonConvert.DeserializeObject<MethodDescription>(description);
            var mi = methodCallService.GetType().GetMethod(methodDescription.MethodName);
            var parms = mi.GetParameters();
            object[] args = new object[parms.Length];
            for(int p= 0; p < parms.Length; p++)
            {
                args[p] = methodDescription.MethodArgs[ parms[p].Name];
            }
            return new MethodCallInfo { mInfo = mi, Args = args};
        }
        public string CallServiceMethod(string description)
        {
            try
            {
                var methodDescription = JsonConvert.DeserializeObject<MethodDescription>(description);

                var decodedInfo = DecodeMethodInfo(description);
                if (decodedInfo != null)
                {
                    object result = decodedInfo.mInfo.Invoke(methodCallService, decodedInfo.Args);
                    if(result != null)
                        return result.ToString();
                    return null;
                }
                else
                {
                    return $"method {methodDescription.MethodName} with args {JsonConvert.SerializeObject(methodDescription.MethodArgs)} can not be decoded";
                }
            }
            catch(Exception exc)
            {
                string message = exc.Message;
                Exception inner = exc.InnerException;
                while (inner != null)
                {
                    message = inner.Message;
                    inner = inner.InnerException;
                }
                return message;
            }
        }
    }
}
