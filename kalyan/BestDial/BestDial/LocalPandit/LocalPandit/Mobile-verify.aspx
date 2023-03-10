<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="Mobile-verify.aspx.cs" Inherits="LocalPandit.Mobile_verify" %>
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
    padding: 100px 0 70px;
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
                                            <h4>First verify your mobile No.</h4>
                                        </div>
                                        <div class="row"  id="loginmain" runat="server">
                                            <div class="col-sm-3 col-12">
                                                <label class="control-label" for="seller-name">Mobile<span> *</span></label>
                                            </div>
                                            <div class="col-sm-9 col-12">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtmobile" class="form-control validate" ReadOnly="true" runat="server" Placeholder="Enter Mobile" ValidationGroup="CheckAc"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtmobile" runat="server" ErrorMessage="Enter Mobile!" Display="Dynamic" ForeColor="Red" ValidationGroup="CheckAc"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="Reg2" runat="server"   ControlToValidate="txtmobile" ErrorMessage="Enter correct phone no."  ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" ValidationGroup="CheckAc"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                              <div class="col-sm-9 col-12">
                                                <div class="form-group">
                                                  <center><asp:Button ID="btnSu" runat="server" class="cp-search-btn" Text="GET OTP" onclick="btncheckEmail_Click" ValidationGroup="CheckAc"></asp:Button></center>  
                                                </div>
                                              </div>
                                        </div>

                                        <div class="row"  id="VeryfyOtp" runat="server" visible="false">
                                            <div class="col-sm-3 col-12">
                                                <label class="control-label" for="seller-name">Enter OTP<span> *</span></label>
                                            </div>
                                            <div class="col-sm-9 col-12">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtotp" class="form-control validate" runat="server" Placeholder="Enter OTP" ValidationGroup="CheckOTP"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtotp" runat="server" ErrorMessage="Enter Mobile!" Display="Dynamic" ForeColor="Red" ValidationGroup="CheckOTP"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                              <div class="col-sm-9 col-12">
                                                <div class="form-group">
                                                  <center><asp:Button ID="Button1" runat="server" class="cp-search-btn" Text="Submit OTP" onclick="btnVeryOTP_Click" ValidationGroup="CheckOTP"></asp:Button></center>  
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
