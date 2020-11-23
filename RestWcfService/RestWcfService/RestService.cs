using System;
using System.Text;
using System.IO;
using System.Diagnostics;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Security.Cryptography;
using System.Reflection;
using Newtonsoft.Json;
using DIOS.Common.Interfaces;

namespace RestWcfService
{
    [ServiceContract]
    public interface IRestService
    {
        //[WebGet]
        [WebInvoke(Method = "OPTIONS", UriTemplate= "compare_immediate")]
        [OperationContract]
        void GetOptionsForCompareImmediate();

        [WebInvoke(Method = "OPTIONS", UriTemplate = "exec_code")]
        [OperationContract]
        void GetOptionsForExecCode();

        [WebInvoke(Method = "POST", UriTemplate = "{queryId}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        string ExecuteQuery(string queryId);

        [WebInvoke(Method = "GET", UriTemplate = "username")]
        [OperationContract]
        string GetUserName();

        [WebInvoke(Method = "POST", UriTemplate = "username/{name}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        void SetUserName(string name);

        [WebInvoke(Method = "POST", UriTemplate = "compare/{attr_name}/{itemArr}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        void CompareItems(string attr_name, string itemArr);

        [WebInvoke(Method = "POST", UriTemplate = "compare_immediate", RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        void Compare(string item1, string item2);

        [WebInvoke(Method = "POST", UriTemplate = "compare_immediat", RequestFormat = WebMessageFormat.Xml)]
        [OperationContract]
        void XCompare();

        [WebInvoke(Method = "POST", UriTemplate = "exec_code", RequestFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.WrappedRequest)]
        [OperationContract]
        string ExecCode(string src, string ref_assemblies_json, string class_name, string method_name, string arg);

        [WebInvoke(Method = "POST", UriTemplate = "edit/{textId}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        string EditText(string textId);

        [WebInvoke(Method = "POST", UriTemplate = "wordfile?json_table={json_table}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        byte[] WordFile(string json_table);

        [WebInvoke(Method = "OPTIONS", UriTemplate = "edit/{textId}", RequestFormat = WebMessageFormat.Json)]
        [OperationContract]
        void AllowEditText(string textId);
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

        public void SetCorsHeaders()
        {
            var response = WebOperationContext.Current.OutgoingResponse;
            response.Headers.Add("Access-Control-Allow-Origin", "*");
            response.Headers.Add("Access-Control-Allow-Headers", "*");
        }

        public void GetOptionsForCompareImmediate()
        {
            SetCorsHeaders();
        }

        public void GetOptionsForExecCode()
        {
            SetCorsHeaders();
        }

        public byte[] WordFile(string json_table)
        {
            //DIOS.WordAdapter.WordDocument doc = new DIOS.WordAdapter.WordDocument();
            //DataSet dataSet = new DataSet();
            //DataTable T = JsonConvert.DeserializeObject<DataTable>(json_table);
            //dataSet.Tables.Add(T);
            //string templateName = AppDomain.CurrentDomain.BaseDirectory + "\\TempFiles\\project_solution_template.docx";
            //doc.NewDocument(templateName);
            //doc.SetDataSource(dataSet);
            //string fileName = AppDomain.CurrentDomain.BaseDirectory + "\\TempFiles\\" + Guid.NewGuid().ToString() + ".doc";
            //doc.SaveAs(fileName);
            ////doc.CloseDocument();
            //doc.CloseWord();
            //FileInfo fi = new FileInfo(fileName);
            //System.IO.Stream S = fi.OpenRead();
            //byte[] bts = new byte[S.Length];
            //S.Read(bts, 0, bts.Length);
            //S.Flush();
            //S.Close();
            //return bts;

            byte[] bts = Encoding.Default.GetBytes(json_table);
            return bts;
        }
        public string ExecCode(string src, string ref_assemblies_json, string class_name, string method_name, string arg)
        {
            var response = WebOperationContext.Current.OutgoingResponse;
            response.Headers.Add("Access-Control-Allow-Origin", "*");
            string[] referencedAssemblies = JsonConvert.DeserializeObject<string[]>(ref_assemblies_json);
            System.CodeDom.Compiler.CompilerParameters cp = new System.CodeDom.Compiler.CompilerParameters(referencedAssemblies);
            cp.GenerateInMemory = true;

            cp.OutputAssembly = System.IO.Path.GetTempFileName();

            System.CodeDom.Compiler.ICodeCompiler codeCompiler = new Microsoft.CSharp.CSharpCodeProvider().CreateCompiler();
            System.CodeDom.Compiler.CompilerResults results = codeCompiler.CompileAssemblyFromSource(cp, src);
            if ((results != null) && (results.Output.Count > 0))
            {
                System.Text.StringBuilder errorSb = new System.Text.StringBuilder();
                for (int k = 0; k < results.Output.Count; k++)
                {
                    errorSb.Append(results.Output[k] + "\r\n");
                }
                return errorSb.ToString();
            }
            System.Reflection.Assembly assembly = results.CompiledAssembly;
            try
            {
                System.Type newObjectType = assembly.GetType(class_name);
                MethodInfo mi = newObjectType.GetMethod(method_name);
                return (string)mi.Invoke(null, new object[] { arg });
                //return "method " + method_name + " from class " + class_name + " executed";
            }
            catch(Exception exc)
            {
                return exc.Message;
            }
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
                    string[] QueryExecuteProcedureParams = Properties_Settings_Default.QueryExecuteProcedure.Split('.');
                    M.ExecuteIntMethod(QueryExecuteProcedureParams[0], QueryExecuteProcedureParams[1], Params);
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

        public void XCompare()
        {
            string x = "";
        }
            
        public void Compare(string item1, string item2)
        {
            dynamic jsonObject1 = JsonConvert.DeserializeObject(item1);
            dynamic jsonObject2 = JsonConvert.DeserializeObject(item2);
            var response = WebOperationContext.Current.OutgoingResponse;
            response.Headers.Add("Access-Control-Allow-Origin", "*");
            string TempDirPath = Properties_Settings_Default.TempDir;
            string fileName1 = jsonObject1.id;
            fileName1 = TempDirPath + fileName1 + ".txt";
            string fileName2 = jsonObject2.id;
            fileName2 = TempDirPath + fileName2 + ".txt";
            string text1 = jsonObject1.text;
            File.WriteAllText(fileName1, text1);
            string text2 = jsonObject2.text;
            File.WriteAllText(fileName2, text2);
            Process proc = new Process();
            proc.StartInfo.FileName = Properties_Settings_Default.CompareProgramPath;
            proc.StartInfo.Arguments = fileName1 + " " + fileName2;
            proc.Start();
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

        public void AllowEditText(string textId)
        {
            var response = WebOperationContext.Current.OutgoingResponse;
            response.Headers.Add("Access-Control-Allow-Origin", "*");
            response.Headers.Add("Access-Control-Allow-Headers", "*");
            response.Headers.Add("Access-Control-Allow-Method", "*");

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
