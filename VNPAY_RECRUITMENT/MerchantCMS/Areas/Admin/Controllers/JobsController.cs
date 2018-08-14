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
    public class JobsController : BaseController
    {
        // GET: Admin/Jobs
        public ActionResult Index(string keyword,int? Location_Name, int? page, string sortOrder, string currentFilter,DateTime? Expired_To, DateTime? Created_From, DateTime? Created_To, int? status, int? groupid, int? id)
        {


            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32)); //tính tổng số dòng có trong danh sách
            var GroupList = Dbcontext.PROC_GROUP_SELECTALL(Int32.MaxValue - 1, "", 1, totalRow).ToList();
            ViewBag.GroupList =
                new SelectList(GroupList.Select(m => new { Value = m.GROUP_ID, Text = m.GROUP_NAME }), "Value", "Text");
            var LocationList = Dbcontext.PROC_LOCATION_SELECTALL(Int32.MaxValue - 1, 1, totalRow, "").ToList();
            ViewBag.LocationList = LocationList;
            int pageSize = 10;
            int pageNo = (page ?? 1);
            //set default
            if (String.IsNullOrEmpty(keyword))
            {
                keyword = "";
            }
            if (groupid == null)
            {
                groupid = 0;
            }
            if (status == null)
            {
                status = 0;
            }
            if (Location_Name == null)
            {
                Location_Name = 0;
            }
            if (page != null)
            {
                pageNo = page.Value;
            }
            ViewBag.CurrentFilter = keyword;

            
            //ViewBag.lstJob = date;
            
            if (Location_Name == 0)
            {
                if(Created_From == null && Created_To == null && Expired_To == null)
                {
                    var lstJob = Dbcontext.PROC_JOB_SELECTALL_BACKEND_WITHOU_DATE(pageSize, pageNo, totalRow, keyword, status, groupid).ToList();
                    ViewBag.lstJob = lstJob;
                    try
                    {
                        totalRow.Value = lstJob[0].TOTALROW;
                    }
                    catch (Exception)
                    {
                        totalRow.Value = 0;
                        SetAlert("Không có dữ liệu", "warning");
                    }
                }
                else if (Created_To == null && Expired_To == null)
                {
                    Created_To = DateTime.MaxValue;
                    Expired_To = DateTime.MaxValue;
                    var lstJob = Dbcontext.PROC_JOB_SELECTALL_BACKEND(pageSize, pageNo, totalRow, keyword, Created_From, Created_To, Expired_To, status, groupid).ToList();
                    ViewBag.lstJob = lstJob;
                    try
                    {
                        totalRow.Value = lstJob[0].TOTALROW;
                    }
                    catch (Exception)
                    {
                        totalRow.Value = 0;
                        SetAlert("Không có dữ liệu", "warning");
                    }
                }
                else if (Created_From == null && Expired_To == null)
                {
                    Created_From = DateTime.MinValue;
                    Expired_To = DateTime.MaxValue;
                    var lstJob = Dbcontext.PROC_JOB_SELECTALL_BACKEND(pageSize, pageNo, totalRow, keyword, Created_From, Created_To, Expired_To, status, groupid).ToList();
                    ViewBag.lstJob = lstJob;
                    try
                    {
                        totalRow.Value = lstJob[0].TOTALROW;
                    }
                    catch (Exception)
                    {
                        totalRow.Value = 0;
                        SetAlert("Không có dữ liệu", "warning");
                    }
                }
                else if(Created_To == null && Created_From == null)
                {
                    Created_To = DateTime.MaxValue;
                    Created_From = DateTime.MinValue;
                    var lstJob = Dbcontext.PROC_JOB_SELECTALL_BACKEND(pageSize, pageNo, totalRow, keyword, Created_From, Created_To, Expired_To, status, groupid).ToList();
                    ViewBag.lstJob = lstJob;
                    try
                    {
                        totalRow.Value = lstJob[0].TOTALROW;
                    }
                    catch (Exception)
                    {
                        totalRow.Value = 0;
                        SetAlert("Không có dữ liệu", "warning");
                    }
                }
                else
                {
                    var lstJob = Dbcontext.PROC_JOB_SELECTALL_BACKEND(pageSize, pageNo, totalRow, keyword, Created_From, Created_To,Expired_To, status, groupid).ToList();
                    ViewBag.lstJob = lstJob;
                    try
                    {
                        totalRow.Value = lstJob[0].TOTALROW;
                    }
                    catch (Exception)
                    {
                        totalRow.Value = 0;
                    }
                }
                
            }
            else
            {
                if (Created_From == null && Created_To == null)
                {
                    var lstJob = Dbcontext.PROC_JOB_SELECTALL_WITH_LOCATION_WITHOUT_DATE(pageSize, pageNo, totalRow, keyword, status, groupid, Location_Name).ToList();
                    ViewBag.lstJob = lstJob;
                    try
                    {
                        totalRow.Value = lstJob[0].TOTALROW;
                    }
                    catch (Exception)
                    {
                        totalRow.Value = 0;
                    }
                }
                else if (Created_To == null && Expired_To == null)
                {
                    Expired_To = DateTime.MaxValue;
                    Created_To = DateTime.MaxValue;
                    var lstJob = Dbcontext.PROC_JOB_SELECTALL_WITH_LOCATION(pageSize, pageNo, totalRow, keyword, Created_From, Created_To,Expired_To, status, groupid, Location_Name).ToList();

                    ViewBag.lstJob = lstJob;
                    try
                    {
                        totalRow.Value = lstJob[0].TOTALROW;
                    }
                    catch (Exception)
                    {
                        totalRow.Value = 0;
                        SetAlert("Không tìm thấy dữ liệu", "error");
                    }
                }
                else if (Created_From == null && Expired_To == null)
                {
                    Created_From = DateTime.MinValue;
                    Expired_To = DateTime.MaxValue;
                    var lstJob = Dbcontext.PROC_JOB_SELECTALL_WITH_LOCATION(pageSize, pageNo, totalRow, keyword, Created_From, Created_To, Expired_To, status, groupid, Location_Name).ToList();
                    ViewBag.lstJob = lstJob;
                    try
                    {
                        totalRow.Value = lstJob[0].TOTALROW;
                    }
                    catch (Exception)
                    {
                        totalRow.Value = 0;
                        SetAlert("Không tìm thấy dữ liệu", "error");
                    }
                }
                else if (Created_From == null && Created_To == null)
                {
                    Created_From = DateTime.MinValue;
                    Created_To = DateTime.MaxValue;
                    var lstJob = Dbcontext.PROC_JOB_SELECTALL_WITH_LOCATION(pageSize, pageNo, totalRow, keyword, Created_From, Created_To, Expired_To, status, groupid, Location_Name).ToList();
                    ViewBag.lstJob = lstJob;
                    try
                    {
                        totalRow.Value = lstJob[0].TOTALROW;
                    }
                    catch (Exception)
                    {
                        totalRow.Value = 0;
                        SetAlert("Không tìm thấy dữ liệu", "error");
                    }
                }
                else
                {
                    var lstJob = Dbcontext.PROC_JOB_SELECTALL_WITH_LOCATION(pageSize, pageNo, totalRow, keyword, Created_From, Created_To, Expired_To, status, groupid, Location_Name).ToList();
                    ViewBag.lstJob = lstJob;
                    try
                    {
                        totalRow.Value = lstJob[0].TOTALROW;
                    }
                    catch (Exception)
                    {
                        totalRow.Value = 0;
                        SetAlert("Không tìm thấy dữ liệu", "error");
                    }
                }
            }
            ViewBag.currentFilter = keyword;
            ViewBag.groupidFilter = groupid;
            ViewBag.statusFilter = status;
            ViewBag.createdfromFilter = Created_From;
            ViewBag.createdtoFilter = Created_To;
            ViewBag.expireddatetoFilter = Expired_To;
            ViewBag.locationFilter = Location_Name;
            ViewBag.totalrow = totalRow.Value;
            ViewBag.pageno = pageNo;
            ViewBag.pagesize = pageSize;
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
        public ActionResult Create()
        {
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32)); //tính tổng số dòng có trong danh sách
            var GroupList = Dbcontext.PROC_GROUP_SELECTALL(Int32.MaxValue - 1, "", 1, totalRow);
            var LocationList = Dbcontext.PROC_LOCATION_SELECTALL(Int32.MaxValue - 1, 1, totalRow, "").ToList();
            ViewBag.LocationList = LocationList;
            ViewBag.GroupList =
                new SelectList(GroupList.Select(m => new { Value = m.GROUP_ID, Text = m.GROUP_NAME }), "Value", "Text");
            return View();
        }

        [HttpPost, ValidateInput(false)]
        public ActionResult Create(Job Job,int? JOB_ID, string[] Location_Name, int? Group_ID, string Job_Name, int? Number, decimal? Salary, DateTime? Created_Date, DateTime? Expired_Date, string Job_Description, int? Status, string image)
        {
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32));
            Created_Date = DateTime.Now;
            var Create_Job = Dbcontext.PROC_JOB_INSERT(Group_ID, Job_Name, Number, Salary, Created_Date, Expired_Date, Job_Description, image,Status);
            var LocationList = Dbcontext.PROC_LOCATION_SELECTALL(Int32.MaxValue - 1, 1, totalRow, "").ToList();
            ViewBag.LocationList = LocationList;
            var Search_JOB_ID = Dbcontext.PROC_JOB_SEARCH_BY_NAME(Job_Name,Group_ID,Created_Date,Number).ToList();
            int a = Search_JOB_ID[0].Value;

            foreach (var item in Location_Name)
            {
                var InsertLocationName = Dbcontext.PROC_LOCATION_INSERT(int.Parse(item),a);
            }
            var GroupList = Dbcontext.PROC_GROUP_SELECTALL(Int32.MaxValue - 1, "", 1, totalRow);

            ViewBag.GroupList =
                new SelectList(GroupList.Select(m => new { Value = m.GROUP_ID, Text = m.GROUP_NAME }), "Value", "Text");
            SetAlert("Thêm dữ liệu thành công", "success");
            return View();
        }
        public static int? groupid;
        public ActionResult Edit(int? id)
        {
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32)); //tính tổng số dòng có trong danh sách
            var GroupList = Dbcontext.PROC_GROUP_SELECTALL(Int32.MaxValue - 1, "", 1, totalRow);
            var LocationList = Dbcontext.PROC_LOCATION_SELECTALL(Int32.MaxValue - 1, 1, totalRow, "").ToList();
            ViewBag.LocationList = LocationList;
            ViewBag.GroupList =
                new SelectList(GroupList.Select(m => new { Value = m.GROUP_ID, Text = m.GROUP_NAME }), "Value", "Text");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var SelectJob = Dbcontext.PROC_JOB_SELECTBYID_BACKEND(id);
            ViewBag.SelectJob = SelectJob;
            return View();
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(string[] Location_Name, int? id, int? Group_ID, string Job_Name, int? Number, decimal? Salary, DateTime? Expired_Date, string Job_Description, int? Status, string image)
        {
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32));
            var SelectJobByID = Dbcontext.PROC_JOB_SELECTBYID(id).ToList();
            var LocationList = Dbcontext.PROC_LOCATION_SELECTALL(Int32.MaxValue - 1, 1, totalRow, "").ToList();
            ViewBag.LocationList = LocationList;
            if (Location_Name != null)
            {
                var DeleteLocationName = Dbcontext.PROC_LOCATION_DELETEBYID(id);
                foreach (var item in Location_Name)
            {
                var InsertLocationName = Dbcontext.PROC_LOCATION_INSERT(int.Parse(item), id);
            }
            }
            if (Group_ID == null)
            {
                var EditJob = Dbcontext.PROC_Job_UPDATE123(id, Job_Name, Number, Salary, Expired_Date, Job_Description, Status,image);
            }
            else
            {
                var EditJob = Dbcontext.PROC_Job_UPDATE(id, Group_ID, Job_Name, Number, Salary, Expired_Date, Job_Description, Status,image);
            }
           
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int? id)
        {
            try
            {
                var DeleteJob = Dbcontext.PROC_JOB_DELETEBYID(id);
                SetAlert("Xóa thành công", "warning");
            }
            catch(Exception)
            {
                SetAlert("Có lỗi khi xóa", "error");
            }
            return RedirectToAction("Index");
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            var DeleteJob = Dbcontext.PROC_JOB_DELETEBYID(id);

            //Group group = db.Groups.Find(id);
            //group.ISDELETED = true;
            ////db.Groups.Remove(group);
            //db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult RefreshJob(int id)
        {
            var RefreshJob = Dbcontext.PROC_REFRESH_JOB(id);
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                Dbcontext.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}