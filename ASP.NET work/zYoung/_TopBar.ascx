<%@ Control Language="C#" AutoEventWireup="true" CodeFile="_TopBar.ascx.cs" Inherits="_TopBar" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<div class="top-header">
    <div class="zerogrid">
        <div class="row">
            <div class="col-1-3">
                <div class="wrap-col">
                    <%
                        var connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
                        SqlConnection objConnection = new SqlConnection(connStr);
                        string searchCmd = "Select * from Contact";
                        string mobileno = "";
                        SqlCommand objCommand = new SqlCommand(searchCmd, objConnection);
                        objConnection.Open();
                        SqlDataReader objReader = objCommand.ExecuteReader();
                        if (objReader.Read())//if start
                        {
                    %>
                    <span><i class="fa fa-map-marker"></i>
                        <strong>
                        <% 
                            Response.Write(objReader.GetValue(2).ToString()+", ");
                            Response.Write(objReader.GetValue(3).ToString());
                        %>
                        </strong>, 
                        
                        <% Response.Write(objReader.GetValue(4).ToString()); %></span>
                    <%
                            mobileno = objReader.GetValue(7).ToString();
                        }//if close
                        objConnection.Close();
                    %>
                </div>
            </div>
            <div class="col-1-3">
                <div class="wrap-col">
                    <span><i class="fa fa-phone"></i><% Response.Write(mobileno.ToString()); %></span>
                </div>
            </div>
            <div class="col-1-3">
                <div class="wrap-col">
                    <span><i class="fa fa-clock-o"></i>Mo-Fr 11:00-00:00, Sa-Sa 15:00-00:00</span>
                </div>
            </div>
        </div>
    </div>
</div>
