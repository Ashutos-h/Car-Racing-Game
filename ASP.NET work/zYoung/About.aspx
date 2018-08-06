<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterOther.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-----------------content-box-about-------------------->
    <section class="content-box box-about">
        <div class="zerogrid">
            <div class="wrap-box">
                <!--Start Box-->
                <% 
                    try
                    {
                        var connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
                        string searchCmd = "Select * from About";
                        SqlConnection objConnection = new SqlConnection(connStr);

                        SqlCommand objCommand = new SqlCommand(searchCmd, objConnection);
                        objConnection.Open();

                        SqlDataReader objReader = objCommand.ExecuteReader();
                        if (objReader.Read())
                        {
                %>
                <div class="box-header">

                    <h2><%Response.Write(objReader.GetValue(1).ToString()); %></h2>
                </div>
                <div class="box-content">
                    <p><%Response.Write(objReader.GetValue(2).ToString()); %></p>
                </div>
                <%
                        }

                        objConnection.Close();

                    }
                    catch (Exception ex)
                    {
                        Response.Write("Contact Admin .." + ex.Message);
                    }
                %>
            </div>
        </div>
    </section>

    <div>
        <h5>
            <p>SOME TEXT HERE</p>
        </h5>



        <h5>
            <p>SOME TEXT HERE</p>
        </h5>


        <h5>
            <p>SOME TEXT HERE</p>
        </h5>
        <h5>
            <p>SOME TEXT HERE</p>
        </h5>
    </div>

</asp:Content>
