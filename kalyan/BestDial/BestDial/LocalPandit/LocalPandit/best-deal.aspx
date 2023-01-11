<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="best-deal.aspx.cs" Inherits="LocalPandit.best_deal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script>
    function goBack() {
        window.history.back();
    }
</script>
<style>
    .Form-class
    {
    background: #efebeb;
    padding: 1em;
    border-radius: 1em;
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
                                    <%--<ul>
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

    <div id="wrapper">
        <section class="bg-accent s-space-regular">
            <div class="container" style="margin-bottom:20px;">
                <div class="section-title-dark">
                      <h2>Best Deal</h2>
                    <p>It’s very simple to find everything near you. Fill this form and avail Best Deal.</p>
                </div>
                  <div class="Form-class">
                        <div class="container-fluid">
                         <div class="row">
                          <div class="form-group">
                            <div class="col-md-4 col-sm-4 col-xs-4" style="width: 108px;"><span>Looking for</span></div>
                            <div class="col-md-7 col-sm-7 col-xs-7"><asp:TextBox  ID="txtUserlookingfor" class="form-control" runat="server" placeholder=" e.g: Doctor, Carpenter" ValidationGroup="PostReqHome"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUserlookingfor" runat="server" ErrorMessage="Enetr what you want" Display="Dynamic" ForeColor="Red" ValidationGroup="PostReqHome"></asp:RequiredFieldValidator>
                            </div>
                          </div>
                         </div>
                          <div class="row">
                          <div class="form-group">
                            <div class="col-md-4 col-sm-4 col-xs-4" style="width: 108px;"><span>Your Name</span></div>
                            <div class="col-md-7 col-sm-7 col-xs-7"><asp:TextBox  ID="txtUsername" class="form-control" runat="server" placeholder=" e.g: Rajesh verma" ValidationGroup="PostReqHome"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtUsername" runat="server" ErrorMessage="Enetr your name" Display="Dynamic" ForeColor="Red" ValidationGroup="PostReqHome"></asp:RequiredFieldValidator>
                            </div>
                          </div>
                         </div>
                          <div class="row">
                          <div class="form-group">
                            <div class="col-md-4 col-sm-4 col-xs-4" style="width: 108px;"><span>Your Mobile</span></div>
                            <div class="col-md-7 col-sm-7 col-xs-7"><asp:TextBox  ID="txtUsermobile" class="form-control" runat="server" placeholder=" e.g: 8125000800" ValidationGroup="PostReqHome"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtUsermobile" runat="server" ErrorMessage="Enetr your Mobile" Display="Dynamic" ForeColor="Red" ValidationGroup="PostReqHome"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="Reg2" runat="server"   ControlToValidate="txtUsermobile" ErrorMessage="Enter correct phone no."  ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" ValidationGroup="PostReqHome"></asp:RegularExpressionValidator>
                            </div>
                          </div>
                         </div>
                          <div class="row">
                          <div class="form-group">
                            <div class="col-md-4 col-sm-4 col-xs-4" style="width: 108px;"><span>Email ID </span></div>
                            <div class="col-md-7 col-sm-7 col-xs-7"><asp:TextBox  ID="txtuserEmail" class="form-control" runat="server" placeholder=" e.g: abc@gmail.com" ValidationGroup="PostReqHome"></asp:TextBox></div>
                          </div>
                         </div>
                          <div class="row">
                          <div class="form-group">
                            <div class="col-md-4 col-sm-4 col-xs-4" style="width: 108px;"><span>Your City</span></div>
                            <div class="col-md-7 col-sm-7 col-xs-7"><asp:TextBox  ID="txtUserCity" class="form-control" runat="server" placeholder=" e.g: Hyderabad" ValidationGroup="PostReqHome"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtUserCity" runat="server" ErrorMessage="Enetr your city" Display="Dynamic" ForeColor="Red" ValidationGroup="PostReqHome"></asp:RequiredFieldValidator>
                            </div>
                          </div>
                          </div>
                          <div class="row">
                          <div class="form-group">
                           <div class="col-md-12">
                             <asp:Button  ID="btnsubmit" class="cp-default-btn btn-block" runat="server" 
                                   Text="SUBMIT" ValidationGroup="PostReqHome" onclick="btnsubmit_Click"></asp:Button>
                           </div>
                          </div>
                          </div>
                        </div>
                  </div> 
                   <div class="Form-text">  
                   <br />
                        <p style="text-align:left;font-size: 12px;line-height: 14px;">Your requirement is sent to select relevant businesses.</p>
                        <p style="text-align:left;font-size: 12px;line-height: 14px;">Businesses compete with each other to get you the </p>
                        <p style="text-align:left;font-size: 12px;line-height: 14px;">You choose whatever suits you best </p>
                        <p style="text-align:left;font-size: 12px;line-height: 14px;">Contact Info is sent to you by SMS/Email </p>
                  </div>
            </div>
        </section>
    </div>
</asp:Content>
