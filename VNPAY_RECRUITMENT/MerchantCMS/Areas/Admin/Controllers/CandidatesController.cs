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
    public class CandidatesController : BaseController
    {
        private VNPAY_RECRUITMENTEntities db = new VNPAY_RECRUITMENTEntities();

        // GET: Admin/Candidates
        public ActionResult Index(string Candidate_Name, int? Job_Id, int? Group_Id, int? page, int? status)
        {
            
            var CrF = new DateTime(2016, 1, 1);
            var CrT = DateTime.Now;
            int pageSize = 10;
            int pageNo = (page ?? 1);
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32));


            var LstCandidates= new List<PROC_CV_SELECTALL_Result>();
            //Lấy danh sách phòng ban để dropdownlist
            var GroupList = Dbcontext.PROC_GROUP_SELECTALL(Int32.MaxValue - 1, "", 1, totalRow).ToList();
            ViewBag.GroupList =
                new SelectList(GroupList.Select(m => new { Value = m.GROUP_ID, Text = m.GROUP_NAME }), "Value", "Text");
            //lấy danh sách công việc để dropdownlist

            var JobList = Dbcontext.PROC_JOB_SELECTALL(Int32.MaxValue - 1, 1, totalRow, "", CrF, CrT, 0, 0).ToList();
            ViewBag.JobList = new SelectList(JobList.Select(m => new { Value = m.JOB_ID, Text = m.JOB_NAME }), "Value", "Text");


            if (Candidate_Name == null)
            {
                Candidate_Name = "";
            }
            if(Job_Id == null)
            {
                Job_Id = 0;
            }
            if(Group_Id == null)
            {
                Group_Id = 0;
            }

            if (page != null)
            {
                pageNo = page.Value;
            }
            if(status == null)
            {
                status = 0;
            }
            ViewBag.CurrentFilter = Candidate_Name;
            ViewBag.groupidFilter = Group_Id;
            ViewBag.jobidFilter = Job_Id;
            ViewBag.statusFilter = status;
            ViewBag.pageno = pageNo;
            ViewBag.pagesize = pageSize;

            LstCandidates = Dbcontext.PROC_CV_SELECTALL(pageSize, pageNo, totalRow, Candidate_Name, Job_Id, Group_Id, status).ToList();
            ViewBag.lstCandidates = LstCandidates;
            try 
            {
                totalRow.Value = LstCandidates[0].TOTALROW;
                
            }
            catch(Exception)
            {
                totalRow.Value = 0;
                SetAlert("Dữ liệu không tìm thấy hoặc không tồn tại!", "error");
            }
            ViewBag.totalrow = totalRow.Value;
            return View(LstCandidates);

        }
        // GET: Admin/Candidates/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Candidate candidate = db.Candidates.Find(id);
            if (candidate == null)
            {
                return HttpNotFound();
            }
            return View(candidate);
        }

        // GET: Admin/Candidates/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Candidates/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        

        // GET: Admin/Candidates/Edit/5
        public static int? a;
        public static string filename1;
        public ActionResult Edit(int? id)
        {
            var selectstatus = Dbcontext.PROC_CV_SELECT_STATUS(id).FirstOrDefault();
            if (selectstatus == 1)
            {
                var SeeCV_ChangeStatus = Dbcontext.PROC_CV_UPDATE(id, 5);

            }
            var Candidate_CV = Dbcontext.PROC_CV_SELECTBYID(id).ToList();
            ViewBag.CV = Candidate_CV;
            a = id;
            if (Candidate_CV != null )
            {
                try { 
                string cv_upload = Candidate_CV.ToList().FirstOrDefault().CV_UPLOAD ;
                var dir = new System.IO.DirectoryInfo(Server.MapPath("~/UploadedFiles"));
                if (!String.IsNullOrEmpty(cv_upload)) 
                { 
                    System.IO.FileInfo[] fileNames = dir.GetFiles(cv_upload);
                    ViewBag.Filename = fileNames.FirstOrDefault() ;
                    filename1 = fileNames.FirstOrDefault().ToString();
                }
                    }
                catch(Exception)
                {
                    return View();
                }
            }
            

            return View();
        }
        public FileResult Download(string filename)
        {
            filename = filename1;
            var FileVirtualPath = "~/UploadedFiles/" + filename;
            return File(FileVirtualPath, "application/force-download", Path.GetFileName(FileVirtualPath));
        }
        // POST: Admin/Candidates/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CANDIDATE_ID,CANDIDATE_NAME,SEX,PHONENUMBER,EMAIL,ISDELETED")] Candidate candidate, int? id, int? status)
        {
            id = a;
            var editCV = Dbcontext.PROC_CV_UPDATE(id, status);
            return RedirectToAction("Index");
        }

        // GET: Admin/Candidates/Delete/5
        public ActionResult Delete(int? id)
        {
            try
            {
                var deleteCv = Dbcontext.PROC_CV_DELETEBYID(id);
                SetAlert("Xóa thành công","success");
            }
            catch (Exception e)
            {
                SetAlert("Có lỗi xảy ra, liên hệ kỹ thuật","error");
            }

            return RedirectToAction("Index");
        }

        // POST: Admin/Candidates/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Candidate candidate = db.Candidates.Find(id);
            db.Candidates.Remove(candidate);
            db.SaveChanges();
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
