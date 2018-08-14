using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.IO;
namespace MerchantCMS.ViewEngine
{
    public class RazorThemeViewEngine : RazorViewEngine
    {
        public RazorThemeViewEngine()
        {
            AreaViewLocationFormats = new[]
             {
             "~/Areas/{2}/Views/{1}/{0}.cshtml",
             "~/Areas/{2}/Views/Shared/{0}.cshtml"
             };
            AreaMasterLocationFormats = new[]
             {
                         "~/Areas/{2}/Views/{1}/{0}.cshtml",
                         "~/Areas/{2}/Views/Shared/{0}.cshtml"
                         };
            AreaPartialViewLocationFormats = new[]
 {
                         "~/Areas/{2}/Views/{1}/{0}.cshtml",
                         "~/Areas/{2}/Views/Shared/{0}.cshtml"
                         };
            ViewLocationFormats = new[]
 {
                         "~/Views/{1}/{0}.cshtml",
                         "~/Views/Shared/{0}.cshtml",
                         "~/Themes/{2}/{1}/{0}.cshtml",
                         "~/Themes/{2}/Shared/{0}.cshtml"
                         };
            MasterLocationFormats = new[]
 {
                         "~/Views/{1}/{0}.cshtml",
                         "~/Views/Shared/{0}.cshtml",
                         "~/Themes/{2}/{1}/{0}.cshtml",
                         "~/Themes/{2}/Shared/{0}.cshtml"
                        
                         };
            PartialViewLocationFormats = new[]
 {
                         "~/Views/{1}/{0}.cshtml",
                         "~/Views/Shared/{0}.cshtml",
                          "~/Themes/{2}/{1}/{0}.cshtml",
                         "~/Themes/{2}/Shared/{0}.cshtml"
                         };
        }

        //protected override bool FileExists(ControllerContext controllerContext, string virtualPath)
        //{
        //    try
        //    {
        //        return File.Exists(controllerContext.HttpContext.Server.MapPath(virtualPath));
        //    }
        //    catch (HttpException exception)
        //    {
        //        if (exception.GetHttpCode() != 0x194)
        //        {
        //            throw;
        //        }
        //        return false;
        //    }
        //    catch
        //    {
        //        return false;
        //    }
        //}

        //public override ViewEngineResult FindView(ControllerContext controllerContext, string viewName, string masterName, bool useCache)
        //{
        //    string[] strArray;
        //    string[] strArray2;

        //    if (controllerContext == null)
        //    {
        //        throw new ArgumentNullException("controllerContext");
        //    }
        //    if (string.IsNullOrEmpty(viewName))
        //    {
        //        throw new ArgumentException("viewName must be specified.", "viewName");
        //    }

        //    var themeName = GetThemeToUse(controllerContext);

        //    var requiredString = controllerContext.RouteData.GetRequiredString("controller");

        //    var viewPath = GetPath(controllerContext, ViewLocationFormats, "ViewLocationFormats", viewName, themeName, requiredString, "View", useCache, out strArray);
        //    var masterPath = GetPath(controllerContext, MasterLocationFormats, "MasterLocationFormats", masterName, themeName, requiredString, "Master", useCache, out strArray2);

        //    if (!string.IsNullOrEmpty(viewPath) && (!string.IsNullOrEmpty(masterPath) || string.IsNullOrEmpty(masterName)))
        //    {
        //        return new ViewEngineResult(CreateView(controllerContext, viewPath, masterPath), this);
        //    }
        //    return new ViewEngineResult(strArray.Union(strArray2));
        //}

        //public override ViewEngineResult FindPartialView(ControllerContext controllerContext, string partialViewName, bool useCache)
        //{
        //    string[] strArray;
        //    if (controllerContext == null)
        //    {
        //        throw new ArgumentNullException("controllerContext");
        //    }
        //    if (string.IsNullOrEmpty(partialViewName))
        //    {
        //        throw new ArgumentException("partialViewName must be specified.", "partialViewName");
        //    }

