using System.Web;
using System.Web.Mvc;

namespace MVC_Thue_Oto
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
