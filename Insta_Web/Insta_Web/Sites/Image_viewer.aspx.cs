using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Insta_Web.Sites
{
    public partial class Image_viewer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Insta_Con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string I_ID = Request.QueryString["Imageid"];
           
            SqlCommand cmd = new SqlCommand("update  [dbo].[Popularity_Table] set view_count=view_count+1   where Image_ID="+ I_ID, con);
            
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}