<%@ Page Title="" Language="C#" MasterPageFile="~/ADManager/AdminMaster.master" AutoEventWireup="true" CodeFile="Updateblog.aspx.cs" Inherits="Updateblog" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Blog Update/Delete</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Blog Update/Delete
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>Image</th>
                                <th>BlogTitle</th>
                                <th>Content</th>
                                <th>BloggerName</th>
                                <th>status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                var connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
                                string searchCmd = "Select * from Blogs";
                                SqlConnection objConnection = new SqlConnection(connStr);
                                SqlCommand objCommand = new SqlCommand(searchCmd, objConnection);
                                objConnection.Open();
                                SqlDataReader objReader = objCommand.ExecuteReader();
                                while(objReader.Read())
                                {
                                 %>
                            <tr class="odd gradeX">
                                
                                
                               <td><img src="<%Response.Write(objReader.GetValue(3).ToString()); %>" class="thumbnail" style="height:100px" /></td>
                               <td><%Response.Write(objReader.GetValue(1).ToString()); %></td>
                                 
                                <td class="center"><%Response.Write(objReader.GetValue(2).ToString().Substring(0,50)); %></td>
                                <td><%Response.Write(objReader.GetValue(5).ToString()); %></td>
                                <td><%Response.Write(objReader.GetValue(6).ToString()); %></td>

                                <td class="center"><a href="#" class="btn btn-info" >Update</a>&nbsp;<a href="#" class="btn btn-danger" >Delete</a></td>
                            </tr>
                            <%
                                }
                                objReader.Close();
                                 %>
                        </tbody>
                    </table>
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</asp:Content>