        //    var themeName = GetThemeToUse(controllerContext);

        //    var requiredString = controllerContext.RouteData.GetRequiredString("controller");
        //    var partialViewPath = GetPath(controllerContext, PartialViewLocationFormats, "PartialViewLocationFormats", partialViewName, themeName, requiredString, "Partial", useCache, out strArray);
        //    return string.IsNullOrEmpty(partialViewPath) ? new ViewEngineResult(strArray) : new ViewEngineResult(CreatePartialView(controllerContext, partialViewPath), this);
        //}

        //private static string GetThemeToUse(ControllerContext controllerContext)
        //{
        //    var themeName = controllerContext.HttpContext.Items["themeName"] as string ?? "Default";

        //    return themeName;
        //}

        //private static readonly string[] _emptyLocations;

        //private string GetPath(ControllerContext controllerContext, string[] locations, string locationsPropertyName, string name, string themeName, string controllerName, string cacheKeyPrefix, bool useCache, out string[] searchedLocations)
        //{
        //    searchedLocations = _emptyLocations;
        //    if (string.IsNullOrEmpty(name))
        //    {
        //        return string.Empty;
        //    }
        //    if ((locations == null) || (locations.Length == 0))
        //    {
        //        throw new InvalidOperationException("locations must not be null or emtpy.");
        //    }

        //    bool flag = IsSpecificPath(name);
        //    string key = CreateCacheKey(cacheKeyPrefix, name, flag ? string.Empty : controllerName, themeName);
        //    if (useCache)
        //    {
        //        var viewLocation = ViewLocationCache.GetViewLocation(controllerContext.HttpContext, key);
        //        if (viewLocation != null)
        //        {
        //            return viewLocation;
        //        }
        //    }
        //    return !flag ? GetPathFromGeneralName(controllerContext, locations, name, controllerName, themeName, key, ref searchedLocations)
        //                : GetPathFromSpecificName(controllerContext, name, key, ref searchedLocations);
        //}

        //private static bool IsSpecificPath(string name)
        //{
        //    var ch = name[0];
        //    if (ch != '~')
        //    {
        //        return (ch == '/');
        //    }
        //    return true;
        //}

        //private string CreateCacheKey(string prefix, string name, string controllerName, string themeName)
        //{
        //    return string.Format(
        //        CultureInfo.InvariantCulture,
        //        ":ViewCacheEntry:{0}:{1}:{2}:{3}:{4}",
        //        new object[] { GetType().AssemblyQualifiedName, prefix, name, controllerName, themeName });
        //}

        //private string GetPathFromGeneralName(ControllerContext controllerContext, string[] locations, string name, string controllerName, string themeName, string cacheKey, ref string[] searchedLocations)
        //{
        //    var virtualPath = string.Empty;
        //    searchedLocations = new string[locations.Length];
        //    for (var i = 0; i < locations.Length; i++)
        //    {
        //        var str2 = string.Format(CultureInfo.InvariantCulture, locations[i], new object[] { name, controllerName, themeName });

        //        if (FileExists(controllerContext, str2))
        //        {
        //            searchedLocations = _emptyLocations;
        //            virtualPath = str2;
        //            ViewLocationCache.InsertViewLocation(controllerContext.HttpContext, cacheKey, virtualPath);
        //            return virtualPath;
        //        }
        //        searchedLocations[i] = str2;
        //    }
        //    return virtualPath;
        //}

        //private string GetPathFromSpecificName(ControllerContext controllerContext, string name, string cacheKey, ref string[] searchedLocations)
        //{
        //    var virtualPath = name;
        //    if (!FileExists(controllerContext, name))
        //    {
        //        virtualPath = string.Empty;
        //        searchedLocations = new[] { name };
        //    }
        //    ViewLocationCache.InsertViewLocation(controllerContext.HttpContext, cacheKey, virtualPath);
        //    return virtualPath;
        //}
    }
}
