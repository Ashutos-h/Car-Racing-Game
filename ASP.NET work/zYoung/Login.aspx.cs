using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection objConnection;
        SqlCommand objCommand;
        SqlDataReader objReader;
        string connStr, searchCmd;
        connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
        objConnection = new SqlConnection(connStr);
        searchCmd = "Select * from login where UName='" + txtEmail.Text + "'and Password='" + txtPassword.Text + "' and RoleId='2'";
        objCommand = new SqlCommand(searchCmd, objConnection);
        objConnection.Open();
    
        objReader = objCommand.ExecuteReader();
        if (objReader.Read())
        {
            Session["SId"] = objReader.GetValue(0).ToString();
            Session["UName"] = objReader.GetValue(1).ToString();
            Session["RoleId"] = 2;
            Response.Redirect("userdashboard.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        objCommand.Dispose();
        objConnection.Close();


    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        
            string connSignStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
        string insCmd = "Insert into login(UName,Password) values('"+txtBloggerEmail.Text+"','"+txtPassword.Text+"')";
            SqlConnection objSignConnection = new SqlConnection(connSignStr);
            SqlCommand objSignCommand = new SqlCommand(insCmd, objSignConnection);

            objSignConnection.Open();

            objSignCommand.ExecuteNonQuery();

            objSignCommand.Dispose();

            objSignConnection.Close();

            lblMessage.Text = "Your Account will be activated soon !!!";
            txtBloggerName.Text = "";
            txtBloggerEmail.Text = "";
            txtPassword.Text = "";

        
    }
}