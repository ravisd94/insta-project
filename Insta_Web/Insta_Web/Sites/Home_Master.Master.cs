using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insta_Web.Sites
{
    public partial class Home_Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_search_Click(object sender, EventArgs e)
        {
            if (Txt_search.Text == "")
            { }
            else 
            { 
            Response.Redirect("SearchData.aspx?Result=" + Txt_search.Text);
            }
        }
    }
}
