using System;
using System.Collections.Generic;
using System.Linq;
using LanWorkLocal.Models;
using Newtonsoft.Json;
using System.Text;
using System.Threading.Tasks;
using DIOS.BusinessBase;
using System.IO;
using System.Net.Http;
using System.Web.Http;
using System.Net;
using System.Net.Http.Headers;
//using System.Web.Mvc;

namespace LanWorkLocal.Controllers
{
    public class ObjectController : ApiController
    {
        //private HttpResponseMessage GetResponseFromBuffer(string strbuf)
        //{
        //    byte[] content = Encoding.UTF8.GetBytes(strbuf);
        //    Stream S = new MemoryStream(content, 0, content.Length);
        //    HttpResponseMessage M = new System.Net.Http.HttpResponseMessage(System.Net.HttpStatusCode.OK);
        //    M.Content = new StreamContent(S);
        //    return M;

        //    //var outputStream = ((HttpListenerContext)Request.GetOwinEnvironment()["System.Net.HttpListenerContext"]).Response.OutputStream;
        //    //return new HttpResponseMessage(HttpStatusCode.OK)
        //    //{
        //    //    Content = new PushStreamContent(
        //    //            async (stream, httpContent, arg3) =>
        //    //            {
        //    //                await outputStream.WriteAsync(content, 0, content.Length);
        //    //                stream.Close();
        //    //            })
        //    //            {
        //    //                Headers =
        //    //                {
        //    //                    ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("text/html"),
        //    //                    ContentLength = content.Length,
        //    //                }
        //    //            }
        //    //};
        //}
        ////
        // GET: /Object/

        [HttpGet]
        public HttpResponseMessage GetFile(string key, string file_name)
        {
            byte[] content = Encoding.UTF8.GetBytes((new ObjectControllerAdapter()).GetString(key));
            var contentDisposition = new ContentDispositionHeaderValue("attachment");
            contentDisposition.Parameters.Add(new NameValueHeaderValue("filename", file_name));

            var outputStream = ((HttpListenerContext)Request.GetOwinEnvironment()["System.Net.HttpListenerContext"]).Response.OutputStream;
            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new PushStreamContent(
                        async (stream, httpContent, arg3) =>
                        {
                            await outputStream.WriteAsync(content, 0, content.Length);
                            stream.Close();
                        })
                {
                    Headers =
                            {
                                ContentDisposition = contentDisposition,
                                ContentType = new MediaTypeHeaderValue("application/force-download"),
                                ContentLength = content.Length,
                            }
                }
            };
        }

        [HttpGet]
        public IHttpActionResult GetSring(string key)
        {
            return Json((new ObjectControllerAdapter()).GetString(key));
        }

        [HttpPost]
        public IHttpActionResult PutString([FromBody] string value)
        {
            return Json((new ObjectControllerAdapter()).PutString(value));
        }

        [HttpPost]
        public HttpResponseMessage ClientDataAsFile(string file_name, [FromBody] string value)
        {
            byte[] content = Encoding.UTF8.GetBytes(value);
            //Stream S = new MemoryStream(content, 0, content.Length);
            //HttpResponseMessage M = new System.Net.Http.HttpResponseMessage(System.Net.HttpStatusCode.OK);
            //M.Content = new StreamContent(S);
            //return M;

            var contentDisposition = new ContentDispositionHeaderValue("attachment");
            contentDisposition.Parameters.Add(new NameValueHeaderValue("filename", file_name));

            //responseMessage.Content.Headers.ContentType = ContentTypes.ForceDownload;
            //responseMessage.Content.Headers.ContentDisposition = contentDisposition;

            var outputStream = ((HttpListenerContext)Request.GetOwinEnvironment()["System.Net.HttpListenerContext"]).Response.OutputStream;
            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new PushStreamContent(
                        async (stream, httpContent, arg3) =>
                        {
                            await outputStream.WriteAsync(content, 0, content.Length);
                            stream.Close();
                        })
                {
                    Headers =
                            {
                                ContentDisposition = contentDisposition,
                                ContentType = new MediaTypeHeaderValue("application/force-download"),
                                ContentLength = content.Length,
                            }
                }
            };
        }
        [HttpGet]
        public IHttpActionResult GetKeyName(string class_name)
        {
            return Json(class_name.ToLower());
        }
        [HttpGet]
        public IHttpActionResult List(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            return Json((new ObjectControllerAdapter()).List(class_name));
        }
        [HttpGet]
        public IHttpActionResult ColumnsList(string class_name)
        {
            return Json((new ObjectControllerAdapter()).ColumnsList(class_name));
        }
        [HttpGet]
        public IHttpActionResult GetFormModel(string class_name, int form_type)
        {
            return Json((new ObjectControllerAdapter()).GetFormModel(class_name, form_type));
        }

        [HttpPost]
        public string SetFormModel(string class_name, int form_type, [FromBody] string value)
        {
            //, string class_name, int form_type 
            string result = (new ObjectControllerAdapter()).SetFormModel(class_name, form_type, value);
            return result;
        }
        [System.Web.Http.HttpGet]
        public IHttpActionResult PureList(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            IFrontResponse result = (new ObjectControllerAdapter()).List(class_name, filter, order, limit, offset);
            return Json(result.response_body);
        }

        [System.Web.Http.HttpGet]
        public IHttpActionResult VCList(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            return Json((new ObjectControllerAdapter()).List(class_name));
        }

        [System.Web.Http.HttpPost]
        public string Update(string class_name, [FromBody] string json_object, bool overwrite_sync = false)
        {
            string result = (new ObjectControllerAdapter()).Update(class_name, json_object, overwrite_sync);
            return result;
        }

        [System.Web.Http.HttpPost]
        public string Drop(string class_name, int objectid)
        {
            string result = (new ObjectControllerAdapter()).Drop(class_name, objectid);
            return result;
        }


        [System.Web.Http.HttpPost]
        public string Create(string class_name, string json_object)
        {
            string result = (new ObjectControllerAdapter()).Create(class_name, json_object);
            return result;
        }

    }
}
