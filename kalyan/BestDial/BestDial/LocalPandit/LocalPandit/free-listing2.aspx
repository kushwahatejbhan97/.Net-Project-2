<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="free-listing2.aspx.cs" Inherits="LocalPandit.free_listing2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
@media only screen and (max-width: 479px)
{
       .s-space-custom3 
       {
         padding: 10px 0 30px;
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

                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Mobile Menu Area End -->
        <style>
            label {
                padding-left: 5px;
                display: inline-block;
                max-width: 100%;
                margin-bottom: 5px;
                font-weight: 700;
            }
        </style>
    </header>
    <!-- Header Area End Here -->
    <section class="search-layout2 bg-accent" style="padding-top: 32px;">
        <div class="search-layout2-holder">
            <div class="container-fluid">
                <div id="cp-search-form" class="bg-body search-layout2-inner">
                    <div class="row">
                        <div class="col-lg-11 col-md-11 col-sm-11 col-11">
                            <h4 style="    font-weight: 600;">Listings Information</h4>
                            <hr />
                            <div class=" search-input-area input-icon-keywords">
                                <asp:DropDownList ID="DropDownList2" runat="server" class="select2" DataTextField="CategoryName" DataValueField="Catid" AppendDataBoundItems="true" DataSourceID="SqlDataSourceCate" AutoPostBack="true">
                                    <asp:ListItem Value="0">Select Category</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator InitialValue="0" ControlToValidate="DropDownList2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Looking For" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="s-space-bottom-full bg-accent-shadow-body" style="background: white;">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-8 col-md-12 col-sm-12 col-12" style="margin-top: 10px !important;">
                    <div class="gradient-wrapper mb--sm">

                        <div class="contact-layout1 gradient-padding" style="padding: 0px 15px 10px !important;">

                            <div id="contact-form" class="contact-form">
                                <div class="row">

                                    <div class="col-12" id="Tagss" runat="server">
                                        <h4 style="color:#139e81"> Select Tags*</h4>
                                        <hr />
                                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSourceTagsName" DataTextField="Tags" RepeatDirection="Horizontal" RepeatColumns="1" CssClass="myCheck" DataValueField="TagId">
                                        </asp:CheckBoxList>
                                    </div>

                                    <div class="col-12" id="Ksyworsd" runat="server">
                                        <h4 style="color:#139e81">Select Services Keyword</h4>
                                        <hr />
                                        <asp:CheckBoxList ID="CheckBoxList2" runat="server" Class="form-control" DataSourceID="SqlDataSourceCatKeywordname" DataTextField="Keywords" RepeatDirection="Horizontal" RepeatColumns="1" CssClass="myCheck" DataValueField="KeywordId">
                                        </asp:CheckBoxList>

                                    </div>

                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6 col-sm-12 col-12" id="btnsubmit" runat="server">
                                    <div class="form-group">
                                        <asp:Button ID="Button1" class="cp-default-btn-sm" runat="server" Text="Submit & Continue" onclick="btnaddlistingsite_Click"></asp:Button>
                                    </div>
                                </div>
                                <div class="col-lg-8 col-md-8 col-sm-6 col-sm-12 col-12">
                                    <div class='form-response'></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <asp:SqlDataSource ID="SqlDataSourceCate" runat="server"  ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"SelectCommand="SELECT [Catid], [CategoryName] FROM [NewListing_Website_category_tbl] ORDER BY CategoryName">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceTagsName" runat="server"  ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"SelectCommand="SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl] WHERE ([Catid] = @Catid) ORDER BY Tags">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceCatKeywordname" runat="server"  ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"SelectCommand="SELECT [KeywordId], [CatId], [Keywords] FROM [NewListing_Website_Cat_Keyword_tbl] WHERE ([Catid] = @Catid) ORDER BY Keywords">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>