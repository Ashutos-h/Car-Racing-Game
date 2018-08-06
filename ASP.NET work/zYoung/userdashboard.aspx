<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterOther.master" AutoEventWireup="true" CodeFile="userdashboard.aspx.cs" Inherits="userdashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section id="container">
        <div class="wrap-container">

            <!-----------------Content-Box-------------------->
            <div id="main-content">
                <div class="wrap-content">
                    <div class="row">
                        <article class="single-post zerogrid">
                            <div class="row">

                              <div>
                                  <div style="float:left;width:20%" >
                                      <ul>
                                          <li><a href="#">Profile</a></li>
                                          <li><a href="BlogAdd.aspx">Blog Add</a></li>
                                          <li><a href="#">Blog Update</a></li>
                                          <li><a href="#">Logout</a></li>
                                      </ul>
                                  </div>
                                  <div style="float:right;width:80%" >
                                      <h2 style="border-bottom:2px solid"> Update your Profile</h2>
                                      <div class="form-group" style="width:40%">
                              <label>User Name</label>
                                          <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                          </div>
                                         <div class="form-group" style="width:40%">
                              <label>Password</label>
                                          <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                                          </div>
                                  </div>
                                  <div>

                                  </div>
                              </div>

                               
                            </div>
                        </article>

                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

