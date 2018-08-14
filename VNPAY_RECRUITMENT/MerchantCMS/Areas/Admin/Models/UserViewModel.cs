using System;

namespace VNPRECRUITMENT.Areas.Admin.Models
{
    public class UserViewModel
    {
        public int UserId { get; set; }

        public string Username { get; set; }

        public string Email { get; set; }

        public string Firstname { get; set; }

        public string Lastname { get; set; }

        public string Fullname { get; set; }

        public string Password { get; set; }

        public string Isapproved { get; set; }

        public string Islockedout { get; set; }

        public DateTime Lastlogin { get; set; }

        public int RoleId { get; set; }

        public string Isdeleted { get; set; }

        public DateTime CreatedOn { get; set; }

        public string CreatedBy { get; set; }

        public DateTime ModifiedOn { get; set; }

        public string ModifiedBy { get; set; }
    }
}