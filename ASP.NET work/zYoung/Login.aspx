<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterOther.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="container">
        <div class="wrap-container">

            <!-----------------Content-Box-------------------->
            <div id="main-content">
                <div class="wrap-content">
                    <div class="row">
                        <article class="single-post zerogrid">
                            <div class="row">

                                <div class="col-1-2">
                                    <div class="wrap-col">

                                        <div class="box-entry">
                                            <h2>Login</h2>
                                            <div class="entry-details">
                                                <div class="entry-meta ">
                                                    &nbsp;
                                                </div>
                                                <div class="entry-des">
                                                    <fieldset>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="txtEmail" class="form-control" runat="server" placeholder="Email" ></asp:TextBox>

                                                        </div>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                                        </div>

                                                         <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-lg btn-success btn-block" OnClick="btnLogin_Click" />

                                                    </fieldset>

                                                </div>
                                               
                                            </div>
                                        </div>



                                    </div>
                                </div>

                                <div class="col-1-2">
                                    <div class="wrap-col">

                                        <div class="box-entry">
                                            <h2>Sign Up</h2>
                                            <div class="entry-details">
                                                <div class="entry-meta ">
                                                    &nbsp;
                                                </div>
                                                <div class="entry-des">
                                                    <fieldset>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="txtBloggerName" class="form-control" runat="server" placeholder="Name"></asp:TextBox>
                                                            <asp:TextBox ID="txtBloggerEmail" class="form-control" runat="server" placeholder="Email"></asp:TextBox>

                                                        </div>
                                                        <div class="form-group">
                                                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                                        </div>

                                                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

                                                    </fieldset>

                                                </div>
                                                <asp:Button ID="btnSignup" runat="server" Text="SignUp" CssClass="btn btn-lg btn-success btn-block" OnClick="btnSignup_Click" />
                                            </div>
                                        </div>



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

