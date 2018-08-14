using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using System.Web.Security;
using log4net;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using VNPRECRUITMENT.Areas.Admin.Models;
using VNPRECRUITMENT.Models;

namespace VNPRECRUITMENT.Areas.Admin.Controllers
{
    public class UsersController : Controller
    {
        readonly VNPAY_RECRUITMENTEntities _dbcontext = new VNPAY_RECRUITMENTEntities();

        public static readonly ILog Log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        /// <summary>
        /// Author: Manhtt
        /// Date: 12/25/2015
        /// </summary>
        /// <returns></returns>
        public ActionResult Login()
        {
            return View();
        }

        /// <summary>
        /// Author:Manhtt
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Login(string username, string password)
        {
            try
            {
                var encryPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "md5");
                var user = _dbcontext.PROC_CMS_USER_LOGIN(username, encryPassword).FirstOrDefault();

                if (user != null)
                {
                    var model = new UserModel();
                    model.UserName = user.USERNAME;
                    model.FullName = user.FULLNAME;
                    model.UserId = user.USER_ID;
                    model.UserIp = System.Web.HttpContext.Current.Request.UserHostAddress;
                    model.RoleId = user.ROLE_ID;
                    model.LoginDate = DateTime.Now;

                    var serializer = new JavaScriptSerializer();
                    var userData = serializer.Serialize(model);
                    var claims = new List<Claim>();
                    claims.Add(new Claim(ClaimTypes.UserData, userData));
                    var claimsIdentity = new ClaimsIdentity(claims, DefaultAuthenticationTypes.ApplicationCookie);
                    AuthenticationManager.SignOut(DefaultAuthenticationTypes.ExternalCookie);
                    AuthenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = true }, claimsIdentity);
                    HttpContext.User = new ClaimsPrincipal(AuthenticationManager.AuthenticationResponseGrant.Principal);
                }
                else
                {
                    TempData["RspCode"] = "99";
                    return RedirectToAction("Login");
                }

                return RedirectToAction("Index", "Home");
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                TempData["Message"] = "Tên đăng nhập hoặc mật khẩu không đúng";
                return RedirectToAction("Login");
            }
           
        }

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }

        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            AuthenticationManager.SignOut();
            Session.Abandon();
            return RedirectToAction("Login");
        }
    }
}