using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MethodCallService
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
    class MethodCallDecoder
    {
        public static string CallServiceMethod(string description)
        {
            try
            {
                var res = JsonConvert.DeserializeObject<MethodDescription>(description);
                return $"method {res.MethodName} with args {JsonConvert.SerializeObject(res.MethodArgs)}";
            }
            catch(Exception exc)
            {
                return exc.Message.Substring(0, 32);
            }
        }
    }
}
