using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Net;
using PagedList;
using PagedList.Mvc;
using System.Web;
using System.Web.Mvc;
using VNPRECRUITMENT.Models;
using System.Data.SqlClient;


namespace VNPRECRUITMENT.Areas.Admin.Controllers
{
    public class GroupsController : BaseController
    {
        private VNPAY_RECRUITMENTEntities db = new VNPAY_RECRUITMENTEntities();


        // GET: Admin/Groups
        public ActionResult Index(string keyword, int? page, string sortOrder, string currentFilter)
        {

            
            int pageSize = 10;
            int pageNo = (page ?? 1);

            if (page != null)
            {
                pageNo = page.Value;
            }
            ViewBag.CurrentFilter = keyword;


            var lstGroup= new List<PROC_GROUP_SELECTALL_Result>();
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32)); //tính tổng số dòng có trong danh sách
            if (!string.IsNullOrEmpty(keyword))
            {
                lstGroup = Dbcontext.PROC_GROUP_SELECTALL(pageSize, keyword, pageNo, totalRow).ToList();
            }
            else
            {
                lstGroup = Dbcontext.PROC_GROUP_SELECTALL(pageSize, "", pageNo, totalRow).ToList();

            }

            
            ViewBag.lstGroup = lstGroup;

            ViewBag.totalrow = totalRow.Value;
            ViewBag.pageno = pageNo;
            ViewBag.pagesize = pageSize;



            return View(lstGroup);
        }

        // GET: Admin/Groups/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Group group = db.Groups.Find(id);
            if (group == null)
            {
                return HttpNotFound();
            }
            return View(group);
        }

        // GET: Admin/Groups/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Groups/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public ActionResult Create(Group group, string groupname)
        {
            string IsDeleted = "0";
            var CreatGroups = Dbcontext.PROC_GROUPS_INSERT(groupname, IsDeleted);
            SetAlert("Thêm mới thành công", "success");

            return View(group);
        }

        // GET: Admin/Groups/Edit/5
        public ActionResult Edit(int? id)
        {
            var SelectById = Dbcontext.PROC_GROUP_SELECTBYID(id).ToList();

            ViewBag.SelectById = SelectById[0].GROUP_NAME;


            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Group group = db.Groups.Find(id);
            if (group == null)
            {
                return HttpNotFound();
            }
            return View(group);
        }

        
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "GroupID,GroupName,IsDeleted")] Group group, int? id, string groupname)
        {
            try
            {
                var EditGroup = Dbcontext.PROC_GROUPS_UPDATE(id, groupname);
                SetAlert("Chỉnh sửa thành công", "success");
            }
            catch(Exception)
            {
                SetAlert("Xảy ra lỗi", "error");
            }
            
            return RedirectToAction("Index");
        }

        // GET: Admin/Groups/Delete/5
        public ActionResult Delete(int? id)
        {
            try
            {
                
                var DeletedGroup = Dbcontext.PROC_GROUP_DELETEBYID(id);
                SetAlert("Xóa thành công", "warning");
            }
            catch(Exception)
            {
                SetAlert("Có lỗi khi xóa", "error");
            }
            return RedirectToAction("Index");
        }

        // POST: Admin/Groups/Delete/5
        [HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            var DeletedGroup = Dbcontext.PROC_GROUP_DELETEBYID(id);

            //Group group = db.Groups.Find(id);
            //group.ISDELETED = true;
            ////db.Groups.Remove(group);
            //db.SaveChanges();
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
