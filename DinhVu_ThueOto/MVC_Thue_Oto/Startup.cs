using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MVC_Thue_Oto.Startup))]
namespace MVC_Thue_Oto
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
