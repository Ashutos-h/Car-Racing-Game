<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterOther.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-----------------Content-Box-------------------->
				<section class="content-box zerogrid">
					<div class="row wrap-box"><!--Start Box-->
						<h3 class="t-center" style="font-size: 30px;margin: 10px 0 30px">Contact Form</h3>
						
						<!--Start Map-->
						<div id="map" style="height: 450px;"></div>
						<!--End Map-->
						
						<div id="contact_form">
							<form name="form1" id="ff" method="post" action="contact.php">
								<label class="row">
									<div class="col-1-3">
										<div class="wrap-col">
											<input type="text" name="name" id="name" placeholder="Enter name" required="required" />
										</div>
									</div>
									<div class="col-1-3">
										<div class="wrap-col">
											<input type="email" name="email" id="email" placeholder="Enter email" required="required" />
										</div>
									</div>
									<div class="col-1-3">
										<div class="wrap-col">
											<input type="text" name="subject" id="subject" placeholder="Subject" required="required" />
										</div>
									</div>
								</label>
								<label class="row">
									<div class="wrap-col">
										<textarea name="message" id="message" class="form-control" rows="4" cols="25" required="required"
										placeholder="Message"></textarea>
									</div>
								</label>
								<center><input class="sendButton" type="submit" name="submitcontact" value="Submit"></center>
							</form>
						</div>
					</div>
				</section>
</asp:Content>

