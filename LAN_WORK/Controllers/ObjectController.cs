using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LanWork.Models;
using Newtonsoft.Json;

namespace LanWork.Controllers
{
    public class ObjectController : Controller
    {
        //
        // GET: /Object/

        public string List(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            string result = (new ObjectControllerAdapter()).List(class_name, filter, order, limit, offset);
            return result;
        }
        public string PureList(string class_name, string filter = null, string order = "", int limit = -1, int offset = 0)
        {
            string result = (new ObjectControllerAdapter()).List(class_name, filter, order, limit, offset);
            dynamic resultObject = JsonConvert.DeserializeObject(result);

            return resultObject.response_body;
        }

    }
}
