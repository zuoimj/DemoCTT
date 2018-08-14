using System;
using System.Security.Claims;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using log4net;
using System.Data;
using System.Data.Entity;
using VNPRECRUITMENT.Areas.Admin.Models;
using VNPRECRUITMENT.Models;

namespace VNPRECRUITMENT.Areas.Admin.Controllers
{
    [Authorize]
    public class BaseController : Controller
    {
        public static readonly ILog Log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        public VNPAY_RECRUITMENTEntities Dbcontext;

        public CmsUser ClaimUser
        {
            get
            {
                return new CmsUser(User as ClaimsPrincipal);
            }
        }

        public UserModel CurrentUser;

        public BaseController()
        {
            Dbcontext = new VNPAY_RECRUITMENTEntities();
            ViewBag.Title = "Trang chủ";
        }

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            //check Session here
            CurrentUser = new UserModel();
            if (User.Identity.IsAuthenticated)
            {
                var userData = ClaimUser.UserData;

                var serializer = new JavaScriptSerializer();

                if (!String.IsNullOrEmpty(userData))
                {
                    CurrentUser = serializer.Deserialize<UserModel>(userData);
                }
            }
            else
            {
                CurrentUser = null;
            }
            if (CurrentUser == null)
            {
                filterContext.Result = new RedirectResult(Url.Action("Login", "Users"));
            }

            base.OnActionExecuting(filterContext);
        }
        protected void SetAlert(string Message, string type)
        {
            TempData["AlertMessage"] = Message;
            if (type == "success")
            {
                TempData["AlertType"] = "alert-success";

            }
            else if (type == "warning")
            {
                TempData["AlertType"] = "alert-warning";
            }
            else if (type == "error")
            {
                TempData["AlertType"] = "alert-danger";
            }
        }
    }

    public class CmsUser : ClaimsPrincipal
    {
        public CmsUser(ClaimsPrincipal principal)
            : base(principal)
        {
        }

        public string UserData
        {
            get
            {
                var userData = FindFirst(ClaimTypes.UserData);
                return userData == null ? "" : userData.Value;
            }
        }
    }

}