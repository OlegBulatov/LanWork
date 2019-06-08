using System.Reflection;
using System.Data;
using System.Linq;
using System.Web.Mvc;
using DIOS.Common.Interfaces;
using DIOS.Common;
using Dersa.Models;
using System.Net.Mail;
using System.Net;

namespace Dersa.Controllers
{
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (!Dersa.Models.User.Exists(System.Web.HttpContext.Current.User.Identity.Name))
                    return RedirectToAction("Login", "Account");
                ViewBag.Login = System.Web.HttpContext.Current.User.Identity.Name;
                return View();
            }
            else
                return RedirectToAction("Login", "Account"); 
		}
        public ActionResult About()
        {
            return View();
        }
        public ActionResult Contact()
        {
            return View();
        }
        public ActionResult LicenceMIT()
        {
            return View();
        }
        public ActionResult LicenceAPACHE()
        {
            return View();
        }

	}
}
