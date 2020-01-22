using System;
using System.IO;
using System.Diagnostics;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.ServiceModel.Web;
using System.Security.Cryptography;
using Newtonsoft.Json;
using DIOS.Common.Interfaces;

namespace RestWcfService
{
    [ServiceContract]
    public interface IRestService
    {
        //[WebGet]
        [WebInvoke(Method = "OPTIONS", UriTemplate= "?query={query}")]
        [OperationContract]
        void GetOptions(string query);

        [WebInvoke(Method = "POST", UriTemplate = "{queryId}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        string ExecuteQuery(string queryId);

        [WebInvoke(Method = "GET", UriTemplate = "username")]
        [OperationContract]
        string GetUserName();

        [WebInvoke(Method = "GET", UriTemplate = "dersa/{url}")]
        [OperationContract]
        Message ServeProxy(string url);

        [WebInvoke(Method = "POST", UriTemplate = "username/{name}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        void SetUserName(string name);

        [WebInvoke(Method = "POST", UriTemplate = "compare/{attr_name}/{itemArr}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        void CompareItems(string attr_name, string itemArr);

        [WebInvoke(Method = "POST", UriTemplate = "edit/{textId}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        string EditText(string textId);
    }

    public class RestService : IRestService
    {
        public static string ConnectionString;
        public static string ServerURL;
        private static int QueryNumber = 1;
        public static displayMethod dMethod;
        private static string _userName;
        private string _userToken;
        private string Decrypt(string data, string password)
        {
            CryptoStream cs = InternalDecrypt(Convert.FromBase64String(data), password);
            StreamReader sr = new StreamReader(cs);
            return sr.ReadToEnd();
        }

        private byte[] Decrypt(byte[] data, string password)
        {
            BinaryReader br = new BinaryReader(InternalDecrypt(data, password));
            return br.ReadBytes((int)br.BaseStream.Length);
        }
        private CryptoStream InternalDecrypt(byte[] data, string password)
        {
            SymmetricAlgorithm sa = Rijndael.Create();
            ICryptoTransform ct = sa.CreateDecryptor(
                (new PasswordDeriveBytes(password, null)).GetBytes(16),
                new byte[16]);

            MemoryStream ms = new MemoryStream(data);
            return new CryptoStream(ms, ct, CryptoStreamMode.Read);
        }

        public void GetOptions(string query)
        {
            string options = "";
        }

        public Message ServeProxy(string url)
        {
            url = "http://dersa.ru/" + url;
            var request = WebOperationContext.Current.IncomingRequest;
            System.Net.HttpWebRequest req = System.Net.HttpWebRequest.CreateHttp(url);
            req.Method = "GET";
            req.Timeout = 600000;
            //req.CookieContainer = new System.Net.CookieContainer();
            //System.Net.Cookie cookie = new System.Net.Cookie(".AspNet.ApplicationCookie", Request.Cookies[".AspNet.ApplicationCookie"].Value, "/", "localhost");
            //req.CookieContainer.Add(cookie);
            var resp = req.GetResponse();
            var respStream = resp.GetResponseStream();

            string contentType = "text/html; charset=utf-8";
            var response = WebOperationContext.Current.CreateStreamResponse(respStream, contentType);
            return response;
        }

        public string ExecuteQuery(string queryId)
        {
            var response = WebOperationContext.Current.OutgoingResponse;
            response.Headers.Add("Access-Control-Allow-Origin", "*");

            QueryExecuteService.QueryExecuteServiceClient sClient = new QueryExecuteService.QueryExecuteServiceClient();
            sClient.Endpoint.Address = new EndpointAddress(ServerURL);
            if (_userName == null)
                return "Имя пользователя не определено. Проверьте, что вы авторизованы на " + sClient.Endpoint.ListenUri;
            if (_userToken == null)
            {
                _userToken = sClient.GetUserToken(_userName, "*************");
            }
            string queryStruct = sClient.GetText(queryId, _userToken);
            if (queryStruct == null)
                return "Запрос не получен. Проверьте, что вы авторизованы на " + sClient.Endpoint.ListenUri;
                
            try
            {
                dynamic queryStructDecoded = JsonConvert.DeserializeObject(Decrypt(queryStruct, _userToken));
                string query = queryStructDecoded.query_text;
                int dersaEntity = Convert.ToInt32(queryStructDecoded.dersa_entity);
                string objectName = queryStructDecoded.object_name;
                string objectType = queryStructDecoded.object_type;
                if (ConnectionString.Contains("Initial Catalog"))
                    DIOS.Common.SqlManager.SqlBrand = DIOS.Common.SqlBrand.MSSqlServer;
                DIOS.Common.SqlManager M = new DIOS.Common.SqlManager(ConnectionString);
                if(dMethod != null)
                    dMethod("execute query #" + QueryNumber++.ToString(), query);
                if (Properties_Settings_Default.QueryExecuteProcedure != "")
                {
                    IParameterCollection Params = new DIOS.Common.ParameterCollection();
                    Params.Add("dersa_entity", dersaEntity);
                    Params.Add("changer", _userName);
                    Params.Add("object_name", objectName);
                    Params.Add("object_type", objectType);
                    Params.Add("new_ddl", query);
                    M.ExecuteSPWithResult(Properties_Settings_Default.QueryExecuteProcedure, false, Params);
                }
                return M.ExecMultiPartSql(query); // "ExecuteQuery " + query;
            }
            catch(Exception exc)
            {
                return "Запрос не сформировался. Проверьте, что вы авторизованы на " + sClient.Endpoint.ListenUri + "\n Ошибка: " + exc.Message;
            }
        }

        public string GetUserName()
        {
            return _userName;
        }

        public static void SetUserNameExt(string name)
        {
            //_userToken = null;
            _userName = name;
        }

        public void SetUserName(string name)
        {
            _userToken = null;
            _userName = name;
        }

        public void CompareItems(string attr_name, string itemArrJson)
        {
            string[] itemArr = JsonConvert.DeserializeObject<string[]>(itemArrJson);
            string item1 = itemArr[0];
            string item2 = itemArr[1];
            var response = WebOperationContext.Current.OutgoingResponse;
            response.Headers.Add("Access-Control-Allow-Origin", "*");
            QueryExecuteService.QueryExecuteServiceClient sClient = new QueryExecuteService.QueryExecuteServiceClient();
            sClient.Endpoint.Address = new EndpointAddress(ServerURL);
            if (_userToken == null)
            {
                _userToken = sClient.GetUserToken(_userName, "*************");
            }
            string attr1 = sClient.GetAttrValue(attr_name, item1, _userToken);
            string attr2 = sClient.GetAttrValue(attr_name, item2, _userToken);
            string TempDirPath = Properties_Settings_Default.TempDir;
            string fileName1 = TempDirPath + item1 + "_" + attr_name + ".txt";
            string fileName2 = TempDirPath + item2 + "_" + attr_name + ".txt";
            File.WriteAllText(fileName1, attr1);
            File.WriteAllText(fileName2, attr2);
            Process proc = new Process();
            proc.StartInfo.FileName = Properties_Settings_Default.CompareProgramPath;
            proc.StartInfo.Arguments = fileName1 + " " + fileName2;
            proc.Start();
        }

        public string EditText(string textId)
        {
            var response = WebOperationContext.Current.OutgoingResponse;
            response.Headers.Add("Access-Control-Allow-Origin", "*");
            string TempDirPath = Properties_Settings_Default.TempDir; //"c:\\Temp\\";
            QueryExecuteService.QueryExecuteServiceClient sClient = new QueryExecuteService.QueryExecuteServiceClient();
            sClient.Endpoint.Address = new EndpointAddress(ServerURL);
            if (_userToken == null)
            {
                _userToken = sClient.GetUserToken(_userName, "*************"); 
            }
            string textToEditJSON = sClient.GetText(textId, _userToken);
            dynamic textToEditObject = JsonConvert.DeserializeObject(textToEditJSON);
            string textToEdit = textToEditObject.attrValue;
            textToEdit = textToEdit
                .Replace("\r", "")
                .Replace("\n", "\r\n");
            string attrName = textToEditObject.attrName;
            string entityId = "-";
            try
            {
                entityId = textToEditObject.entityId.ToString();
            }
            catch { }
            bool uniqueName = Properties_Settings_Default.UseUniqueFileNames;
            if (attrName == "WordText")
            {
                TempDirPath = Properties_Settings_Default.WordDir;
                uniqueName = true; 
            }
            string fileExtension = textToEditObject.fileExtension; //".sql";
            //if(attrName == "Code" || attrName == "Text")
            //    fileExtension = ".cs";
            //else if (attrName == "WordText")
            //    fileExtension = ".html";
            string fileName = Path.Combine(TempDirPath, (uniqueName ? Guid.NewGuid().ToString() : "entity." + entityId + "." + attrName) + fileExtension);
            File.WriteAllText(fileName, textToEdit, System.Text.Encoding.UTF8);
            if (attrName == "WordText")
            {
                DIOS.WordAdapter.WordDocument doc = new DIOS.WordAdapter.WordDocument();
                doc.NewDocument(fileName);
                doc.Preview();
                return "OK";
            }
            Process proc = new Process();
            string complexCommand = Properties_Settings_Default.EditTextCommand;
            string editTextCommand = complexCommand;
            string commandArgs = fileName;
            if (complexCommand.Contains(" "))
            {
                string[] complexCommandParts = complexCommand.Split(' ');
                editTextCommand = complexCommandParts[0];
                for(int i = complexCommandParts.Length - 1; i > 0 ; i--)
                {
                    commandArgs = complexCommandParts[i] + " " + commandArgs;
                }
            }
            proc.StartInfo.FileName = editTextCommand;
            proc.StartInfo.Arguments = commandArgs;
            proc.Start();
            proc.WaitForExit();
            string result = File.ReadAllText(fileName);
            bool needDelFile = Properties_Settings_Default.DeleteFileAfterSaveOnServer;
            if (result != textToEdit)
            {
                needDelFile = false;
                try
                {
                    result = sClient.SetAttrValue(attrName, entityId, result, _userToken);
                    needDelFile = Properties_Settings_Default.DeleteFileAfterSaveOnServer; //false;// result == "";
                    if (result == "")
                        result = "information saved successfully";
                    if (!string.IsNullOrEmpty(Properties_Settings_Default.AfterSaveCommand))
                    {
                        proc = new Process();
                        proc.StartInfo.FileName = Properties_Settings_Default.AfterSaveCommand;
                        proc.Start();
                    }

                }
                catch (Exception exc)
                {
                    result = exc.Message;
                }
            }
            else
                result = "information was not changed";

            if (needDelFile)
                File.Delete(fileName);
            return result;
        }

    }

    public class DCServiceClass : IRestServiceClass
    {
        public string ServerURL
        {
            get
            {
                return RestService.ServerURL;
            }
            set
            {
                RestService.ServerURL = value;
            }
        }
        public string ConnectionString
        {
            get
            {
                return RestService.ConnectionString;
            }
            set
            {
                RestService.ConnectionString = value;
            }
        }
        public displayMethod dMethod
        {
            get
            {
                return RestService.dMethod;
            }
            set
            {
                RestService.dMethod = value;
            }
        }
        public void SetUserNameExt(string userName)
        {
            RestService.SetUserNameExt(userName);
        }
        public Type serviceType
        {
            get
            {
                return typeof(RestService);
            }
        }
    }
}
