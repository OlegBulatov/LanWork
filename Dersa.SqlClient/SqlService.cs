using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Dersa.SqlClient
{
    public delegate void NotifyParentForm(string shortStatus, string longStatus);
    // ПРИМЕЧАНИЕ. Команду "Переименовать" в меню "Рефакторинг" можно использовать для одновременного изменения имени класса "SqlService" в коде и файле конфигурации.
    public class SqlService : ISqlService
    {
        private static int QueryNumber = 1;
        private static NotifyParentForm _notifyMethod;
        public static void SetNotifyMethod(NotifyParentForm notifyMethod)
        {
            _notifyMethod = notifyMethod;
        }
        [WebInvoke(Method = "GET")]
        public void GetOptions()
        {
            // Заголовки обработаются в EnableCorsMessageInspector 
            AddCorsHeaders();
        }

        [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        public string ExecuteQuery(string ConnectionString, string Query)
        {
            AddCorsHeaders();
            string result = "executed query #" + QueryNumber++.ToString();
            if (_notifyMethod != null)
                _notifyMethod(result, Query);
            return result;
        }

        private void AddCorsHeaders()
        {
            var allowedOrigins = new[] { "http://foo.example", "http://bar.example" };
            var request = WebOperationContext.Current.IncomingRequest;
            var response = WebOperationContext.Current.OutgoingResponse;
            var origin = request.Headers["Origin"];

            //if (origin != null && allowedOrigins.Any(x => x == origin))
            //{
                response.Headers.Add("Access-Control-Allow-Origin", "*");
                response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
                response.Headers.Add("Access-Control-Allow-Headers", "Content-Type, X-Requested-With");
                response.Headers.Add("Access-Control-Allow-Credentials", "true");
                //if (request.HttpMethod == "OPTIONS")
                //{
                //    response.End();
                //}
            //}
        }

    }
}
