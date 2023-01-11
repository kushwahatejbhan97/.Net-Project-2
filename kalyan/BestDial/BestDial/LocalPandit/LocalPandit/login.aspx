<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LocalPandit.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    
    

@media only screen and (max-width: 479px)
{
.s-space-bottom-full {
    padding: 100px 0px 60px;
}
}


@media only screen and (max-width: 767px)
{
.s-space-bottom-full {
   
}
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Header Area Start Here -->
         <header>
            <!-- Mobile Menu Area Start -->
            <div class="mobile-menu-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mobile-menu" style="display:none;">
                                <nav id="dropdown">
                                   <%-- <ul>
                                        <li><a href="#">Who We Are</a></li>
                                        <li><a href="#">How It Works?</a></li>
                                        <li><a href="#">Features</a></li>
                                    </ul>--%>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Mobile Menu Area End -->
        </header>
        <!-- Header Area End Here -->

        <section class="s-space-bottom-full bg-accent-shadow-body">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="gradient-wrapper">
                            <div class="input-layout1 gradient-padding post-ad-page">
                                <div id="post-add-form">
                                    <div class="container-fluid">
                                        <div class="section-title-left-dark border-bottom d-flex">
                                            <h3><img src="img/post-add2.png" alt="post-add" class="img-fluid">Login Account</h3>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-3 col-12">
                                                <label class="control-label" for="seller-name">Mobile<span> *</span></label>
                                            </div>
                                            <div class="col-sm-9 col-12">
                                                <div class="form-group">
                                                    <asp:TextBox ID="username_txt" class="form-control validate" runat="server" Placeholder="Enter Mobile" ValidationGroup="LoginAc"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="username_txt" runat="server" ErrorMessage="Enter Mobile!" Display="Dynamic" ForeColor="Red" ValidationGroup="LoginAc"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="Reg2" runat="server"   ControlToValidate="username_txt" ErrorMessage="Enter correct phone no."  ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" ValidationGroup="LoginAc"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-3 col-12">
                                                <label class="control-label" for="seller-mail">Password<span> *</span></label>
                                            </div>
                                            <div class="col-sm-9 col-12">
                                                <div class="form-group">
                                                    <asp:TextBox ID="pwd_txt" class="form-control validate" runat="server" Placeholder="Enter password" TextMode="Password" ValidationGroup="LoginAc"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="pwd_txt" runat="server" ErrorMessage="Enter Password!" Display="Dynamic" ForeColor="Red" ValidationGroup="LoginAc"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                                <div class="form-group">
                                                  <center> <asp:Label ID="lblError" style="text-align:center" ForeColor="Red" runat="server"></asp:Label></center>
                                                  <center><asp:Button ID="btnlogin" runat="server" class="cp-search-btn" Text="Login" onclick="btnlogin_Click" ValidationGroup="LoginAc"></asp:Button></center>  
                                                </div>
                                                <div class="form-group">
                                                  <span><span class="pull-left"><a href="/free-listing.aspx">Free Listing</a></span><span class="pull-right"><a href="/Reset-password.aspx">Forgot Password?</a></span></span>
                                                </div>
                                                
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>
