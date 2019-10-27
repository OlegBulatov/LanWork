using System.Data;
using System.Linq;
using System.Web.Mvc;
using LanitWork.Models;
using System.Web;


namespace LanitWork.Controllers
{
    public class HomeController : Controller
    {

        public ActionResult About()
        {
            return View();

        }

        public ActionResult Contact()
        {
            return View();

        }

        public ActionResult Index()
        {
            //string userName = null;
            //HttpCookie userNameCookie = Request.Cookies["UserNameCookie"];
            //if(userNameCookie != null)
            //    userName = userNameCookie.Value;// M.UserName;
            //            if (!string.IsNullOrEmpty(userName))
            HttpCookie tokenCookie = Request.Cookies["TokenCookie"];
            if (tokenCookie != null && !string.IsNullOrEmpty(tokenCookie.Value))
            {
                return RedirectToAction("Index", "WIB");
                //ViewBag.UserToken = tokenCookie.Value;// Dios.WCF.WcfUtil.GetToken(userName, "tiger");
                //return View();
            }
            //if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            //{
            //    if (!LanitWork.Models.User.Exists(System.Web.HttpContext.Current.User.Identity.Name))
            //        return RedirectToAction("Login", "Account");
            //    ViewBag.Login = System.Web.HttpContext.Current.User.Identity.Name;
            //    return View();
            //}
            else
                return RedirectToAction("Login", "Account");

        }
    }
}
