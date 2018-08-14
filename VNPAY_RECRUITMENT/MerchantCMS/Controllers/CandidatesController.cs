using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VNPRECRUITMENT.Controllers
{
    public class CandidatesController : BaseController
    {
        // GET: Candidates
        public ActionResult Index(int? id)
        {
            return View();
        }
    }
}