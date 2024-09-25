using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Web;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace DersaClientService
{
    [ServiceContract]
    public interface IRestService
    {
        //[WebGet]
        [WebInvoke(Method = "GET", UriTemplate = "module/{module_name}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        string LaunchModule(string module_name);

        [WebInvoke(Method = "OPTIONS", UriTemplate = "{queryId}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        void AllowExecuteQuery(string queryId);

        [WebInvoke(Method = "POST", UriTemplate = "{queryId}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        string ExecuteQuery(string queryId);

        [WebInvoke(Method = "GET", UriTemplate = "username")]
        [OperationContract]
        string GetUserName();

        [WebInvoke(Method = "GET", UriTemplate = "setusername/{name}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        void SetUserName(string name);

        [WebInvoke(Method = "OPTIONS", UriTemplate = "setusertoken")]
        [OperationContract]
        void AllowSetToken();

        [WebInvoke(Method = "POST", UriTemplate = "setusertoken", RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        string SetUserToken(string name, string token);

        [WebInvoke(Method = "POST", UriTemplate = "compare/{attr_name}/{itemArr}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        void CompareItems(string attr_name, string itemArr);

        [WebInvoke(Method = "OPTIONS", UriTemplate = "compare_immediate")]
        [OperationContract]
        void AllowCompare();

        [WebInvoke(Method = "POST", UriTemplate = "compare_immediate", RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        void Compare(string item1, string item2);

        [WebInvoke(Method = "OPTIONS", UriTemplate = "sql_immediate")]
        [OperationContract]
        void AllowSqlImmediate();

        [WebInvoke(Method = "POST", UriTemplate = "sql_immediate", RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        string SqlImmediate(string sqlStruct);

        [WebInvoke(Method = "OPTIONS", UriTemplate = "exec_code")]
        [OperationContract]
        void AllowExecCode();

        [WebInvoke(Method = "POST", UriTemplate = "exec_code", RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        string ExecCode(string src, string ref_assemblies_json, string class_name, string method_name, string arg);

        [WebInvoke(Method = "OPTIONS", UriTemplate = "edit/{textId}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        void AllowEditText(string textId);

        [WebInvoke(Method = "POST", UriTemplate = "edit/{textId}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        string EditText(string textId);

        [WebInvoke(Method = "POST", UriTemplate = "wordfile?json_table={json_table}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        byte[] WordFile(string json_table);
    }
}
