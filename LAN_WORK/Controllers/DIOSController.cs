using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LanWork.Controllers
{
    public class DIOSController : Controller
    {
        //
        // GET: /DIOS/

        public ActionResult Index()
        {
            if (!System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                return RedirectToAction("Login", "Account");
            return View();
        }

    }
}
