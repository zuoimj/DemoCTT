using System.Configuration;
using System.Web.Mvc;

namespace VNPRECRUITMENT.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            //context.MapRoute(
            //    "Admin_default",
            //    "Admin/{controller}/{action}/{id}",
            //    new { action = "Index", id = UrlParameter.Optional }
            //);
            var alias = ConfigurationManager.AppSettings["admin_alias"];

            context.MapRoute(
               name: "admin_routes_action_id_htm",
               url: alias + "/{controller}/{action}/{id}.htm",
               defaults: new { controller = "Home", action = "Index" },
               namespaces: new string[] { "VNPRECRUITMENT.Areas.Admin.Controllers" }
               );
            context.MapRoute(
                name: "admin_routes_action_htm",
                url: alias + "/{controller}/{action}.htm",
                defaults: new { controller = "Home", action = "Index" },
                namespaces: new string[] { "VNPRECRUITMENT.Areas.Admin.Controllers" }
                );
            context.MapRoute(
               name: "admin_routes_action_default_html",
               url: alias,
               defaults: new { controller = "Home", action = "Index" },
               namespaces: new string[] { "VNPRECRUITMENT.Areas.Admin.Controllers" }
               );
        }
    }
}