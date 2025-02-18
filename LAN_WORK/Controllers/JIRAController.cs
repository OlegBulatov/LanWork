﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using Newtonsoft.Json;
using DIOS.Common.Interfaces;
using DIOS.Common;
using DIOS.ObjectLib;
using DIOS.BusinessBase;
using DIOS.Lanit;

namespace LanWork.Controllers
{
    public class JIRAController : Controller
    {
        //
        // GET: /JIRA/
        [HttpPost]
        public string SetIssueSolution(string sbody)
        {
            Response.Headers.Add("Access-Control-Allow-Origin", "*");
            string token = "T0J1bGF0b3Y6YnJhY2VsZXR0RV8xODEx";
            try
            {
                dynamic jsonObj = JsonConvert.DeserializeObject(sbody);
                string url = "http://drpo-jira/rest/api/2/issue/" + jsonObj.code;
                System.Net.HttpWebRequest req = System.Net.HttpWebRequest.CreateHttp(url);
                req.Method = "PUT";
                req.ContentType = "application/json";
                req.Headers.Add("Authorization", "Basic " + token);
                Stream S = req.GetRequestStream();
                StreamWriter SW = new StreamWriter(S, System.Text.Encoding.UTF8);
                SW.Write(jsonObj.body);
                SW.Flush();
                var resp = req.GetResponse();
                var respStream = resp.GetResponseStream();
                var SR = new System.IO.StreamReader(respStream);
                return SR.ReadToEnd();
            }
            catch (Exception exc)
            {
                return exc.Message;
            }
        }
        public string SetIssueSolutionOld(string sbody)
        {
            Response.Headers.Add("Access-Control-Allow-Origin", "*");
            string token = "T0J1bGF0b3Y6YnJhY2VsZXR0RV8xODEx";
            try
            {
                dynamic jsonObj = JsonConvert.DeserializeObject(sbody);
                string url = "http://jira-app-pc:8080/rest/api/2/issue/" + jsonObj.code;
                System.Net.HttpWebRequest req = System.Net.HttpWebRequest.CreateHttp(url);
                req.Method = "PUT";
                req.ContentType = "application/json";
                req.Headers.Add("Authorization", "Basic " + token);
                Stream S = req.GetRequestStream();
                StreamWriter SW = new StreamWriter(S, System.Text.Encoding.UTF8);
                SW.Write(jsonObj.body);
                SW.Flush();
                var resp = req.GetResponse();
                var respStream = resp.GetResponseStream();
                var SR = new System.IO.StreamReader(respStream);
                return SR.ReadToEnd();
            }
            catch (Exception exc)
            {
                return exc.Message;
            }
        }
        public ActionResult Index()
        {
            return View();
        }

        public string List(string json_params)
        {
            IParameterCollection Params = Util.DeserializeParams(json_params);
            IObjectCollection result = JiraIssue.List(Params, 0);
            return JsonConvert.SerializeObject(result);
            //try
            //{
            //    string token = "T0J1bGF0b3Y6YnJhY2VsZXR0RV8xODEx";
            //    string url = "http://jira-app-pc:8080/rest/api/2/search?jql=created%3E=%222017/08/01%22and%20project%20=%2010505";
            //    System.Net.HttpWebRequest req = System.Net.HttpWebRequest.CreateHttp(url);
            //    req.Method = "GET";
            //    req.ContentType = "application/json";
            //    req.Headers.Add("Authorization", "Basic " + token);
            //    var resp = req.GetResponse();
            //    var respStream = resp.GetResponseStream();
            //    var SR = new System.IO.StreamReader(respStream);
            //    return SR.ReadToEnd();
            //}
            //catch (Exception exc)
            //{
            //    return exc.Message;
            //}
        }

        public string Update(string json_object)
        {
            return JiraIssue.Update(json_object);
        }

    }
}
