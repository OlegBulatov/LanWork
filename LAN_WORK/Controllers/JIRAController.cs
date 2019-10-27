using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;

namespace LanWork.Controllers
{
    public class JIRAController : Controller
    {
        //
        // GET: /JIRA/

        public ActionResult Index()
        {
            return View();
        }
        public string List(string json_params)
        {
            try
            {
                string token = "T0J1bGF0b3Y6YnJhY2VsZXR0RV8xODEx";
                string url = "http://jira-app-pc:8080/rest/api/2/search?jql=created%3E=%222017/08/01%22and%20project%20=%2010505";
                System.Net.HttpWebRequest req = System.Net.HttpWebRequest.CreateHttp(url);
                req.Method = "GET";
                req.ContentType = "application/json";
                req.Headers.Add("Authorization", "Basic " + token);
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

    }
}
