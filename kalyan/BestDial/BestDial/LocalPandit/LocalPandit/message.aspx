<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="message.aspx.cs" Inherits="LocalPandit.message" %>
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
    .container-fluid 
    {
        margin-bottom:10px;
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
            <div class="container">
                <div class="section-title-dark">
                      <h3><%= Request.QueryString["companyName"].ToString()%></h3>
                    <p><%= Request.QueryString["Location"].ToString() + ", "+ Request.QueryString["City"].ToString()%></p>
                </div>
                  <div class="Form-class">
                        <div class="container-fluid">
                        <h4 class="text-center">Send Enquiry</h4>
                        <hr style="margin-top: 0px; margin-bottom: 0px;border: 0; border-top: 1px solid #eee;" />
                          <div class="row">
                          <div class="container-fluid">
                            <div class="col-md-4 col-sm-4 col-xs-4" style="width: 108px;"><span>Your Name</span></div>
                            <div class="col-md-7 col-sm-7 col-xs-7"><asp:TextBox  ID="txtEname" class="form-control" runat="server" placeholder=" e.g: Rajesh verma" ValidationGroup="ContactCompany"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtEname" runat="server" ErrorMessage="Enetr your name" Display="Dynamic" ForeColor="Red" ValidationGroup="ContactCompany"></asp:RequiredFieldValidator>
                            </div>
                            
                          </div>
                         </div>
                          <div class="row">
                          <div class="container-fluid">
                            <div class="col-md-4 col-sm-4 col-xs-4" style="width: 108px;"><span>Your Mobile</span></div>
                            <div class="col-md-7 col-sm-7 col-xs-7"><asp:TextBox  ID="txtEmobileno" class="form-control" runat="server" placeholder=" e.g: 8125000800"  ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtEmobileno" runat="server" ErrorMessage="Enetr your Mobile" Display="Dynamic" ForeColor="Red" ValidationGroup="ContactCompany" ></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="Reg2" runat="server"   ControlToValidate="txtEmobileno" ErrorMessage="Enter correct phone no."  ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" ValidationGroup="ContactCompany"></asp:RegularExpressionValidator>
                            </div>
                             
                          </div>
                         </div>
                          <div class="row">
                          <div class="container-fluid">
                            <div class="col-md-4 col-sm-4 col-xs-4" style="width: 108px;"><span>Email ID </span></div>
                            <div class="col-md-7 col-sm-7 col-xs-7"><asp:TextBox  ID="txtemail" class="form-control" runat="server" placeholder=" e.g: abc@gmail.com" ValidationGroup="ContactCompany"></asp:TextBox></div>
                          </div>
                         </div>
                          <div class="row">
                          <div class="container-fluid">
                            <div class="col-md-4 col-sm-4 col-xs-4" style="width: 108px;"><span>Message</span></div>
                            <div class="col-md-7 col-sm-7 col-xs-7"><asp:TextBox  ID="txtEmessage" class="form-control" TextMode="MultiLine" runat="server"  ValidationGroup="ContactCompany"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtEmessage" runat="server" ErrorMessage="Enetr your Query" Display="Dynamic" ForeColor="Red" ValidationGroup="ContactCompany"></asp:RequiredFieldValidator>
                            </div>
                          </div>
                          </div>
                          <div class="row">
                          <div class="form-group">
                           <div class="col-md-12">
                             <asp:Button  ID="btnsubmit" 
                                   class="cp-default-btn pull-right direction-img btn-block" runat="server" 
                                   Text="SUBMIT" ValidationGroup="ContactCompany" onclick="btnsubmit_Click"></asp:Button>
                           </div>
                          </div>
                          </div>
                        </div>
                  </div> 
                   <div class="Form-text">  
                   <br />
                        <p style="text-align:left;font-size: 12px;line-height: 14px;">Your requirement is sent to <%= Request.QueryString["companyName"].ToString()%>.</p>
                        <p style="text-align:left;font-size: 12px;line-height: 14px;">Contact Info is sent to you by SMS/Email </p>
                  </div>
            </div>
        </section>
    </div>
</asp:Content>