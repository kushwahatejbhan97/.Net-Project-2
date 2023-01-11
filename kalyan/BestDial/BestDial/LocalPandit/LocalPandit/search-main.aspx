<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="search-main.aspx.cs" Inherits="LocalPandit.search_main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    
    .search-layout2-holder .search-layout2-inner {
    position: relative;
    padding: 68px 15px 0;
    -webkit-box-shadow: 0px 5px 10px 0px rgba(62, 62, 62, 0.3);
    -moz-box-shadow: 0px 5px 10px 0px rgba(62, 62, 62, 0.3);
    box-shadow: 0px 5px 10px 0px rgba(62, 62, 62, 0.3);
}

@media only screen and (max-width: 479px)
{
       .s-space-custom3 
       {
         padding: 10px 0 30px;
       }
}

.select2-container--classic .select2-results>.select2-results__options {
    max-height: 389px;
    overflow-y: auto;
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
        <!-- Search Area Start Here -->
        <section class="search-layout2 bg-accent">
            <div class="search-layout2-holder">
                <div class="container-fluid">
                    <div id="cp-search-form" class="bg-body search-layout2-inner">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class=" search-input-area input-icon-keywords">
                                  <asp:DropDownList ID="ddlkey" runat="server" class="select2" DataTextField="CompanyName" DataValueField="CompanyName" AppendDataBoundItems="true" DataSourceID="SqlDataSourceKeyWord" ValidationGroup="serchList">
                                   <asp:ListItem Value="select">Enter Keywords here ...</asp:ListItem>
                                 </asp:DropDownList>
                                 <asp:RequiredFieldValidator InitialValue="select" ControlToValidate="ddlkey" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Looking For" Display="Dynamic" ForeColor="Red" ValidationGroup="serchList"></asp:RequiredFieldValidator>
                                 <asp:SqlDataSource ID="SqlDataSourceKeyWord" runat="server" 
                                         ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                        SelectCommand="SELECT DISTINCT CompanyName FROM NewListing_Website_listing_tbl UNION ALL SELECT DISTINCT CategoryName FROM NewListing_Website_category_tbl UNION ALL SELECT DISTINCT Tags FROM NewListing_Website_tags_tbl UNION ALL SELECT DISTINCT Keywords FROM NewListing_Website_Cat_Keyword_tbl">
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="col-lg-11 col-md-11 col-sm-11 col-11">
                                <div class=" search-input-area input-icon-location">
                                  <asp:DropDownList ID="ddlcity" runat="server" class="select2" DataSourceID="SqlDataSourceCity" DataTextField="City" DataValueField="City" AppendDataBoundItems="true" ValidationGroup="serchList">
                                      <asp:ListItem Value="select">Select Location</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceCity" runat="server" 
                                         ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                        SelectCommand="SELECT DISTINCT [City] FROM [NewListing_Website_listing_tbl] ORDER BY [City]">
                                    </asp:SqlDataSource>
                                    <asp:RequiredFieldValidator InitialValue="select" ControlToValidate="ddlcity" ID="reqCity" runat="server" ErrorMessage="Select City" Display="Dynamic" ForeColor="Red" ValidationGroup="serchList"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                            <div class="col-lg-1 col-md-1 col-sm-1 col-1" style="    padding-right: 1px;padding-left: 1px;">
                               <asp:ImageButton ID="ImagelnkSearchList" ImageUrl="/img/btnSearch.png" runat="server" OnClick="lnkSearchList_Click" style="    margin-left: -35px;   height: 40px;   width: 45px;" ValidationGroup="serchList"></asp:ImageButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>
