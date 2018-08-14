using System.Web.Mvc;
using System.Web.Routing;

namespace VNPRECRUITMENT
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");



            //enabling attribute routing
            routes.MapMvcAttributeRoutes();

            //routes.MapRoute(
            //    name: "Default",
            //    url: "{controller}/{action}/{id}",
            //    defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            //);
            routes.MapRoute(
                name: "Job",
                url: "cong-viec",
                defaults: new { controller = "Jobs", action = "Index" },
                namespaces: new string[] { "VNPRECRUITMENT.Controllers" }
                );

            routes.MapRoute(
                name: "job-detail",
                url: "cong-viec/chi-tiet/{id}",
                defaults: new { controller = "Jobs", action = "Details", id = UrlParameter.Optional },
                namespaces: new string[] { "VNPRECRUITMENT.Controllers" }
                );

            routes.MapRoute(
                name: "Homepage",
                url: "",
                defaults: new { controller = "Home", action = "Index" },
                namespaces: new string[] { "VNPRECRUITMENT.Controllers" }
                );
            routes.MapRoute(
               name: "route_action_id_html",
               url: "{controller}/{action}/{id}.html",
               defaults: new { controller = "Home", action = "Index" },
               namespaces: new string[] { "VNPRECRUITMENT.Controllers" }
               );
            routes.MapRoute(
                name: "route_action_html",
                url: "{controller}/{action}.html",
                defaults: new { controller = "Home", action = "Index" },
                namespaces: new string[] { "VNPRECRUITMENT.Controllers" }
                );
            routes.MapRoute(
                name: "",
                url: "",
                defaults: new { controller = "Home", action = "Index" },
                namespaces: new string[] { "VNPRECRUITMENT.Controllers" }
                );
            routes.MapRoute(
                 name: "404-NotFound",
                 url: "NotFound",
                 defaults: new { controller = "Error", action = "NotFound" }
              );

            routes.MapRoute(
                name: "500-Error",
                url: "Error",
                defaults: new { controller = "Error", action = "Error" }
            );

            //..other routes

            //I also put a catch all mapping as last route

            //Catch All InValid (NotFound) Routes
            routes.MapRoute(
                name: "NotFound",
                url: "{*url}",
                defaults: new { controller = "Error", action = "NotFound" }
            );

            routes.MapRoute(
               name: "Default",
               url: "{controller}/{action}/{id}",
               defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
           );
        }
    }
}
