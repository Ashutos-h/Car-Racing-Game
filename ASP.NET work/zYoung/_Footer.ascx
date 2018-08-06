<%@ Control Language="C#" AutoEventWireup="true" CodeFile="_Footer.ascx.cs" Inherits="_Footer" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!--////////////////////////////////////Footer-->
		<footer>
			<div class="zerogrid wrap-footer">
				<div class="row">
					<div class="col-1-4 col-footer-1">
						<div class="wrap-col">
                            <%
                                var connStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
                                SqlConnection objConnection = new SqlConnection(connStr);
                                string searchCmd = "SELECT * FROM about";
                                SqlCommand objCommand = new SqlCommand(searchCmd, objConnection);
                                objConnection.Open();
                                SqlDataReader objReader = objCommand.ExecuteReader();
                                if(objReader.Read())
                                {
                            %>
							<h3 class="widget-title"><%Response.Write(objReader.GetValue(1).ToString()); %></h3>
							<p><%Response.Write(objReader.GetValue(2).ToString()); %></p>
							

                            <%
                                }
                                objConnection.Close();
                                 %>
						</div>
					</div>
					<div class="col-1-4 col-footer-2">
						<div class="wrap-col">
							<h3 class="widget-title">Quick Links</h3>
							<ul>
								<li><a href="Default.aspx">HOME PAGE</a></li>
								<li><a href="About.aspx">ABOUT</a></li>
								<li><a href="#">BLOG</a></li>
								<li><a href="Contact.aspx">CONTACT</a></li>
							</ul>
						</div>
					</div>
					<div class="col-1-4 col-footer-3">
                         <%     var TimingconnStr = ConfigurationManager.ConnectionStrings["connectDB"].ToString();
                                SqlConnection TimingobjConnection = new SqlConnection(TimingconnStr);
                                string timingsearchCmd = "SELECT * FROM timings";
                                SqlCommand timingobjCommand = new SqlCommand(timingsearchCmd,TimingobjConnection);
                                TimingobjConnection.Open();
                                SqlDataReader timingobjReader = timingobjCommand.ExecuteReader();
                                if(timingobjReader.Read())
                                {
                            %>
						<div class="wrap-col">
							<h3 class="widget-title">Opening Hours</h3>
                            	<p>
									<strong>Opening Hours:</strong>
									<br>
									<%Response.Write(timingobjReader.GetValue(1).ToString()); %>:<%Response.Write(timingobjReader.GetValue(2).ToString()); %>
									<br>
								<%Response.Write(timingobjReader.GetValue(3).ToString()); %>:<%Response.Write(timingobjReader.GetValue(4).ToString()); %>
								</p>
				
						</div>
                        <%
                                }
                                TimingobjConnection.Close();
                                 %>
					</div>
					<div class="col-1-4 col-footer-4">
						<div class="wrap-col">
							<h3 class="widget-title">Where to Find Us</h3>
							<div class="row">
								<address>
									<strong>AUBERGE LONDON</strong>
									<br>
									Ut wisi enim
									<br>
									Minim veniam 12345
									<br>
									Exerci Tation
								</address>
							
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="copyright">
				<div class="zerogrid wrapper">
					Copyright @ zYoung - Designed by <a href="https://www.zerotheme.com" title="free website templates">ZEROTHEME</a>
					<ul class="quick-link">
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>
		</footer>
