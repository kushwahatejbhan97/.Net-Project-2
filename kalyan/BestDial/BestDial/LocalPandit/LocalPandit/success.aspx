<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="LocalPandit.success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section class="bg-accent s-space-regular">
        <form id="firstForm" >
            <div class="container">
                <div class="section-title-dark">
                     <img src="/img/jslogo.png" class="img-thumbnail" />
                </div>
                <ul class="process-area">
                    <li>
                       
                    </li>
                    <li>
                        <h3>Congratulations!</h3>
                        <p> Your business listing has been added successfully.</p><hr />
                        <h4>Verify Your Mobile </h4>
                        <span>We have send you an OTP on <%=  Session["CompanyMobile"].ToString()%></span><br /><br />
                        <div class="container-fluid">
                          <div class="col-md-8 col-sm-8 col-xs-8"><asp:TextBox ID="txtOTP" class="form-control" runat="server" placeholder="Enter OTP Here.."></asp:TextBox></div>
                          <div class="col-md-4 col-sm-4 col-xs-4"><asp:Button ID="Button2"  class="cp-default-btn" runat="server" Text="SUBMIT" onclick="Button2_Click"></asp:Button></div>
                          <asp:Label ID="lblerreor" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                        <br />
                        <p><a href="/Main.aspx">VERIFY LATER</a></p>
                    </li>
                </ul>
            </div>
            </form>
        </section>
</asp:Content>
