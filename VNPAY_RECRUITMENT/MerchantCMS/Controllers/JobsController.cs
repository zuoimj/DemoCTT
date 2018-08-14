using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using VNPRECRUITMENT.Models;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Threading;
using System.Configuration;
using System.Net.Mime;
using System.Net.Configuration;
using System.Text;

namespace VNPRECRUITMENT.Controllers
{
    public class JobsController : BaseController
    {
        // GET: Jobs
        public ActionResult Index(string keyword, string currentfilter, int? groupid, int? location, int? page)
        {
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32));
            var GroupList = Dbcontext.PROC_GROUP_SELECTALL(Int32.MaxValue - 1, "", 1, totalRow).ToList();
            ViewBag.GroupList =
                new SelectList(GroupList.Select(m => new { Value = m.GROUP_ID, Text = m.GROUP_NAME }), "Value", "Text");
            ViewBag.LocationList = Dbcontext.PROC_LOCATION_SELECTALL(Int32.MaxValue - 1, 1, totalRow, "");
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

            //khu vực hiển thị danh sách công việc
            if (location == null || location == 0)
            {
                location = 0;
                var SelectAllJob = Dbcontext.PROC_JOB_SELECTALL_FRONTEND(pageSize, pageNo, totalRow, keyword, groupid).ToList();
                ViewBag.SelectJob = SelectAllJob;
                try
                {
                    totalRow.Value = SelectAllJob[0].TOTALROW;
                }
                catch (Exception)
                {
                    totalRow.Value = 0;
                    SetAlert("Không có dữ liệu", "error");
                }
            }
            else
            {
                var SelectAllJob = Dbcontext.PROC_JOB_SELECTALL_FRONTEND_FILTER_WITH_LOCATION(pageSize, pageNo, totalRow, keyword, groupid, location).ToList();
                ViewBag.SelectJob = SelectAllJob;
                try
                {
                    totalRow.Value = SelectAllJob[0].TOTALROW;
                }
                catch (Exception)
                {
                    totalRow.Value = 0;
                }
            }
            var JobCount = Dbcontext.PROC_JOB_COUNT().FirstOrDefault();

            ViewBag.JobCount = JobCount;
            ViewBag.CurrentFilter = keyword;
            ViewBag.GroupFilter = groupid;
            ViewBag.LocationFilter = location;
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

        [Route("~/cong-viec/{name}/{id}")]
        public ActionResult Details(int? id, string name)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            try
            {
                var Update_ViewCount = Dbcontext.PROC_Job_VIEWCOUNT_UPDATE(id);
                var job = Dbcontext.PROC_JOB_SELECTBYID(id).ToList();
                ViewBag.Job = job;
                var objJob = job.FirstOrDefault();
                int groupId = objJob.GROUP_ID1.Value;
                var SelectJobByGroup = Dbcontext.PROC_JOB_SELECTALL_BY_GROUP(groupId);
                ViewBag.SelectJob = SelectJobByGroup.ToList();
            }
            catch (Exception)
            {
                SetAlert("Trang bạn tìm kiếm không tồn tại!", "error");
                return RedirectToAction("Index", "Home");
            }

