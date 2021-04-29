using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Insta_Web.Sites
{
    public partial class SearchData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PanelNoRecord.Visible = false;
            
                string cs = ConfigurationManager.ConnectionStrings["Insta_Con"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("SP_SearchData", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@searchTerm", Request.QueryString["Result"] );
                    SqlDataAdapter adp = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adp.Fill(dt);
                    if (dt.Rows.Count == 0)
                    { PanelNoRecord.Visible = true; }
                    else
                    {
                        con.Open();
                        Repeater1.DataSource = dt;
                        Repeater1.DataBind();
                    }
                }

            
        }
    }
}