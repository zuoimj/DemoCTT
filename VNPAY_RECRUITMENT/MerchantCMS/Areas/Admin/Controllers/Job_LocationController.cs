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

namespace VNPRECRUITMENT.Areas.Admin.Controllers
{
    public class Job_LocationController : BaseController
    {
        private VNPAY_RECRUITMENTEntities db = new VNPAY_RECRUITMENTEntities();

        // GET: Admin/Job_Location
        public ActionResult Index(string Location_Name, int? page)
        {
            int pageSize = 10;
            int pageNo = (page ?? 1);
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32));

            //var Location_Name_List = Dbcontext.PROC_LOCATION_NAME_SELECTALL().ToList();
            //ViewBag.Location_Name = Location_Name_List;

            if (string.IsNullOrEmpty(Location_Name))
            {
                Location_Name = "";
            }

            if (page != null)
            {
                pageNo = page.Value;
            }
            ViewBag.CurrentFilter = Location_Name;

            var LstLocation_Job = Dbcontext.PROC_LOCATION_SELECTALL(pageSize, pageNo, totalRow, Location_Name).ToList();
            try
            {
                totalRow.Value = LstLocation_Job[0].TOTALROW;
            }
            catch(Exception)
            {
                totalRow.Value = 0;
            }
            ViewBag.LstLocation_Job = LstLocation_Job;
            ViewBag.totalrow = totalRow.Value;
            ViewBag.pageno = pageNo;
            ViewBag.pagesize = pageSize;


            return View(LstLocation_Job);
        }

        // GET: Admin/Job_Location/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Job_Location job_Location = db.Job_Location.Find(id);
            if (job_Location == null)
            {
                return HttpNotFound();
            }
            return View(job_Location);
        }

        // GET: Admin/Job_Location/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Job_Location/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        public ActionResult Create(string Location_Name, Job_Location job_Location)
        {
            try 
            {
                if(!String.IsNullOrEmpty(Location_Name))
                {
                    var addLocation = Dbcontext.PROC_LOCATION_ADD_NEW(Location_Name);
                }
                else
                {
                    SetAlert("Tên khu vực không được để trống!", "warning");
                    return View();
                }
            }
            catch(Exception)
            {
                SetAlert("Có lỗi khi thêm khu vực", "error");
                return View();

            }
            SetAlert("Thêm khu vực thành công", "success");
            return View();

        }

        // GET: Admin/Job_Location/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Job_Location job_Location = db.Job_Location.Find(id);
            if (job_Location == null)
            {
                return HttpNotFound();
            }
            ViewBag.JOB_ID = new SelectList(db.Jobs, "JOB_ID", "JOB_NAME", job_Location.JOB_ID);
            ViewBag.LOCATION_ID = new SelectList(db.Locations, "LOCATION_ID", "LOCATION_NAME", job_Location.LOCATION_ID);
            return View(job_Location);
        }

        // POST: Admin/Job_Location/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "JOB_ID,LOCATION_ID,ISDELETED")] Job_Location job_Location)
        {
            if (ModelState.IsValid)
            {
                db.Entry(job_Location).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.JOB_ID = new SelectList(db.Jobs, "JOB_ID", "JOB_NAME", job_Location.JOB_ID);
            ViewBag.LOCATION_ID = new SelectList(db.Locations, "LOCATION_ID", "LOCATION_NAME", job_Location.LOCATION_ID);
            return View(job_Location);
        }

        // GET: Admin/Job_Location/Delete/5
        public ActionResult Delete(int? id)
        {
            try
            {
                var searchLocationName = Dbcontext.PROC_LOCATION_SELECT_NAME_ONLY(id).ToList();
                ViewBag.LocationName = searchLocationName[0];
            }
            catch(Exception)
            {
                SetAlert("Lỗi, không tìm thấy khu vực này!", "error");
                return RedirectToAction("Index");  
            }
            return View();
        }

        // POST: Admin/Job_Location/Delete/5
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            try
            {
                var deleteLocation = Dbcontext.PROC_LOCATION_DELETE(id);
            }
            catch(Exception)
            {
                SetAlert("Có lỗi khi xóa khu vực", "error");
                return View();
            }
            
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
