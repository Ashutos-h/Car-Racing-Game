<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <!-----------------content-box-main-------------------->
    <section class="content-box box-main">
        <div class="zerogrid">
            <div class="wrap-box">
                <!--Start Box-->
                <div class="row">
                    <%
                                var connStrBlog = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
                                string searchBlogCmd = "Select * from Blogs where Status=1";
                                SqlConnection objBlogConnection = new SqlConnection(connStrBlog);
                                SqlCommand objBlogCommand = new SqlCommand(searchBlogCmd, objBlogConnection);
                                objBlogConnection.Open();
                                SqlDataReader objBlogReader = objBlogCommand.ExecuteReader();
                                while(objBlogReader.Read())
                                {
                            %>
                    <div class="col-1-3">
                        <div class="wrap-col">
                            
                            <div class="box-entry">
                                <img src="<%Response.Write(objBlogReader.GetValue(3).ToString()); %>" class="img-responsive" />
                                <div class="entry-details">
                                    <div class="entry-meta ">
                                        &nbsp;
                                    </div>
                                    <div class="entry-des">
                                        <h3><%
                                                string mcontent = objBlogReader.GetValue(1).ToString();
                                                if(mcontent.Length>20)
                                                {Response.Write(objBlogReader.GetValue(1).ToString().Substring(0,20)+"...");  }
                                                else
                                                { Response.Write(objBlogReader.GetValue(1).ToString()); }
                                                %></h3>
                                        <p><%
                                               string pcontent = objBlogReader.GetValue(2).ToString();
                                               if(pcontent.Length>20)
                                               { Response.Write(objBlogReader.GetValue(2).ToString().Substring(0,20)+"...");}
                                               else
                                               { Response.Write(objBlogReader.GetValue(2).ToString());}
                                                %></p>
                                        
                                    </div>
                                    <a class="button" href="BlogSingle.aspx?BNo=<%Response.Write(objBlogReader.GetValue(0).ToString()); %>">Read More</a>
                                </div>
                            </div>
                            

                           
                        </div>
                    </div>
                     <%
                                }
                                objBlogConnection.Close();
                                 %>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

