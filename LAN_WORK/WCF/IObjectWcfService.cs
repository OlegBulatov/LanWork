using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Dios.WCF
{
    // ПРИМЕЧАНИЕ. Команду "Переименовать" в меню "Рефакторинг" можно использовать для одновременного изменения имени интерфейса "IObjectWcfService" в коде и файле конфигурации.
    [ServiceContract]
    public interface IObjectWcfService
    {

        [OperationContract]
        string KeyName(string class_name, string token);

        [OperationContract]
        string ExecMethod(string class_name, string method_name, string id, string args, string token);

        [OperationContract]
        string GetUserToken(string name, string password);

        [OperationContract]
        string SetObjectView(string class_name, string json_object, string token);

        [OperationContract]
        string GetObjectView(string className, int id, string token);

        [OperationContract]
        string CreateObject(string class_name, string json_object, string token);

        [OperationContract]
        string DropObject(string class_name, int id, string token);

        [OperationContract]
        byte[] List(string className, string token);

        [OperationContract]
        byte[] ListWithParams(string className, string JsonParams, string token);

        [OperationContract]
        byte[] EmptyList(string className, string token); 

        [OperationContract]
        byte[] PropertiesList(string className, string token);

        [OperationContract]
        string SimpleList(string className, string Where, string Order, int limit, int offset, string token);
    }
}
