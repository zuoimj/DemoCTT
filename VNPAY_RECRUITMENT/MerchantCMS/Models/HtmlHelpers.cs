using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.Mvc;

namespace VNPRECRUITMENT.Models
{
    public static class HtmlHelpers
    {
        public static IHtmlString ReCaptcha(this HtmlHelper helper)
        {
            StringBuilder sb = new StringBuilder();
            string publickey = WebConfigurationManager.AppSettings["RecaptchaPublicKey"];
            sb.AppendLine("<script type=\"text/javascript\" src='https://www.google.com/recaptcha/api.js'></script>");
            sb.AppendLine("");
            sb.AppendLine("<div class=\"g-recaptcha\" style=\"float: right;\" data-sitekey=\"" + publickey + "\"></div>");
            return MvcHtmlString.Create(sb.ToString());

        }
    }
}