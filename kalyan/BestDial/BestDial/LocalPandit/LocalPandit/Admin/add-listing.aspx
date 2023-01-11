<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="add-listing.aspx.cs" Inherits="LocalPandit.Admin.add_listing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.myCheck
{
    width:100%;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="main-content">
   <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Add Listing</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" >

                        <div class="form-group" style="padding:1em;">

                           <table class="table fill-head">
                             <tr>
                                <td style="width: 37%;">Select Head Tag</td>
                                <td>
                                    <asp:CheckBoxList ID="CheckTag" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CheckBoxList1_CheckedChanged" RepeatDirection="Horizontal">
                                      <asp:ListItem Value="Enable">Popular</asp:ListItem>
                                      <asp:ListItem Value="EnableBottom">Human Resources</asp:ListItem>
                                      <asp:ListItem Value="Industries">Industries</asp:ListItem>
                                    </asp:CheckBoxList>
                                </td>
                              </tr>

                              <tr>
                                <td style="width: 37%;">Select Category</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2"  CssClass="form-control"  
                                            AutoPostBack="true" runat="server">
                                            <asp:ListItem Value="0">~Select~</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" InitialValue="0" ControlToValidate="DropDownList2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                </td>
                              </tr>
                          </table>

                           <table class="table fill-head">
                              <tr>
                                <td style="width: 37%;">Select Tags</td>
                                <td>
                                
                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Class="form-control"
                                           DataSourceID="SqlDataSourceTagsName" DataTextField="Tags" 
                                           RepeatDirection="Horizontal" 
                                           RepeatColumns="5" CssClass="myCheck" DataValueField="TagId">
                                           </asp:CheckBoxList>
                                 
                                </td>
                              </tr>
                          </table>

                           <table class="table fill-head">
                              <tr>
                                <td style="width: 37%;">Select Services Keyword</td>
                                <td>
                                
                                <asp:CheckBoxList ID="CheckBoxList2" runat="server" Class="form-control"
                                           DataSourceID="SqlDataSourceCatKeywordname" DataTextField="Keywords" 
                                           RepeatDirection="Horizontal" 
                                           RepeatColumns="3" CssClass="myCheck" DataValueField="KeywordId">
                                           </asp:CheckBoxList>
                                 
                                </td>
                              </tr>
                          </table>
                            <asp:DetailsView ID="DetailsView1" runat="server" class="table fill-head"  oniteminserting="DetailsView1_ItemInserting" 
                                AutoGenerateRows="False" DataKeyNames="CompanyId" DataSourceID="SqlDataSource1" 
                                DefaultMode="Insert">
                                <Fields>
                                   
                                    <asp:TemplateField HeaderText="Company Name" SortExpression="CompanyName">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="OwnerName" HeaderText="Owner Name" 
                                        SortExpression="OwnerName">
                                    <ControlStyle CssClass="form-control" />
                                    <ControlStyle CssClass="form-control"></ControlStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="YearEstablish" HeaderText="Year Establish" 
                                        SortExpression="YearEstablish">
                                    <ControlStyle CssClass="form-control" />
                                    <ControlStyle CssClass="form-control"></ControlStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile">
                                    <ControlStyle CssClass="form-control" />
                                    <ControlStyle CssClass="form-control"></ControlStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="LandLine" HeaderText="Land Line No." 
                                        SortExpression="LandLine">
                                    <ControlStyle CssClass="form-control" />
                                    <ControlStyle CssClass="form-control"></ControlStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
                                    <ControlStyle CssClass="form-control" />
                                    <ControlStyle CssClass="form-control"></ControlStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Website" HeaderText="Website" 
                                        SortExpression="Website">
                                    <ControlStyle CssClass="form-control" />
                                    <ControlStyle CssClass="form-control"></ControlStyle>
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Location" SortExpression="Location">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                       
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Address" HeaderText="Address" 
                                        SortExpression="Address">
                                    <ControlStyle CssClass="form-control" />
                                    <ControlStyle CssClass="form-control"></ControlStyle>
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="City" SortExpression="City">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                     <asp:CheckBoxField DataField="Enable"  HeaderText="Enable" 
                                        SortExpression="Enable" />
                                     <asp:BoundField DataField="Latitude" HeaderText="Latitude(Map)" SortExpression="Latitude">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Longitude" HeaderText="Longitude(Map)" SortExpression="Longitude">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>

                                    <asp:TemplateField HeaderText="Media Upload" >
                                        <InsertItemTemplate>
                                            <asp:FileUpload ID="FUpBanner" runat="server" class="form-control"    />
                                        </InsertItemTemplate>
                                    </asp:TemplateField>

                                    <asp:CommandField ButtonType="Button" ShowInsertButton="True">
                                    <ControlStyle CssClass="btn btn-primary" />
<ControlStyle CssClass="btn btn-primary"></ControlStyle>
                                    </asp:CommandField>
                                </Fields>
                            </asp:DetailsView>
                           
                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                DeleteCommand="DELETE FROM [NewListing_Website_listing_tbl] WHERE [CompanyId] = @CompanyId" 
                                InsertCommand="INSERT INTO [NewListing_Website_listing_tbl] ([CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord],[Enable], [url], [Latitude], [Longitude]) VALUES (@CatId, @CompanyName, @OwnerName, @YearEstablish, @Mobile, @LandLine, @Email, @Website, @Location, @Address, @City, @Map, @RegsitrationDate, @KeyWord, @Enable, @url, @Latitude, @Longitude) SELECT @NewProductID = SCOPE_IDENTITY()" 
                                ProviderName="<%$ ConnectionStrings:BestdialConnectionString.ProviderName %>" 
                                SelectCommand="SELECT [CompanyId], [CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Latitude], [Longitude] FROM [NewListing_Website_listing_tbl]" 
                                UpdateCommand="UPDATE [NewListing_Website_listing_tbl] SET [CatId] = @CatId, [CompanyName] = @CompanyName, [OwnerName] = @OwnerName, [YearEstablish] = @YearEstablish, [Mobile] = @Mobile, [LandLine] = @LandLine, [Email] = @Email, [Website] = @Website, [Location] = @Location, [Address] = @Address, [City] = @City, [Map] = @Map, [RegsitrationDate] = @RegsitrationDate, [KeyWord] = @KeyWord, [Enable] = @Enable, [TotalReview] = @TotalReview WHERE [CompanyId] = @CompanyId"
                                OnInserted="SqlDataSource1_Inserted">
                                <DeleteParameters>
                                    <asp:Parameter Name="CompanyId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                   
                                    <asp:Parameter Name="CompanyName" Type="String" />
                                    <asp:Parameter Name="OwnerName" Type="String" />
                                    <asp:Parameter Name="YearEstablish" Type="String" />
                                    <asp:Parameter Name="Mobile" Type="String" />
                                    <asp:Parameter Name="LandLine" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Website" Type="String" />
                                    <asp:Parameter Name="Location" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="City" Type="String" />
                                    <asp:Parameter Name="Map" Type="String" />
                                    <asp:Parameter Name="Enable" Type="Boolean" />
                                    <asp:Parameter Name="Latitude" Type="String" />
                                    <asp:Parameter Name="Longitude" Type="String" />
                                   
                                    <asp:Parameter Direction="Output" Name="NewProductID" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CatId" Type="Int32" />
                                    <asp:Parameter Name="CompanyName" Type="String" />
                                    <asp:Parameter Name="OwnerName" Type="String" />
                                    <asp:Parameter Name="YearEstablish" Type="String" />
                                    <asp:Parameter Name="Mobile" Type="String" />
                                    <asp:Parameter Name="LandLine" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Website" Type="String" />
                                    <asp:Parameter Name="Location" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="City" Type="String" />
                                    <asp:Parameter Name="Map" Type="String" />
                                    <asp:Parameter Name="RegsitrationDate" Type="String" />
                                    <asp:Parameter Name="KeyWord" Type="String" />
                                    <asp:Parameter Name="Enable" Type="Boolean" />
                                    <asp:Parameter Name="TotalReview" Type="Int32" />
                                    <asp:Parameter Name="CompanyId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                           
                            <asp:SqlDataSource ID="SqlDataSourceCate" runat="server" 
             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
            SelectCommand="SELECT [Catid], [CategoryName] FROM [NewListing_Website_category_tbl]">
        </asp:SqlDataSource>
                            
            <asp:SqlDataSource ID="SqlDataSourceTagsName" runat="server" 
             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
            SelectCommand="SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl] WHERE ([Catid] = @Catid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSourceCatKeywordname" runat="server" 
             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
            SelectCommand="SELECT [KeywordId], [CatId], [Keywords] FROM [NewListing_Website_Cat_Keyword_tbl] WHERE ([Catid] = @Catid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>


                        </div>

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
