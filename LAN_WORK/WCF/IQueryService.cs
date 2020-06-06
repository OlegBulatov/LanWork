using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace LanWork.WCF
{
    // ПРИМЕЧАНИЕ. Команду "Переименовать" в меню "Рефакторинг" можно использовать для одновременного изменения имени интерфейса "IQueryService" в коде и файле конфигурации.
    [ServiceContract]
    public interface IQueryService
    {
        [OperationContract]
        string GetQueryId(string query, string connectionString);

        [OperationContract]
        string GetWordDataset(string id);
    }
}
