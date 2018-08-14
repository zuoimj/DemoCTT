using System.Web.Mvc;
using VNPRECRUITMENT.Filters;

namespace VNPRECRUITMENT
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new RecaptchaFilter());
        }
    }
}
