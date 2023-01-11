<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="Explore-A-to-Z.aspx.cs" Inherits="LocalPandit.Explore_A_to_Z" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.fa-2x {
    font-size: 1.5em;
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


<section class="service-layout1 bg-accent s-space-custom3">
            <div class="container" style="margin-bottom:10px;"> 
                <div class="section-title-dark">
                    <p style="text-align:left; margin: 0 0 11px 0;">Explore A to Z </p>
                </div>
                <div class="row">
                   <div class="order-xl-12 order-lg-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="sidebar-item-box">
                        <div class="gradient-wrapper">
                        <asp:Repeater ID="RepeaterPopularEZ" runat="server" DataSourceID="SqlDataSourcePopularEZ">
                          <HeaderTemplate><ul class="sidebar-category-list"></HeaderTemplate>
                            <ItemTemplate>
                                 <li>
                                   <a href='tags.aspx?catid=<%# Eval("Catid")%>&Type=Industries&url=<%# Eval("urlc")%>&catImgId=<%# Eval("CatImageID")%>'><img src='/upload_category/icon/<%# Eval("CatIConImageID")%>.jpg'  alt="" class="img-fluid"><%# Eval("CategoryName")%><span><i class="fa fa-angle-double-right fa-2x"></i></span></a>
                                </li>
                            </ItemTemplate>
                           <FooterTemplate></ul></FooterTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSourcePopularEZ" runat="server"  ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                        SelectCommand="SELECT [Catid], [CategoryName], [Priority], [Enable], [urlc], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] ORDER BY [CategoryName]">
                    </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </section>
</asp:Content>
