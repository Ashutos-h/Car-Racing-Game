using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class ADManager_BlogAdd : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
    SqlCommand objCommand;
    SqlConnection objConnection;
    string filename;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            filename = "";
            lblMessage.Text = "";

            TextReadTrue();
        }
    }

    string fupload;
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        fupload = "";

        if (imageUpload.HasFile)
        {
            filename = Path.GetFileName(imageUpload.PostedFile.FileName);

            imageUpload.PostedFile.SaveAs(Server.MapPath("../ADManager/Images/" + filename));

            fupload = "../ADManager/Images/" + filename.ToString();

            txtBlogImgUrl.Text = fupload;
        }
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        if (btnNew.Text == "New")
        {
            lblMessage.Text = "";
            btnNew.Text = "Save";
            TextReadFalse();
        }
        else
        {
            try
            {
                objConnection = new SqlConnection(connStr);
                string mdate = DateConvert.GetDate(DateTime.Now);
                string inscmd = "Insert into Blogs (BTitle,BContent,ImageUrl,PostDate,BName) values('" + txtBlogTitle.Text + "','" + txtBContent.Text + "','" + txtBlogImgUrl.Text + "','" + mdate + "','" + txtBName.Text + "')";

                objCommand = new SqlCommand(inscmd, objConnection);

                objConnection.Open();

                objCommand.ExecuteNonQuery();

                objCommand.Dispose();

                objConnection.Close();

                lblMessage.Text = "Record Saved !!!";

                txtBlogImgUrl.Text = "";
                txtBlogTitle.Text = "";
                txtBContent.Text = "";
                txtBName.Text = "";

            }
            catch (SqlException ex)
            {
                lblMessage.Text = "Error in Connection" + ex.Message.ToString();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error" + ex.Message.ToString();
            }

            finally
            {
                btnNew.Text = "New";
                TextReadTrue();
            }


        }
    }
    public void TextReadTrue()
    {
        txtBlogTitle.ReadOnly = true;
        txtBContent.ReadOnly = true;
        txtBlogImgUrl.ReadOnly = true;

        txtBName.ReadOnly = true;
        btnUpload.Enabled = false;
        imageUpload.Enabled = false;
    }
    public void TextReadFalse()
    {
        txtBlogTitle.ReadOnly = false;
        txtBContent.ReadOnly = false;
        txtBlogImgUrl.ReadOnly = true;

        txtBName.ReadOnly = false;
        btnUpload.Enabled = true;
        imageUpload.Enabled = true;

    }
}