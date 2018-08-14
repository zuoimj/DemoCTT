using System;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web.Mvc;
using System.Web.Security;
using VNPRECRUITMENT.Areas.Admin.Models;

namespace VNPRECRUITMENT.Areas.Admin.Controllers
{
    public class UserManagerController : BaseController
    {
        /// <summary>
        /// Manhtt
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            try
            {
                var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32));
                var role = Dbcontext.PROC_CMS_ROLES_SELECTALL(1000, 1, totalRow);
                var rspList = role != null ? role.ToList() : null;

                return View(rspList);
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
            }
            return View();
        }

        /// <summary>
        /// Manhtt
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="roleId"></param>
        /// <param name="pageNo"></param>
        /// <returns></returns>
        [Route("user/get-user-list")]
        public JsonResult LoadUserList(string userName, int roleId, int pageNo)
        {
            try
            {
                var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32));
                var model = Dbcontext.PROC_CMS_USERS_SEARCH(userName, roleId, 12, pageNo, totalRow);
                var rspList = model != null ? model.ToList() : null;
                return Json(
                  new
                  {
                      Success = true,
                      TotalRow = totalRow.Value,
                      RspList = rspList
                  });
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                return Json(
                  new
                  {
                      Success = false
                  });
            }
        }

        /// <summary>
        /// @author: @vinhnt@vnpay.vn, 28/12/2015
        /// @desc: add new user
        /// </summary>
        /// <returns></returns>
        public ActionResult AddUser()
        {
            try
            {
                var total = new ObjectParameter("P_TOTALROW", typeof(Int32));
                var roleList = Dbcontext.PROC_CMS_ROLES_SELECTALL(Int32.MaxValue - 1, 1, total);
                ViewData["roleList"] =
                    new SelectList(roleList.Select(m => new { Value = m.ROLE_ID, Text = m.ROLE_NAME }),
                        "Value", "Text");
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                return RedirectToAction("Index");
            }
            return View();
        }

        /// <summary>
        /// Manhtt - udpate
        /// @author: @vinhnt@vnpay.vn, 28/12/2015
        /// Manhtt: Edit
        /// @desc: add new user
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult AddUser(UserViewModel model)
        {
            try
            {
                var encryPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(model.Password, "md5");
                var rs = Dbcontext.PROC_CMS_USERS_INSERT(model.Username, model.Email, "", "", model.Fullname, encryPassword, "1", model.Islockedout, CurrentUser.UserName, model.RoleId);

                if (rs < 1)
                {
                    TempData["RspCode"] = "99";
                    return RedirectToAction("AddUser");
                }
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                TempData["RspCode"] = "99";
                return RedirectToAction("AddUser");
            }
            return RedirectToAction("Index");
        }

        /// <summary>
        /// Manhtt - update again
        /// @author: @vinhnt@vnpay.vn, 28/12/2015
        /// @desc: Update user
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public ActionResult EditUser(int userId)
        {
            try
            {
                var user = Dbcontext.PROC_CMS_USERS_SELECTBYID(userId);
                if (user == null) return View();

                var userFirst = user.FirstOrDefault();

                var total = new ObjectParameter("P_TOTALROW", typeof(Int32));
                var roleList = Dbcontext.PROC_CMS_ROLES_SELECTALL(Int32.MaxValue - 1, 1, total);

                if (roleList == null) return View();

                if (userFirst != null)
                {
                    var roleId = userFirst.ROLE_ID.ToString();

                    ViewData["roleList"] =
                        new SelectList(roleList.Select(m => new { Value = m.ROLE_ID, Text = m.ROLE_NAME }),
                            "Value", "Text", roleId);
                }

                return View(userFirst);
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                return RedirectToAction("Index");
            }

        }

        /// <summary>
        /// Manhtt - update again
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditUser(UserViewModel model)
        {
            try
            {
                var rs = Dbcontext.PROC_CMS_USERS_UPDATE(model.UserId, "", model.Email, model.Fullname, model.Islockedout, model.RoleId);
                if (rs < 1)
                {
                    TempData["RspCode"] = "99";
                    return RedirectToAction("EditUser", new { userId = model.UserId });
                }
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                TempData["RspCode"] = "99";
                return RedirectToAction("EditUser", new { userId = model.UserId });
            }
            return RedirectToAction("Index");
        }

        /// <summary>
        /// Manhtt
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="isLocked"></param>
        /// <returns></returns>
        [Route("user/update-status")]
        public JsonResult UpdateStatus(int userId, string isLocked)
        {
            try
            {
                var rspCode = "";
                var user = Dbcontext.PROC_CMS_USERS_SELECTBYID(userId);
                if (user != null)
                {
                    var statusUpdate = isLocked == "1" ? "0" : "1";
                    var userFirst = user.FirstOrDefault();

                    if (userFirst != null)
                    {
                        var rs = Dbcontext.PROC_CMS_USERS_UPDATE(userId, "", userFirst.EMAIL, userFirst.FULLNAME, statusUpdate, userFirst.ROLE_ID);

                        rspCode = rs < 1 ? "99" : "00";
                    }
                }
                return Json(
                 new
                 {
                     Success = true,
                     RspCode = rspCode
                 });
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                return Json(
                     new
                     {
                         Success = false
                     });
            }
        }

        /// <summary>
        /// Manhtt
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public ActionResult ResetPass(int userId)
        {
            try
            {
                var user = Dbcontext.PROC_CMS_USERS_SELECTBYID(userId);
                if (user == null) return View();

                var userFirst = user.FirstOrDefault();

                return View(userFirst);
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                return RedirectToAction("Index");
            }

        }

        /// <summary>
        /// Manhtt
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult ResetPass(int userId, string password)
        {
            try
            {
                var encryPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "md5");

                var rs = Dbcontext.PROC_CMS_USERS_UPDATE_PASS(userId, encryPassword);

                if (rs < 1)
                {
                    TempData["RspCode"] = "99";
                    return RedirectToAction("ResetPass");
                }

                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                return RedirectToAction("Index");
            }

        }

        public ActionResult ChangePass()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ChangePass(string password, string newpassword)
        {
            try
            {
                var user = Dbcontext.PROC_CMS_USERS_SELECTBYID(CurrentUser.UserId);
                if (user != null)
                {
                    var userFirst = user.FirstOrDefault();
                    var equalPass = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "md5");
                    if (userFirst != null && String.Equals(equalPass.ToLower(), userFirst.PASSWORD.ToLower()))
                    {
                        var encryPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(newpassword, "md5");

                        var rs = Dbcontext.PROC_CMS_USERS_UPDATE_PASS(CurrentUser.UserId, encryPassword);

                        if (rs < 1)
                        {
                            TempData["RspCode"] = "99";
                            return RedirectToAction("ChangePass");
                        }
                        TempData["RspCode"] = "00";
                        return RedirectToAction("ChangePass");
                    }
                    else
                    {
                        TempData["RspCode"] = "97";
                        return RedirectToAction("ChangePass");
                    }
                }
                return RedirectToAction("ChangePass");
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                return RedirectToAction("Index", "Home", new { Area = "Admin" });
            }
        }
    }
}