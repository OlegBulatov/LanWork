﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Data;
using System.Security.Cryptography;
using Newtonsoft.Json;
using System.Diagnostics;

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
            string encodedQuery = sClient.GetText(queryId, _userToken);
            if (encodedQuery == null)
                return "Запрос не получен. Проверьте, что вы авторизованы на " + sClient.Endpoint.ListenUri;
                
            try
            {
                string query = Decrypt(encodedQuery, _userToken);
                if (ConnectionString.Contains("Initial Catalog"))
                    DIOS.Common.SqlManager.SqlBrand = DIOS.Common.SqlBrand.MSSqlServer;
                DIOS.Common.SqlManager M = new DIOS.Common.SqlManager(ConnectionString);
                if(dMethod != null)
                    dMethod("executed query #" + QueryNumber++.ToString(), query);
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
            string attr1 = sClient.GetAttrValue(attr_name, item1, _userName);
            string attr2 = sClient.GetAttrValue(attr_name, item2, _userName);
            string TempDirPath = Properties.Settings.Default.TempDir;
            string fileName1 = TempDirPath + item1 + "_" + attr_name + ".txt";
            string fileName2 = TempDirPath + item2 + "_" + attr_name + ".txt";
            File.WriteAllText(fileName1, attr1);
            File.WriteAllText(fileName2, attr2);
            Process proc = new Process();
            proc.StartInfo.FileName = Properties.Settings.Default.CompareProgramPath;
            proc.StartInfo.Arguments = fileName1 + " " + fileName2;
            proc.Start();
        }

        public string EditText(string textId)
        {
            var response = WebOperationContext.Current.OutgoingResponse;
            response.Headers.Add("Access-Control-Allow-Origin", "*");
            string TempDirPath = Properties.Settings.Default.TempDir; //"c:\\Temp\\";
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
            bool uniqueName = Properties.Settings.Default.UseUniqueFileNames;
            if (textToEditObject.attrName == "WordText")
            {
                TempDirPath = Properties.Settings.Default.WordDir;
                uniqueName = true; 
            }
            string fileName = Path.Combine(TempDirPath, (uniqueName ? Guid.NewGuid().ToString() : "entity." + entityId + "." + attrName) + (textToEditObject.attrName == "WordText"? ".html" : ".txt"));
            File.WriteAllText(fileName, textToEdit, System.Text.Encoding.UTF8);
            if (textToEditObject.attrName == "WordText")
            {
                DIOS.WordAdapter.WordDocument doc = new DIOS.WordAdapter.WordDocument();
                doc.NewDocument(fileName);
                doc.Preview();
                return "OK";
            }
            Process proc = new Process();
            proc.StartInfo.FileName = Properties.Settings.Default.EditTextCommand;
            proc.StartInfo.Arguments = fileName;
            proc.Start();
            proc.WaitForExit();
            string result = File.ReadAllText(fileName);
            bool needDelFile = Properties.Settings.Default.DeleteFileAfterSaveOnServer;
            if (result != textToEdit)
            {
                needDelFile = false;
                try
                {
                    result = sClient.SetAttrValue(attrName, entityId, result, _userToken);
                    needDelFile = Properties.Settings.Default.DeleteFileAfterSaveOnServer; //false;// result == "";
                    if (result == "")
                        result = "information saved successfully";
                    if (!string.IsNullOrEmpty(Properties.Settings.Default.AfterSaveCommand))
                    {
                        proc = new Process();
                        proc.StartInfo.FileName = Properties.Settings.Default.AfterSaveCommand;
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
}