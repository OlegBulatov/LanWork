using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Web;

namespace LanWork.WCF
{
    // ПРИМЕЧАНИЕ. Команду "Переименовать" в меню "Рефакторинг" можно использовать для одновременного изменения имени класса "QueryService" в коде, SVC-файле и файле конфигурации.
    // ПРИМЕЧАНИЕ. Чтобы запустить клиент проверки WCF для тестирования службы, выберите элементы QueryService.svc или QueryService.svc.cs в обозревателе решений и начните отладку.
    public class QueryService : IQueryService
    {
        public static string RequestUrl;
        public static Hashtable QTable = new Hashtable();
        public string GetQueryId(string query, string connectionString)
        {
            Tuple<string, string> queryParams = new Tuple<string, string>(query, connectionString);
            string guid = Guid.NewGuid().ToString();
            QTable.Add(guid, queryParams);
            string result = "http://" + RequestUrl + "/Report/DownloadReportById?id=" + guid;
            return result;
        }
    }
}
