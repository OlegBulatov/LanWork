using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System.Security.Principal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DIOS.ObjectLib;
using DIOS.BusinessBase;
using DIOS.Common;
using DIOS.Common.Interfaces;
using Newtonsoft.Json;
using System.Collections;
using DIOS.WCF;
using System.Web;

namespace Dios.WCF
{
    public class WcfUtil
    {
        //private static Hashtable _tokenTable;
        //private static Hashtable TokenTable
        //{
        //    get
        //    {
        //        return _tokenTable;
        //    }
        //}

        //public static int UserExists(string login, string password, string token)
        //{
        //    if(TokenTable == null)
        //        _tokenTable = new Hashtable();
        //    if(TokenTable.Contains(token))
        //        return (int)TokenTable[token];
        //    IParameterCollection Params = new ParameterCollection();
        //    Params.Add("@login", login);
        //    Params.Add("@password", password);
        //    ApplicationSqlManager M = new AnonimousAppSqlManager();
        //    int result = M.ExecuteSPWithResult("WCF_USER$Exists", true, Params);
        //    TokenTable[token] = result;
        //    return result;

        //}

        public static bool VerifyUser(string token)
        {
            if (string.IsNullOrEmpty(token))
                return false;
            string sresult = Cryptor.Decrypt(token, GetDefaultPassword());
            try
            {
                object res = JsonConvert.DeserializeObject(sresult, typeof(User)); 
                User U = res as User;
                //                return UserExists(U.Name, U.Password) > 0;
                if(U.ExpirationTime >= DateTime.Now)
                {
                    if (HttpContext.Current != null)
                    {
                        //HttpContext.Current.Response.Cookies.Add(ObjectMethods.GetCookie("UserNameCookie", U.Name, U.ExpirationTime));
                        //HttpContext.Current.Response.Cookies.Add(ObjectMethods.GetCookie("TokenCookie", token, U.ExpirationTime)); 
                        IAuthenticationManager authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                        authenticationManager.SignOut(DefaultAuthenticationTypes.ExternalCookie);
                        //var User = new UserProvider(user_name);
                        var UsrId = new UserIndentity();
                        UsrId.User = U;
                        System.Security.Claims.ClaimsIdentity identity = new System.Security.Claims.ClaimsIdentity(UsrId, null, "ApplicationCookie", null, null);
                        authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, identity);

                    }
                    return true;
                }
                return false;
            }
            catch
            {
                return false;
            }
        }

        public static string GetToken(string name, string password)
        {
            if (UserExists(name, password) <= 0)
                return null;
            User U = new User(name, DateTime.Now.AddDays(7));
            string JS = JsonConvert.SerializeObject(U);
            string token = Cryptor.Encrypt(JS, GetDefaultPassword());
            //string token = System.Web.HttpUtility.UrlEncode(result);
            return token;
        }
        internal static int UserExists(string login, string password)
        {
            Logger.LogStatic("WCF check UserExists");
            IParameterCollection Params = new ParameterCollection();
            Params.Add("login", login);
            Params.Add("password", password);
            WcfAnonimousSqlManager M = null;
            try
            {
                M = new WcfAnonimousSqlManager();
            }
            catch (Exception exc)
            {
                Logger L = new Logger();
                L.LogError(exc.Message);
                throw;
            }
            int exists = 0;
            try
            {
                exists = M.ExecuteSPWithResult("WCF_USER$Exists", true, Params);
            }
            catch (Exception exc)
            {
                Logger.LogStatic(exc.Message);
                throw;
            }
            //if (exists > 0)
            //{
            //    try
            //    {
            //        M.CreateOrUpdateUser(login);
            //    }
            //    catch (Exception exc)
            //    {
            //        Logger.LogStatic(exc.Message);
            //        throw;
            //    }
            //}
            return exists;
        }

        private static string GetDefaultPassword()
        {
            return "#$&78436675f_lldntuhLRGD";
        }

    }

    public class User
    {
        public string Name;
        public DateTime ExpirationTime;

        public User() { }
        public User(string name)
        {
            Name = name;
        }
        public User(string name, DateTime expirationTime)
        {
            Name = name;
            ExpirationTime = expirationTime;
        }
    }

    public class UserIndentity : IIdentity
    {
        public User User { get; set; }

        public string AuthenticationType
        {
            get
            {
                return typeof(User).ToString();
            }
        }

        public bool IsAuthenticated
        {
            get
            {
                return User != null;
            }
        }

        public string Name
        {
            get
            {
                if (User != null)
                {
                    return User.Name;
                }
                //иначе аноним
                return "anonym";
            }
        }

        public void Init(string name)
        {
            if (!string.IsNullOrEmpty(name))
            {
                User = new User(name);
            }
        }
    }

}
