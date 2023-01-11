<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="manage-listing.aspx.cs" Inherits="LocalPandit.Admin.all_listing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="main-content">
   

   

    
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Manage Company</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                   
                </div>
                 <div class="container" style="background:#006699; padding:1em;">
                       <div class=" col-md-4">
                       <label style="color:White;">Select Category</label>
                           <asp:DropDownList ID="DdlCategory" CssClass="form-control" runat="server" AutoPostBack="true" 
                               DataSourceID="SqlDataSourceCategoryList" DataTextField="CategoryName" 
                               DataValueField="Catid">
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSourceCategoryList" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                               SelectCommand="SELECT [Catid], [CategoryName] FROM [NewListing_Website_category_tbl]">
                           </asp:SqlDataSource>
                       </div>
                        <div class=" col-md-4">
                        <label style="color:White;">Select City</label>
                            <asp:DropDownList ID="ddlcity" CssClass="form-control" runat="server" AutoPostBack="true" 
                                DataSourceID="SqlDataSourceCityList" DataTextField="City" DataValueField="City">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceCityList" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                SelectCommand="SELECT DISTINCT [City] FROM [NewListing_Website_listing_tbl]">
                            </asp:SqlDataSource>
                       </div>
                       <div class=" col-md-4">
                        <label style="color:White;">Select Type</label>
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="true" 
                                DataSourceID="SqlDataSourceListType" DataTextField="ListingType" DataValueField="ListingType">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceListType" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                SelectCommand="SELECT DISTINCT [ListingType] FROM [NewListing_Website_listing_tbl]">
                            </asp:SqlDataSource>
                       </div>
                    </div>
                <div class="box-content">
                    <div  class="form-horizontal" >
                       
                           
                            
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table fill-head"
                                DataKeyNames="CompanyId" DataSourceID="SqlDataSource1" 
                                EmptyDataText="There are no data records to display." BackColor="White" 
                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                <Columns>
                                    <asp:BoundField DataField="CompanyId" HeaderText="CompanyId" ReadOnly="True" 
                                        SortExpression="CompanyId" />
                                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" 
                                        SortExpression="CompanyName">
                                    <ControlStyle CssClass="form-control" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="OwnerName" HeaderText="Owner Name" 
                                        SortExpression="OwnerName">
                                    <ControlStyle CssClass="form-control" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="YearEstablish" HeaderText="Year Establish" 
                                        SortExpression="YearEstablish">
                                    <ControlStyle CssClass="form-control" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile">
                                    <ControlStyle CssClass="form-control" />
                                    </asp:BoundField>
                                  
                                   
                                  
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
                                    <ControlStyle CssClass="form-control" />
                                    </asp:BoundField>
                                   
                                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City">
                                    <ControlStyle CssClass="form-control" />
                                    </asp:BoundField>

                                    <asp:BoundField DataField="ListingType" HeaderText="Type" SortExpression="ListingType">
                                    <ControlStyle CssClass="form-control" />
                                    </asp:BoundField>
                                    
                                    <asp:CheckBoxField DataField="Enable" HeaderText="Enable" 
                                        SortExpression="Enable" />

                              <asp:HyperLinkField DataNavigateUrlFields="CompanyId" 
                      DataNavigateUrlFormatString="manage-listing-master.aspx?compid={0}" 
                      Text="Manage" HeaderText="Action" ControlStyle-CssClass="btn btn-primary" />
                                   
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                
                                SelectCommand="SELECT [CompanyId], [CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url], [Password], [Priority], [ListingType] FROM [NewListing_Website_listing_tbl] WHERE (([CatId] = @CatId) AND ([City] = @City) AND  ([ListingType] = @ListingType))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DdlCategory" DefaultValue="0" Name="CatId" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="ddlcity" DefaultValue="" Name="City" 
                                        PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="ListingType" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                           
                            
                      

                    </div>
                </div>
            </div>
        </div>
    </div>
   
   
    <footer>
        <p>2017 © Local Pandit</p>
    </footer>

    <a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i class="fa fa-chevron-up"></i></a>
</div>

</asp:Content>
