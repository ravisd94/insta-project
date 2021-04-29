using System;
using System.IO;
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
    
    public partial class Add_inf : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Insta_Con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitadd_Click(object sender, EventArgs e)
        {
            con.Open();
            string s = @"SELECT COUNT(*) FROM Influencer_Table WHERE Insta_ID = @Insta_ID";
            SqlCommand sCommand = new SqlCommand(s, con);
            sCommand.Parameters.AddWithValue("@Insta_ID", TextBox1.Text);
            int records = (int)sCommand.ExecuteScalar();

            if (records  == 0)
            {

                SqlCommand cmd = new SqlCommand("insert into [Influencer_Table] values('" + TextBox3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "')", con);
               
                string dirrr = @"E:\Projects\Insta_Web\Insta_Web\Content\Images\" + TextBox1.Text;
                // If directory does not exist, create it. 
                if (!Directory.Exists(dirrr))
                {
                    Directory.CreateDirectory(dirrr);
                }

                cmd.ExecuteNonQuery();
                con.Close();

                lblMsg.Text = "Added successfully";
            }
            else
            {
                con.Close();
                lblMsg.Text = "Already exist";
            }
        }


    }
}