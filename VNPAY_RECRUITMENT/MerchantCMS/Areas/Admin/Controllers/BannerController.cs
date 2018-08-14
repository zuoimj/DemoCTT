using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using VNPRECRUITMENT.Models;
using System.IO;

namespace VNPRECRUITMENT.Areas.Admin.Controllers
{
    public class BannerController : BaseController
    {
        // GET: Admin/Banner
        public ActionResult Index(int? page)
        {
            int pagesize = 10;
            int pageNo = (page ?? 1);
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32));

            var bannerSelect = Dbcontext.PROC_JOB_SELECTALL_BANNER(pagesize, pageNo, totalRow).ToList();

            try
            {
                totalRow.Value = bannerSelect[0].TOTALROW;
            }
            catch(Exception)
            {
                SetAlert("Dữ liệu không tồn tại", "error");
                totalRow.Value = 0;
            }

            ViewBag.BannerSelectAll = bannerSelect;
            ViewBag.totalrow = totalRow.Value;
            ViewBag.pageno = pageNo;
            ViewBag.pagesize = pagesize;

            return View();
        }

        public ActionResult SetBanner(int? id, bool? status)
        {

            var a = Dbcontext.PROC_JOB_SELECT_BYID_ACTIVE_BANNER(id).FirstOrDefault();

            status = a;

            if (status == false)
            {
                var SetBanner = Dbcontext.PROC_JOB_SET_BANNER(id, 1);
            }
            else
            {
                var SetBanner = Dbcontext.PROC_JOB_SET_BANNER(id, 0);
                
            }

            var b = Dbcontext.PROC_JOB_ACTIVE_BANNER_COUNT().FirstOrDefault();
            int c = int.Parse(b.ToString());
            if (c < 5)
            {
                SetAlert("Cần active tối thiểu 5 banner","warning");
            }
            return RedirectToAction("Index");
        }

        
    }
}