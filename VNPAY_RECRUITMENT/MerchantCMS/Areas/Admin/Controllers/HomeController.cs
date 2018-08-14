using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Globalization;
using System.Net;
using PagedList;
using PagedList.Mvc;
using System.Web;
using System.Web.Mvc;
using VNPRECRUITMENT.Models;
using System.Data.SqlClient;
using System.IO;
namespace VNPRECRUITMENT.Areas.Admin.Controllers
{
    public class HomeController : BaseController
    {
        // GET: Admin/Home
        public ActionResult Index()
        {
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32));
            try
            {
                ViewBag.ListCVnew = Dbcontext.PROC_CV_SELECT_DASHBOARD(5, 1, totalRow, "", 0, 0).ToList();
            }
            catch(Exception)
            {
            }
            try
            {
                ViewBag.ListJobNew = Dbcontext.PROC_JOB_SELECTALL_BACKEND_DASHBOARD(5, 1, totalRow).ToList();
            }
            catch(Exception)
            {

            }
            return View();
        }
    }
}