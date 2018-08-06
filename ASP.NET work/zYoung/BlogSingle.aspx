<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterOther.master" AutoEventWireup="true" CodeFile="BlogSingle.aspx.cs" Inherits="BlogSingle" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main-content">
        <div class="wrap-content">
            <div class="row">
                <article class="single-post zerogrid">
                    <div class="row wrap-post">

                        <%
                            try
                            {
                                var connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
                                int bid = int.Parse(Request.QueryString["BNo"].ToString());
                                string searchCmd = "Select * from Blogs where BlogId='" + bid + "';";
                                SqlConnection objConnection = new SqlConnection(connStr);
                                SqlCommand objCommand = new SqlCommand(searchCmd, objConnection);
                                objConnection.Open();
                                SqlDataReader objReader = objCommand.ExecuteReader();
                                if(objReader.Read())
                                {
                             %>
                        <!--Start Box-->
                        <div class="entry-header">
                            <span class="time"><%
                                                   string mydate = objReader.GetValue(4).ToString();
                                                   Response.Write(mydate.Substring(0,mydate.Length-11)); %>, by <%Response.Write(objReader.GetValue(5).ToString()); %></span>
                            <h2 class="entry-title"><a href="#"><%Response.Write(objReader.GetValue(1).ToString()); %></a></h2>
                        </div>
                        <div class="post-thumbnail-wrap">
                            <img src="<%Response.Write(objReader.GetValue(3).ToString()); %>"/>
                        </div>
                        <div class="entry-content">
                            <div class="excerpt">
                                <p><%Response.Write(objReader.GetValue(2).ToString()); %></p>
                            </div>
                            

                        </div>

                        <% 
                                }
                                else
                                {
                                    Response.Redirect("Default.aspx");
                                }

                                objConnection.Close();

                            }catch(Exception ex)
                            {
                                Response.Redirect("Default.aspx");
                            }
                            %>
                    </div>
                </article>
                <div class="zerogrid">
                    <div class="comments-are">
                        <div id="comment">
                            <h3>Leave a Reply</h3>
                            <span>Your email address will not be published. Required fields are marked </span>
                            <form name="comment_form" id="comment_form" method="post" action="">
                                <label>
                                    <span>Comment:</span>
                                    <textarea name="message" id="message"></textarea>
                                </label>
                                <label>
                                    <span>Name:</span>
                                    <input type="text" name="name" id="name" required>
                                </label>
                                <label>
                                    <span>Email:</span>
                                    <input type="email" name="email" id="email" required>
                                </label>
                                <center><input class="sendButton" type="submit" name="submitcomment" value="Submit"></center>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

