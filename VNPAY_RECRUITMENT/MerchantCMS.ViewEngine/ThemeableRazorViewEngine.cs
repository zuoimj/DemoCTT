using System;
using System.Web.Mvc;

namespace MerchantCMS.ViewEngine
{
    public class ThemeableRazorViewEngine : ThemeableBuildManagerViewEngine
    {
        public ThemeableRazorViewEngine()
        {
            AreaViewLocationFormats = new[] {
                                                "~/Areas/{2}/themes/{3}/{1}/{0}.cshtml",
                                                "~/Areas/{2}/themes/{3}/Shared/{0}.cshtml",

                                                "~/Areas/{2}/Views/{1}/{0}.cshtml",
                                                "~/Areas/{2}/Views/Shared/{0}.cshtml"
                                            };

            AreaMasterLocationFormats = new[] {
                                                  "~/Areas/{2}/themes/{3}/{1}/{0}.cshtml",
                                                  "~/Areas/{2}/themes/{3}/Shared/{0}.cshtml",

                                                  "~/Areas/{2}/Views/{1}/{0}.cshtml",
                                                  "~/Areas/{2}/Views/Shared/{0}.cshtml"
                                              };

            AreaPartialViewLocationFormats = new[] {
                                                       "~/Areas/{2}/themes/{3}/{1}/{0}.cshtml",
                                                       "~/Areas/{2}/themes/{3}/Shared/{0}.cshtml",

                                                       "~/Areas/{2}/Views/{1}/{0}.cshtml",
                                                       "~/Areas/{2}/Views/Shared/{0}.cshtml"
                                                   };

            ViewLocationFormats = new[] {
                                            "~/Themes/{2}/{1}/{0}.cshtml",
                                            "~/Themes/{2}/Shared/{0}.cshtml",

                                            "~/Views/{1}/{0}.cshtml",
                                            "~/Views/Shared/{0}.cshtml"
                                        };

            MasterLocationFormats = new[] {
                                              "~/Themes/{2}/{1}/{0}.cshtml",
                                              "~/Themes/{2}/Shared/{0}.cshtml",

                                              "~/Views/{1}/{0}.cshtml",
                                              "~/Views/Shared/{0}.cshtml"
                                          };

            PartialViewLocationFormats = new[] {
                                                   "~/Themes/{2}/{1}/{0}.cshtml",
                                                   "~/Themes/{2}/Shared/{0}.cshtml",

                                                   "~/Views/{1}/{0}.cshtml",
                                                   "~/Views/Shared/{0}.cshtml"
                                               };

            ViewStartFileExtensions = new[] { "cshtml" };
        }

        public string[] ViewStartFileExtensions { get; set; }

        protected override IView CreatePartialView(ControllerContext controllerContext, string partialPath)
        {
            return new RazorView(controllerContext, partialPath, null, false, ViewStartFileExtensions);
        }

        protected override IView CreateView(ControllerContext controllerContext, string viewPath, string masterPath)
        {
            return new RazorView(controllerContext, viewPath, masterPath, true, ViewStartFileExtensions);
        }

        protected override bool IsValidCompiledType(ControllerContext controllerContext, string virtualPath, Type compiledType)
        {
            return typeof(WebViewPage).IsAssignableFrom(compiledType);
        }
    }
}