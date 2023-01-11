<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="tags.aspx.cs" Inherits="LocalPandit.tags" %>
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
            <div class="container">
                <div class="section-title-dark" style="background-image:url('/img/cat-service.jpg');">
                      <div id="ImageAvailable1" runat="server">
                      <span><img src='http://bestdial.co.in/upload_category/cate_banner/<%= Request.QueryString["catImgId"].ToString() %>_1.jpg' alt='<%= Request.QueryString["url"].ToString() %>' /></span>
                    </div>
                   <p style="text-align: left;  margin: 0 0 11px 0; background: #1fa287; color: white;  padding: 0.1em;"> &nbsp;<strong><asp:Label ID="lblcatname" runat="server"></asp:Label></strong></p>
                </div>
                <div class="row">
                   <div class="order-xl-12 order-lg-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="sidebar-item-box">
                        <div class="gradient-wrapper">
                            <asp:Repeater ID="RepeaterTags" runat="server" DataSourceID="SqlDataSourcetaglistitem">
                              <HeaderTemplate> <ul class="sidebar-category-list"></HeaderTemplate>
                                <ItemTemplate>
                                  <li>
                                  <div id="ImageAvailable" runat="server">
                                    <a href='List-tag-wise.aspx?tagId=<%# Eval("TagId") %>&city=&keyword=<%# Eval("Tags") %>'>
                                    <img  src='http://bestdial.co.in/upload_tag/icon/<%# Eval("TagId") %>.jpg'  class="img-fluid" />
                                    <%# Eval("Tags")%><span><i class="fa fa-angle-double-right fa-2x"></i></span>
                                   </a>
                                   </div>

                                  <%--<div id="NoImageAvailable" runat="server" visible="false">
                                    <a href='List-tag-wise.aspx?tagId=<%# Eval("TagId") %>&city=&keyword=<%# Eval("Tags") %>'>
                                    <img  src="img/tag-ico.png"  class="img-fluid" />
                                    <%# Eval("Tags")%><span><i class="fa fa-angle-double-right fa-2x"></i></span>
                                   </a>
                                   </div>--%>

                                  </li>
                                  <asp:HiddenField ID="postid" Value='<%# Eval("TagId") %>' runat="server"></asp:HiddenField>
                                </ItemTemplate>
                              <FooterTemplate> </ul></FooterTemplate>
                            </asp:Repeater>
                             <asp:SqlDataSource ID="SqlDataSourcetaglistitem" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                SelectCommand="SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl] WHERE ([Catid] = @Catid)">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="Catid" 
                                        QueryStringField="catid" Type="Int32" />
                                </SelectParameters>
                           </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </section>
</asp:Content>
