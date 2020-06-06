using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Optimization;
using System.Configuration;
using System.Web.Configuration;

namespace LanitWork
{
    // Примечание: Инструкции по включению классического режима IIS6 или IIS7 
    // см. по ссылке http://go.microsoft.com/?LinkId=9394801
    public class LanWorkApplication : System.Web.HttpApplication
    {
        private bool UserIsAuthenticated()
        {
            try
            {
                return System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
            }
            catch
            {
                return true;
            }
        }
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            WebApiConfig.Register(GlobalConfiguration.Configuration);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Configuration configuration = WebConfigurationManager.OpenWebConfiguration("~");
            new DIOS.Common.SqlManagerConfigProvider(configuration, new DIOS.Common.UserIsAuthenticatedMethod(UserIsAuthenticated)); 
        }

        protected void Application_BeginRequest()
        {
            //LanWork.WCF.QueryService.RequestUrl = Request.Url.Host + ":" + Request.Url.Port;
        }
    }
}