using System.Data;
using System.Linq;
using System.Web.Mvc;
using LanitWork.Models;
using DIOS.Common;
using DIOS.Common.Interfaces;
using Newtonsoft.Json;
using System.IO;
using System;
using DIOS.BusinessBase;
using System.Data.OleDb;
//using LanWork.WCF;

namespace LanitWork.Controllers
{
    public class ReportController : Controller
    {
        public ActionResult JIRA_ISSUE_INFO(string code, string subject, string description, string solution)
        {
            ViewBag.code = code;
            ViewBag.subject = subject;
            ViewBag.description = description;
            ViewBag.solution = solution;
            return View();
        }

        [HttpOptions]
        public void CreateJiraIssue()
        {
            Response.Headers.Add("Access-Control-Allow-Origin", Request.Headers["Origin"].ToString()); //"http://localhost:12663"); 
            Response.Headers.Add("Access-Control-Allow-Headers", "*");
            Response.Headers.Add("Access-Control-Allow-Method", "*");
        }
        [HttpPost]
        public string CreateJiraIssue(string token, string sbody)
        {
            Response.Headers.Add("Access-Control-Allow-Origin", "*");
            //return sbody;
            try
            {
                string url = "http://jira-app-pc:8080/rest/api/2/issue";
                System.Net.HttpWebRequest req = System.Net.HttpWebRequest.CreateHttp(url);
                req.Method = "POST";
                req.ContentType = "application/json";
                req.Headers.Add("Authorization", "Basic " + token);
                //var body = new
                //{
                //    fields = new
                //    {
                //        project = new
                //        {
                //            id = 10505
                //        },
                //        summary = summary,
                //        issuetype = new
                //        {
                //            id = 10200
                //        }
                //    }
                //};
                //string sbody = JsonConvert.SerializeObject(body);
                Stream S = req.GetRequestStream();
                StreamWriter SW = new StreamWriter(S, System.Text.Encoding.UTF8);
                SW.Write(sbody);
                SW.Flush();
                //byte[] ibytes = System.Text.Encoding.UTF8.GetBytes(sbody);
                //S.Write(ibytes, 0, ibytes.Length);

                //                Stream S = req.GetRequestStream();
                //                byte[] ibytes = new byte[Request.InputStream.Length];
                //                Request.InputStream.Read(ibytes, 0, ibytes.Length);
                //                S.Write(ibytes, 0, ibytes.Length);
                var resp = req.GetResponse();
                var respStream = resp.GetResponseStream();
                var SR = new System.IO.StreamReader(respStream);
                return SR.ReadToEnd();
                //                byte[] rbytes = new byte[respStream.Length];
                //                respStream.Read(rbytes, 0, rbytes.Length);
                //                return System.Text.Encoding.Default.GetString(rbytes);
            }
            catch (Exception exc)
            {
                return exc.Message;
            }
        }
        public string JiraReport(string query)
        {
            var builder = new OleDbConnectionStringBuilder
            {
                ["Data Source"] = "",//AESEncryption.DecryptStringAES("EAAAAHsokOFo2XQ/gf9aHrwX3FphVWcl37a3HYgpYOQk2TSj"),
                ["Initial Catalog"] = "",//AESEncryption.DecryptStringAES("EAAAAEuIlAK+2Jb362mzB2Bq3xjs0D4W75x4jSARuv3XbbiA"),
                ["User Id"] = "",//AESEncryption.DecryptStringAES("EAAAAOonV+1ZHziI1ii0aD/EfGRMw1DHyOD1QAqVIfvqyu9+"),
                ["Password"] = ""//AESEncryption.DecryptStringAES("EAAAAMJWrhg9MZRABhGtVsI3gdgi4JLAznEwLDix3NV+Lapt")
            };
            string connectionString = builder.ConnectionString;
            SqlManager.SqlBrand = SqlBrand.MSSqlServer;
            SqlManager M = new SqlManager(connectionString);
            SqlManager.SqlBrand = SqlBrand.ORACLE;
            try
            {
                DataTable T = M.ExecSql(query);
                return JsonConvert.SerializeObject(T);
            }
            catch(Exception exc)
            {
                return exc.Message;
            }
        }

