<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="Write-a-Review.aspx.cs" Inherits="LocalPandit.Write_a_Review" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                    <ul>
                                        <li><a href="#">Who We Are</a></li>
                                        <li><a href="#">How It Works?</a></li>
                                        <li><a href="#">Features</a></li>
                                    </ul>
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
                <h3>Write a Review</h3><hr />
                <p><%= Request.QueryString["companyName"].ToString()%></p>
                <span><%= Request.QueryString["Location"].ToString() + ", "+ Request.QueryString["City"].ToString()%></span>
                </div>
                  <div class="Form-class">
                        <div class="container-fluid">
                         <div class="container" style="padding-bottom: 8px;">
                          <div class="form-group ">
                            <div class="col-md-12 col-sm-12 col-xs-12"><asp:TextBox  ID="txtname" class="form-control" runat="server" placeholder="Your Name" required=""></asp:TextBox></div>
                          </div>
                         </div>
                          <div class="container" style="padding-bottom: 8px;">
                          <div class="form-group">
                            <div class="col-md-12 col-sm-12 col-xs-12"><asp:TextBox  ID="txtmobile" class="form-control" runat="server" placeholder="Your Mobile" required=""></asp:TextBox></div>
                          </div>
                         </div>
                          <div class="container" style="padding-bottom: 8px;">
                          <div class="form-group">
                            <div class="col-md-12 col-sm-12 col-xs-12"><asp:TextBox  ID="txtcity" class="form-control" runat="server" placeholder="Your City" required=""></asp:TextBox></div>
                          </div>
                         </div>
                          <div class="container" style="padding-bottom: 8px;">
                          <div class="form-group">
                            <div class="col-md-12 col-sm-12 col-xs-12"><asp:TextBox  ID="txtrvtxt" TextMode="MultiLine" placeholder="Write Review" class="form-control" runat="server" required=""></asp:TextBox></div>
                          </div>
                          </div>
                          <div class="container" style="padding-bottom: 8px;">
                          <div class="form-group">
                           <div class="col-md-12">
                             <asp:Button  ID="btnsubmit" class="cp-default-btn btn-block" runat="server" 
                                   Text="SUBMIT" onclick="btnsubmit_Click"></asp:Button>
                           </div>
                          </div>
                          </div>
                        </div>
                  </div> 
            </div>
        </section>
    </div>
</asp:Content>
