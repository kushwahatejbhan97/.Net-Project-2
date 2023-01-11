<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="free-listing.aspx.cs" Inherits="LocalPandit.free_listing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
    input[type=checkbox], input[type=radio] {
    margin: 4px 4px 0 !important;
    margin-top: 1px\9;
    line-height: normal;
}
    @media only screen and (max-width: 479px)
    {
.s-space-bottom-full {
    padding: 0 0 6px;
}
}
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

   <section class="s-space-bottom-full bg-accent-shadow-body">
            
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12"  style="margin-top: 50px !important;">
                        <div class="gradient-wrapper mb--sm">
                            <div class="contact-layout1 gradient-padding" style="padding: 0px 15px 10px !important;">
                                <h4>Company Information</h4>
                                <div id="contact-form" class="">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                 <asp:TextBox ID="txtcompanyname" type="text" runat="server" class="form-control" placeholder="Company Name OR Title" data-error="Company Name field is required" ValidationGroup="NewListing"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtcompanyname" runat="server" ErrorMessage="Enter Company OR Title" ValidationGroup="NewListing" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                              
                                            <div class="col-12">
                                                <div class="form-group">
                                                 <asp:TextBox ID="txtemailid" runat="server" TextMode="Email" class="form-control" placeholder="Email Id" data-error="Email field is required" ValidationGroup="NewListing"></asp:TextBox>
                                                </div>
                                            </div>

                                             <div class="col-12">
                                                <div class="form-group">
                                                 <asp:TextBox ID="txtmobileNo" runat="server" class="form-control"  
                                                        placeholder="Mobile Number*" data-error="Mobile field is required"
                                                        ValidationGroup="NewListing" ontextchanged="txtmobileNo_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtmobileNo" runat="server" ErrorMessage="Enter Mobile" ValidationGroup="NewListing" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                 <asp:RegularExpressionValidator ID="Reg2" runat="server"   ControlToValidate="txtmobileNo" ErrorMessage="Enter correct phone no."  ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" ValidationGroup="NewListing"></asp:RegularExpressionValidator>
                                                 <asp:Label ID="lblerror" ForeColor="Red" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                 <asp:TextBox ID="txtLandlineno" runat="server" class="form-control" placeholder="Landline Number" data-error="Landline Number field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                                </div>
                                            </div>
                                            
                                                <div class="col-12">
                                                <div class="form-group">
                                                 <asp:TextBox ID="txtYearstablis" runat="server" class="form-control" placeholder="Year Established*" data-error="Year Established field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtYearstablis" runat="server" ErrorMessage="EnterYear Established" ValidationGroup="NewListing" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                             <div class="col-12">
                                                <div class="form-group">
                                                <asp:TextBox ID="txtwebsite" type="text" runat="server" class="form-control" placeholder="Website (ex: www.example.com)" data-error="Website field is required"  ValidationGroup="NewListing" ></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="col-12">
                                                <div class="form-group">
                                                <asp:TextBox ID="txtownername" runat="server" class="form-control" placeholder="Contact Name" data-error="Owner Name field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtownername" runat="server" ErrorMessage="Enter Owner Name" ValidationGroup="NewListing" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                <asp:DropDownList ID="ddlcity" runat="server" class="form-control" 
                                                        AppendDataBoundItems="True" ValidationGroup="NewListing" 
                                                        DataSourceID="SqlDataSourceCityName" DataTextField="CityName" 
                                                        DataValueField="CityName">
                                                  <asp:ListItem Value="select">Choose City</asp:ListItem>
                                                </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSourceCityName" runat="server" 
                                                          ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                                        SelectCommand="SELECT [ID], [CityName] FROM [Updated_State_City_List] ORDER BY [CityName]">
                                                    </asp:SqlDataSource>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" InitialValue="select" ControlToValidate="ddlcity" runat="server" ErrorMessage="Select City" ValidationGroup="NewListing" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                              <div class="col-12">
                                                <div class="form-group">
                                                <asp:TextBox ID="txtlocation" runat="server" class="form-control" placeholder="Area*"  data-error="Area field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtlocation" runat="server" ErrorMessage="Enter Location" ValidationGroup="NewListing" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                <asp:TextBox ID="txtfulladdress" runat="server" class="form-control" placeholder="Address*"  TextMode="MultiLine" ToolTip="Your Address Here"  data-error="Area field is required"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  ControlToValidate="txtfulladdress" runat="server" ErrorMessage="Enter Full Address" ValidationGroup="NewListing" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                             <div class="col-6">
                                                <div class="form-group">
                                                 <asp:TextBox ID="txtlatitude" runat="server"  class="form-control" placeholder="Enter Latitude"  ValidationGroup="NewListing"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="form-group">
                                                 <asp:TextBox ID="txtlongitude" runat="server"   class="form-control" placeholder="Enter Longitude"  ValidationGroup="NewListing"></asp:TextBox>
                                                </div>
                                            </div> 
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

                            <div id="Div1" class="contact-form">
                                <div class="row">
                                    <div class="col-12" id="Div2" runat="server">
                                     <h4 style="color:#139e81"> Select Category*</h4>
                                     
                                     <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" DataTextField="CategoryName" DataValueField="Catid" AppendDataBoundItems="true" DataSourceID="SqlDataSourceCate" AutoPostBack="true" ValidationGroup="NewListing">
                                                    <asp:ListItem Value="0">Select Category</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator InitialValue="0" ControlToValidate="DropDownList2" ID="RequiredFieldValidator8" runat="server" ErrorMessage="select Category" Display="Dynamic" ForeColor="Red" ValidationGroup="NewListing"></asp:RequiredFieldValidator>
                                    </div>
                                    <hr />
                                    <div class="col-12" id="Tagss" runat="server">
                                        <h4 style="color:#139e81"> Select Tags*</h4>
                                        <hr />
                                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSourceTagsName" DataTextField="Tags" RepeatDirection="Horizontal" RepeatColumns="1" CssClass="myCheck" DataValueField="TagId" ValidationGroup="NewListing">
                                        </asp:CheckBoxList>
                                    </div>

                                    <div class="col-12" id="Ksyworsd" runat="server">
                                        <h4 style="color:#139e81">Select Services Keyword</h4>
                                        <hr />
                                        <asp:CheckBoxList ID="CheckBoxList2" runat="server" Class="form-control" DataSourceID="SqlDataSourceCatKeywordname" DataTextField="Keywords" RepeatDirection="Horizontal" RepeatColumns="1" CssClass="myCheck" DataValueField="KeywordId" ValidationGroup="NewListing">
                                        </asp:CheckBoxList>

                                    </div>

                                </div>
                                <hr />
                                <div class="col-lg-4 col-md-4 col-sm-6 col-sm-12 col-12" id="btnsubmit" runat="server">
                                    <div class="form-group">
                                        <asp:Button ID="Button2" class="cp-default-btn-sm" runat="server" Text="Submit & Continue"  onclick="btnaddlistingsite_Click" ValidationGroup="NewListing"></asp:Button>
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

    <asp:SqlDataSource ID="SqlDataSourceCate" runat="server"  ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>" SelectCommand="SELECT [Catid], [CategoryName] FROM [NewListing_Website_category_tbl] ORDER BY CategoryName">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceTagsName" runat="server"  ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>" SelectCommand="SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl] WHERE ([Catid] = @Catid) ORDER BY Tags">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceCatKeywordname" runat="server"  ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>" SelectCommand="SELECT [KeywordId], [CatId], [Keywords] FROM [NewListing_Website_Cat_Keyword_tbl] WHERE ([Catid] = @Catid) ORDER BY Keywords">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>