using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DersaClientService
{
    class MethodArgDescription
    {
        public string ArgName;
        public string ArgValue;
    }
    class MethodDescription
    {
        public string MethodName;
        public MethodArgDescription[] MethodArgs;
    }

    class MethodCallInfo
    {
        public string FullDescriprtion;
        public string MethodName;
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
            return null;
        }
        public string CallServiceMethod(string description)
        {
            try
            {
                var methodDescription = JsonConvert.DeserializeObject<MethodDescription>(description);

                var mi = DecodeMethodInfo(description);
                if (mi != null)
                {
                    return "";
                }
                else
                {
                    return $"method {methodDescription.MethodName} with args {JsonConvert.SerializeObject(methodDescription.MethodArgs)} can not be decoded";
                }
            }
            catch(Exception exc)
            {
                return exc.Message.Substring(0, 32);
            }
        }
    }
}
