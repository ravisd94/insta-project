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
    public partial class Admin1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Insta_Con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                con.Open();
                SqlCommand cmd_infID = new SqlCommand("select * from Influencer_Table", con);
                SqlDataAdapter da_infID = new SqlDataAdapter(cmd_infID);
                DataSet ds_infID = new DataSet();
                da_infID.Fill(ds_infID);
                DropDownInsta.DataSource = ds_infID;
                DropDownInsta.DataTextField = "Insta_Id";
                DropDownInsta.DataValueField = "Influencer_Name";
                DropDownInsta.DataBind();

                SqlCommand cmd_cat = new SqlCommand("select Category_Name from Category_Table", con);
                SqlDataReader dr = cmd_cat.ExecuteReader();

                while (dr.Read())
                {
                    ListItem newItem = new ListItem();
                    newItem.Text = dr[0].ToString();
                    chkCategory.Items.Add(newItem);
                }
                con.Close();
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                String CheckedValues = "";
                for (int i = 0; i < chkCategory.Items.Count; i++)
                {
                    if (chkCategory.Items[i].Selected)
                    {
                        CheckedValues += chkCategory.Items[i].Value + ",";
                    }
                }
                CheckedValues = CheckedValues.TrimEnd(',');

                int FileCount = 0;
                int UploadedFileCount = 0;
                FileCount = FileUpload1.PostedFiles.Count();
                foreach (HttpPostedFile postfiles in FileUpload1.PostedFiles)
                {
                    UploadedFileCount ++;

                    
                string FileName = System.IO.Path.GetFileName(DropDownInsta.SelectedItem.ToString());
                string FileExt = System.IO.Path.GetExtension(postfiles.FileName);
                string FileSavedasName = FileName + "_" + DateTime.Now.ToString("yy-MM-dd") + "_" + 
                            DateTime.Now.ToString("HH-mm-ss") + "_"+ UploadedFileCount +FileExt;

                 postfiles.SaveAs(Server.MapPath("~/Content/Images/"+ DropDownInsta.SelectedItem.Text+"/" + FileSavedasName));

                SqlCommand cmd = new SqlCommand("SP_Image_Insert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Image_Name", FileSavedasName);
                cmd.Parameters.AddWithValue("@Insta_Id", DropDownInsta.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Image_Path", "~/Content/Images/" + FileSavedasName);
                cmd.Parameters.AddWithValue("@Added_Date", DateTime.Now);
                cmd.Parameters.AddWithValue("@Category_Name", CheckedValues);
                con.Open();
                cmd.ExecuteNonQuery();
                        con.Close();
                    
                    
                }
                
                lblMsg.Text = "File uploaded successfully";
            }
            else
            {
                lblMsg.Text = "Please select File";
            }

        }
    }
}