        public ActionResult LogTable()
        {
            System.Data.DataTable T = new System.Data.DataTable();
            if (Logger.LogTable != null)
            {
                object[] valArray = new object[Logger.LogTable.Keys.Count];
                int i = 0;
                foreach (object key in Logger.LogTable.Keys)
                {
                    valArray[i++] = Logger.LogTable[key];
                }
                string logTable = JsonConvert.SerializeObject(valArray);
                T = JsonConvert.DeserializeObject(logTable, typeof(System.Data.DataTable)) as System.Data.DataTable;
                DataView dv = T.DefaultView;
                if (T.Columns.Contains("occur"))
                    dv.Sort = "occur Asc";
                T = dv.ToTable().Copy();
            }
            return View("Table", T);
        }

        //public void DownloadReport(string class_name, string parameters)
        //{
        //    class_name = class_name.Replace(".xlsx", "");
        //    IParameterCollection Params = Util.DeserializeParams(parameters);
        //    string Where = Params == null? "" : " where " + Params.GetWhere();
        //    string query = "select * from " + class_name + Where;
        //    string fileName = "report_" + class_name + ".csv";
        //    MakeDownloadResponse(query, null, fileName);
        //}

        //[HttpGet]
        //public void DownloadReportById(string id, string fileName)
        //{
        //    id = id.Replace(".xlsx", "");
        //    object qObj = QueryService.QTable[id];
        //    if (qObj != null && qObj is Tuple<string, string>)
        //    {
        //        Tuple<string, string> queryParams = qObj as Tuple<string, string>;
        //        string query = queryParams.Item1.ToString();
        //        if (fileName == null)
        //            fileName = id + ".csv";
        //        MakeDownloadResponse(query, queryParams.Item2, fileName);
        //    }
        //}

        //private void MakeDownloadResponse(string query, string connectionString, string fileName)
        //{
        //    try
        //    {
        //        Response.ContentType = "application/force-download; charset =windows-1251";
        //        string Header = "Filename=" + fileName;  //Attachment; 
        //        Response.AppendHeader("Content-Disposition", Header);

        //        SqlManager M = new WcfAnonimousSqlManager();
        //        if(connectionString != null)
        //            M = new SqlManager(connectionString);
        //        StreamWriter SW = null;
        //        //MemoryStream S = new MemoryStream();
        //        //SW = new StreamWriter(S);
        //        SW = new StreamWriter(Response.OutputStream, System.Text.Encoding.Default);
        //        M.ExecSqlToStream(query, SW, null);
        //        SW.Close();
        //        //string result = System.Text.Encoding.UTF8.GetString(S.ToArray());
        //        //byte[] btres = System.Text.Encoding.Default.GetBytes(result);
        //        //Response.AppendHeader("Content-Length", btres.Length.ToString());
        //        //Response.OutputStream.Write(btres, 0, btres.Length);
        //        Response.End();
        //    }
        //    catch (Exception exc)
        //    {
        //        Response.OutputStream.Flush();
        //        Response.OutputStream.Close();
        //        Response.ContentType = "TEXT/HTML";
        //        Response.ClearHeaders();
        //        Response.Write(exc.Message);
        //    }
        //}

        public ActionResult Report(string proc_name, string parameters)
        {
            WcfSqlManager M = new WcfSqlManager();
            IParameterCollection Params = Util.DeserializeParams(parameters);
            if (Params.Contains("proc_name"))
            {
                proc_name = Params["proc_name"].Value.ToString();
                Params.Remove("proc_name");
                System.Data.DataTable T = M.ExecuteMethod("REPORT", proc_name, Params);
                return View(T);
            }
            else
                throw new System.Exception("procedure for report is not defined!");
        }

        public ActionResult Table(string table_name, string db_name = null, string order = null)
        {
            if (table_name.Contains(";") || table_name.Contains("--") || table_name.Contains(" "))
                return null;
            WcfSqlManager M = new WcfSqlManager();
            if (db_name != null)
                M.SetDatabaseName(db_name);
            string query = string.Format("select top 1000 * from {0}(nolock)", table_name);
            if (!string.IsNullOrEmpty(order))
            {
                order = order.Replace(" desc", "____desc");
                if (order.Contains(";") || order.Contains("--") || order.Contains(" "))
                    return null;
                order = order.Replace("____desc", " desc");
                query += (" order by " + order);
            }
            System.Data.DataTable T = M.ExecSql(query, null, true);//.GetSqlObject(table_name, "", 1000);//ObjectMethods.ExecProc("REPORT$WorkplaceList");
            return View(T);

        }
    }
}
