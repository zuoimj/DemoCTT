using Microsoft.Owin;
using Owin;
using VNPRECRUITMENT;

[assembly: OwinStartup("VNPRECRUITMENT", typeof(Startup))]
namespace VNPRECRUITMENT
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
