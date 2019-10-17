using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace RetoASPNet
{
    public partial class SiteMaster : MasterPage
    {
        private const string CssClass = "nav-link active";
        protected void Page_Load(object sender, EventArgs e)
        {

            var path = HttpContext.Current.Request.Url.AbsolutePath;

            if (path.Contains("Source"))
            {
                var item = (HtmlAnchor)FindControl("sbsource");
                item.Attributes.Add("class", CssClass);
            }
            else if (path.Contains("About"))
            {
                var item = (HtmlAnchor)FindControl("sbabout");
                item.Attributes.Add("class", CssClass);
            }
            else if (path.Contains("Contact"))
            {
                var item = (HtmlAnchor)FindControl("sbcontact");
                item.Attributes.Add("class", CssClass);
            }
            else if (path.Contains("Mobs") || path.Contains("Biomes") || path.Contains("Structures") || path.Contains("Tools") || path.Contains("Easter_eggs"))
            {
                var item = (HtmlAnchor)FindControl("drpbtnid");
                item.Attributes.Add("class", "darkdropbtn dropbtn active");
            }

        }
            
    }
}