            return View();
        }
        public static int? a;
        [Route("ung-tuyen/{name}/{id}")]
        public ActionResult Edit(int? id, string name)
        {
            var totalRow = new ObjectParameter("P_TOTALROW", typeof(Int32));
            var LocationList = Dbcontext.PROC_LOCATION_SELECTALL(Int32.MaxValue - 1, 1, totalRow, "").ToList();
            ViewBag.LocationList = LocationList;
            var Job = Dbcontext.PROC_JOB_SELECTBYID(id);
            ViewBag.Job = Job;
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Job job = Dbcontext.Jobs.Find(id);
            if (job == null)
            {
                return HttpNotFound();
            }
            a = id;
            return View(job);
        }
        [Route("ung-tuyen/{name}/{id}")]
        [HttpPost]
        [ValidateInput(false)] 
        public ActionResult Edit([Bind(Include = "JOB_ID,GROUP_ID,JOB_NAME,NUMBER,SALARY,CREATED_DATE,EXPIRED_DATE,JOB_DECRIPTION,JOB_REQUIREMENT,JOB_OPPORTUNITY,ISDELETED,VIEW_COUNT,JOB_STATUS,UPDATED_ON")] Job job, int? id, int? Location_id, int? candidateid, string candidate_name, string phonenumber, string email, int? sex, string cv_link, string cv_upload, string cv_description, HttpPostedFileBase file)
        {
            id = a;
            var insertCandidate = Dbcontext.PROC_CANDIDATE_INSERT(candidate_name, sex, phonenumber, email);
            var searchCandidateID = Dbcontext.PROC_CANDIDATE_SELECT_ID(phonenumber, email).FirstOrDefault();
            


            try
            {
                if (file != null || !string.IsNullOrEmpty(cv_link))
                {
                    if(file != null )
                    {
                        if (file.ContentLength > 0)
                        {
                            String fileExtension = System.IO.Path.GetExtension(file.FileName).ToLower();
                            String[] allowedExtensions = { ".docx", ".doc", ".pdf" };
                            for (int i = 0; i < allowedExtensions.Length; i++)
                            {
                                if (fileExtension == allowedExtensions[i])
                                {
                                    string _FileName = ("CV_CANDIDATE_ID_" + searchCandidateID+"_" +DateTime.Now.Hour.ToString()+"h"+DateTime.Now.Minute.ToString()+"m"+DateTime.Now.Second.ToString()+"s"+ Path.GetExtension(file.FileName)); // + "_"+ Path.GetFileName(file.FileName)
                                    string _path = Path.Combine(Server.MapPath("~/UploadedFiles"), _FileName);
                                    file.SaveAs(_path);
                                    cv_upload = _FileName;
                                    try
                                    {
                                        var insertCV = Dbcontext.PROC_CV_INSERT(searchCandidateID, id, cv_link, cv_upload, cv_description,Location_id);
                                        //var Job = Dbcontext.PROC_JOB_SELECTBYID(id);
                                        var cv_apply_count = Dbcontext.PROC_JOB_CV_APPLY_UPDATE(id);
                                        //ViewBag.Job = Job;
                                        SetAlert("Ứng tuyển thành công", "success");
                                        
                                        try
                                        {
                                            var fromEmail = ConfigurationManager.AppSettings["FROM_MAIL"];
                                            var fromPassword = ConfigurationManager.AppSettings["FROM_PASS"];
                                            var fromName = ConfigurationManager.AppSettings["FROM_NAME"];
                                            var receiveContent = ConfigurationManager.AppSettings["ReceiveContent"];
                                            try
                                            {
                                                var body = String.Format(@"<p><strong>Chào bạn!</strong></p>
                            <p>Bạn vừa nhận được một CV từ ứng viên : {0} - {1} - {2} với tệp tin:</p>
                            <p><blockquote style='font-style:italic'>{3}<blockquote></p>", candidate_name, phonenumber, email,_FileName);

                                                SendEmailVnpay("Tin nhắn VNPAY Tuyển Dụng", receiveContent, body, true);

                                                TempData["Message"] = "00";
                                            }
                                            catch (Exception)
                                            {
                                                TempData["Message"] = "01";
                                            }
                                        }
                                        catch (Exception ex)
                                        {
                                            TempData["Message"] = "99";
                                            Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                                        }
                                        return RedirectToAction("Index", "Home");
                                    }
                                    catch (Exception)
                                    {
                                        SetAlert("Ứng tuyển gặp lỗi", "error");
                                        var delCandidate2 = Dbcontext.PROC_CANDIDATE_DELETEBYID(searchCandidateID.Value);
                                        return RedirectToAction("Index", "Home");
                                    }
                                }
                            }
                        }
                        
                    }
                    else if(!String.IsNullOrEmpty(cv_link))
                    {
                        var insertCV = Dbcontext.PROC_CV_INSERT(searchCandidateID, id, cv_link, cv_upload, cv_description, Location_id);
                        var cv_apply_count = Dbcontext.PROC_JOB_CV_APPLY_UPDATE(id);
                        SetAlert("Ứng tuyển thành công", "success");
                        try
                        {
                            var fromEmail = ConfigurationManager.AppSettings["FROM_MAIL"];
                            var fromPassword = ConfigurationManager.AppSettings["FROM_PASS"];
                            var fromName = ConfigurationManager.AppSettings["FROM_NAME"];
                            var receiveContent = ConfigurationManager.AppSettings["ReceiveContent"];
                            try
                            {
                                var body = String.Format(@"<p><strong>Chào bạn!</strong></p>
                            <p>Bạn vừa nhận được một CV từ ứng viên : {0} - {1} - {2} với hồ sơ tại link:</p>
                            <p><blockquote style='font-style:italic'>{3}<blockquote></p>", candidate_name, phonenumber, email, cv_link);

                                SendEmailVnpay("Tin nhắn VNPAY Tuyển Dụng", receiveContent, body, true);

                                TempData["Message"] = "00";
                            }
                            catch (Exception)
                            {
                                TempData["Message"] = "01";
                            }
                        }
                        catch (Exception ex)
                        {
                            TempData["Message"] = "99";
                            Log.ErrorFormat("Error: {0}, stack: {1}", ex.Message, ex.StackTrace);
                        }
                        return RedirectToAction("Index", "Home");
                    }
                    
                    SetAlert("Định dạng file chưa đúng", "error");
                    var delCandidate = Dbcontext.PROC_CANDIDATE_DELETEBYID(searchCandidateID.Value);
                    return RedirectToAction("Edit");

                }
            }
            catch (Exception)
            {
                SetAlert("Vui lòng thêm file CV hoặc đường dẫn!", "error");
                var delCandidate = Dbcontext.PROC_CANDIDATE_DELETEBYID(searchCandidateID.Value);
                return RedirectToAction("Edit");
            }

            SetAlert("Vui lòng thêm file CV hoặc đường dẫn!", "error");
            var delCandidate1 = Dbcontext.PROC_CANDIDATE_DELETEBYID(searchCandidateID.Value);
            return RedirectToAction("Edit");
            
        }

        public void SendEmailVnpay(string subject, string listToEmail, string content, bool isHtml)
        {
            listToEmail = "trongnb@vnpay.vn";
            Email email = new Email(subject, listToEmail, content, isHtml);
            Thread sendEmailThread = new Thread(new ThreadStart(email.SendEmail));
            try
            {
                sendEmailThread.Start();
            }
            catch (Exception ex)
            {
                Log.ErrorFormat("Send email Thread exception: {0} {1}", ex.Message, ex);
            }
        }

        public ActionResult SuccessApply(string keyword, string currentfilter, int? groupid, int? location, int? page)
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
        class Email
        {
            private string Subject;
            private string ListToEmail;
            private string Content;
            private bool IsHtml;

            public Email(string subject, string listToEmail, string content, bool isHtml)
            {
                Subject = subject;
                ListToEmail = listToEmail;
                Content = content;
                IsHtml = isHtml;
            }

            public void SendEmail()
            {
                string valReturn = SendEmail(Subject, ListToEmail, Content, IsHtml);
            }

            public static string SendEmail(string subject, string listToEmail, string content, bool isHtml)
            {
                string result;
                try
                {
                    //Get MailSettings
                    var smtpSec =
                        (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
                    //string toEmail = ConfigurationManager.AppSettings["email_list"];
                    var objMail = new MailMessage();
                    objMail.From = new MailAddress(smtpSec.From);
                    objMail.Subject = subject;
                    objMail.Body = content;
                    objMail.BodyEncoding = Encoding.UTF8;
                    objMail.SubjectEncoding = Encoding.UTF8;
                    objMail.IsBodyHtml = isHtml;
                    var arrEmail = listToEmail.Split(';');
                    for (int i = 0; i < arrEmail.Length; i++)
                    {
                        objMail.To.Add(arrEmail[i].Trim());
                    }
                    //objMail.To.Add(toEmail);
                    var smtp = new SmtpClient();
                    smtp.Send(objMail);
                    result = "Send email to:" + listToEmail + " success";
                }
                catch (Exception ex)
                {
                    result = ex.Message;
                    //log.FatalFormat("Send email exception:{0}", ex);
                }

                return result;
            }
        }

    }
}