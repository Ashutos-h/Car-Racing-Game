<%@ Control Language="C#" AutoEventWireup="true" CodeFile="_Slider.ascx.cs" Inherits="_Slider" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<div id="owl-slide" class="owl-carousel">
			<%
                try
                {
                    var connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
                    SqlConnection objConnection = new SqlConnection(connStr);
                    string searchCmd = "Select * from Slider";
                    SqlCommand objCommand = new SqlCommand(searchCmd, objConnection);
                    objConnection.Open();
                    SqlDataReader objReader = objCommand.ExecuteReader();
                    while (objReader.Read())
                    {
            %>
    	<div class="item">
					<img src="<%Response.Write(objReader.GetValue(1).ToString()); %>" />
					<!-- Static Header -->
					<div class="header-text hidden-xs">
						<div class="col-md-12 text-left">
							<h1><%Response.Write(objReader.GetValue(2).ToString()); %></h1>
							<p><%Response.Write(objReader.GetValue(3).ToString()); %></p>

						</div>
					</div><!-- /header-text -->
				</div>
			<%
                    }

                    objConnection.Close();
                }catch(Exception ex)
                {
                    Response.Write("Contact Admin !!! Some thing wrong..." + ex.Message);
                }
                 %>
			</div>
