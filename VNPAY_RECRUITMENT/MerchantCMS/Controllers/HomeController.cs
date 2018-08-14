using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using VNPRECRUITMENT.Models;

namespace VNPRECRUITMENT.Controllers
{
    [Compress]
    public class HomeController : BaseController
    {
        
       
        public ActionResult Index(string keyword, string currentfilter, int? groupid, int? location, int? page)
        {
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32));
            var GroupList = Dbcontext.PROC_GROUP_SELECTALL(Int32.MaxValue - 1, "", 1, totalRow).ToList();
            ViewBag.GroupList =
                new SelectList(GroupList.Select(m => new { Value = m.GROUP_ID, Text = m.GROUP_NAME }), "Value", "Text");
            int pageSize = 10;
            int pageNo = (page ?? 1);

            if (string.IsNullOrEmpty(keyword))
            {
                keyword = "";
            }
            if (groupid == null)
            {
                groupid = 0;
            }

            ViewBag.Select_Banner =
                Dbcontext.PROC_JOB_ACTIVE_BANNER_FRONTEND().ToList();
            if (location == null)
            {
                location = 0;
                var SelectAllJob = Dbcontext.PROC_JOB_SELECTALL_FRONTEND(pageSize, pageNo, totalRow, keyword, groupid);
                ViewBag.SelectJob = SelectAllJob;
            }
            else
            {
                var SelectAllJob = Dbcontext.PROC_JOB_SELECTALL_FRONTEND_FILTER_WITH_LOCATION(pageSize, pageNo, totalRow, keyword, groupid, location);
                ViewBag.SelectJob = SelectAllJob;
            }

            try
            {
                return View();
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                return View();
            }
        }
       
        
    }
}