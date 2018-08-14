using System;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using log4net;
using VNPRECRUITMENT.Models;

namespace VNPRECRUITMENT.Controllers
{
    /// <summary>
    /// Manhtt
    /// </summary>
    public class BaseController : Controller
    {
        public static readonly ILog Log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        protected VNPAY_RECRUITMENTEntities Dbcontext;

        public string CurrentLangCode { get; set; }

        private static bool IsValidCultureInfoName(string name)
        {
            return
                CultureInfo
                .GetCultures(CultureTypes.SpecificCultures)
                .Any(c => c.Name == name);
        }

        public BaseController()
        {
            ViewBag.Title = "Vnpayment";
            Dbcontext = new VNPAY_RECRUITMENTEntities();
            if (System.Web.HttpContext.Current.Request.QueryString["lang"] != null)
            {
                if (System.Web.HttpContext.Current.Request.QueryString["lang"] == "cl")
                {
                    HttpRuntime.Cache.Remove("merchant_cms_phrases");
                    HttpRuntime.Cache.Remove("merchant_cms_top_menu");
                    HttpRuntime.Cache.Remove("merchant_cms_footer_menu");
                }

                var isLangValid = IsValidCultureInfoName(System.Web.HttpContext.Current.Request.QueryString["lang"]);
                if (isLangValid)
                {
                    var ci = new CultureInfo(System.Web.HttpContext.Current.Request.QueryString["lang"]);
                    Thread.CurrentThread.CurrentCulture = ci;
                    Thread.CurrentThread.CurrentUICulture = ci;
                    var obj = new HttpCookie("lang") { Value = ci.Name, Expires = DateTime.Now.AddDays(1) };
                    System.Web.HttpContext.Current.Response.Cookies.Add(obj);
                }
            }
            else
            {
                if ((System.Web.HttpContext.Current.Request.Cookies["lang"] != null) &&
                    (System.Web.HttpContext.Current.Request.Cookies["lang"].Value != null))
                {
                    var sLanguage = System.Web.HttpContext.Current.Request.Cookies["lang"].Value;
                    var ci = new CultureInfo(sLanguage);
                    Thread.CurrentThread.CurrentCulture = ci;
                    Thread.CurrentThread.CurrentUICulture = ci;
                }
                else
                {
                    var ci = new CultureInfo("vi-VN");
                    Thread.CurrentThread.CurrentCulture = ci;
                    Thread.CurrentThread.CurrentUICulture = ci;
                }
            }

            CurrentLangCode = Thread.CurrentThread.CurrentCulture.TwoLetterISOLanguageName;
        }
        protected void SetAlert(string Message, string type)
        {
            TempData["AlertMessage"] = Message;
            if (type =="success")
            {
                TempData["AlertType"] = "alert-success";

            }
            else if(type =="warning")
            {
                TempData["AlertType"] = "alert-warning";
            }
            else if(type == "error")
            {
                TempData["AlertType"] = "alert-danger";
            }
        }
    }
}