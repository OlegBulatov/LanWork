using System.Data;
using System.Linq;
using System.Web.Mvc;
using LanitWork.Models;


namespace LanitWork.Controllers
{
    public class AccountController : Controller
    {

        [HttpPost]
        public ActionResult Auth(string login, string password)
        {
            string authResult = AccountControllerAdapter.AuthorizeUser(login, password);
            if (authResult == "")
                return RedirectToAction("Index", "Home");
            else
            {
                return Login(0, login, authResult);
            }

        }

        public ActionResult Login(int userid = 0, string login = "", string result = "")
        {
            if (result != "")
                ViewBag.AuthResult = result;
            if (login != "")
            {
                LoginInfo Model = new LoginInfo(login);
                return View("Login", Model);
            }
            return View("Login");

        }

        public ActionResult Logout()
        {
            (new AccountControllerAdapter()).Logout();
            return RedirectToAction("Index", "Home");

        }

        public ActionResult Register()
        {
            return View();

        }

        [HttpPost]
        public ActionResult Register(string login, string password, string name, string email)
        {
            string result = (new AccountControllerAdapter()).Register(login, password, name, email);
            if (result != "")
            {
                ViewBag.ErrorDescr = result;
                return View();
            }
            //return RedirectToAction("Index", "Home");
            return Login(0, login, "Для завершения регистрации следуйте инструкциям в письме.");

        }
    }
}
