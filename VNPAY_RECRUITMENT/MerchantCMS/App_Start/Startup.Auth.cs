using System;
using System.Configuration;
using System.Security.Claims;
using Microsoft.AspNet.Identity;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Owin;
using Payment.Library;

namespace VNPRECRUITMENT
{
    public partial class Startup
    {
        public int FormAuthenticationExpire = Utils.IsInt(ConfigurationManager.AppSettings["FormAuthenticationExpire"]);
        // For more information on configuring authentication, please visit http://go.microsoft.com/fwlink/?LinkId=301864
        public void ConfigureAuth(IAppBuilder app)
        {
            var alias = ConfigurationManager.AppSettings["admin_alias"];
            System.Web.Helpers.AntiForgeryConfig.UniqueClaimTypeIdentifier = ClaimTypes.Email;
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/" + alias + "/Users/Login.htm"),
                CookieSecure = CookieSecureOption.SameAsRequest,
                ExpireTimeSpan = TimeSpan.FromMinutes(FormAuthenticationExpire),
                CookieName = "__VNP_Recruitment_Cookie__"

            });

            app.UseExternalSignInCookie(DefaultAuthenticationTypes.ExternalCookie);
        }
    }
}