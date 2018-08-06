<%@ Control Language="C#" AutoEventWireup="true" CodeFile="_Logo.ascx.cs" Inherits="_Logo" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<div class="logo">
    <%
        var connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
        SqlConnection objConnection = new SqlConnection(connStr);
        SqlCommand objCommand = new SqlCommand("Select * from Logo order by Id desc", objConnection);
        objConnection.Open();
        SqlDataReader objReader = objCommand.ExecuteReader();
        if(objReader.Read())
        {
         %>
        <a href="#"><img src="<%Response.Write(objReader.GetValue(1).ToString()); %>" /></a>
        <span><%Response.Write(objReader.GetValue(2).ToString()); %></span>
        <%
        }
        objConnection.Close();
        %>
</div>
