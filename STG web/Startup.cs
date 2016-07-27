using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(STG_web.Startup))]
namespace STG_web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
