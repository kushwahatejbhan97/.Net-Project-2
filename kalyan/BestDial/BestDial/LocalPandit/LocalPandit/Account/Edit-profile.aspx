<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Company.Master" AutoEventWireup="true" CodeBehind="Edit-profile.aspx.cs" Inherits="LocalPandit.Account.Edit_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.myinf
{
    border: 1px solid #337ab7;
    margin: 8px 0px 9px 2px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="tz-2 tz-2-admin">
    <div class="tz-2-com tz-2-main">
        <h4>Manage Company</h4> 
        

        <!-- Dropdown Structure -->
        <div class="row">
        <div class="col-md-12">
            <div class="box">
               
                <div class="box-content">
                    <div  class="form-horizontal" >
                        <asp:DetailsView ID="DetailsView1" runat="server" class="table fill-head" 
                            AutoGenerateRows="False" DataKeyNames="CompanyId" 
                            DataSourceID="SqlDataSource1" DefaultMode="Edit">
                            <Fields>
                                <asp:BoundField DataField="CompanyId" HeaderText="CompanyId" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="CompanyId" />
                                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                                    SortExpression="Company Name">
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
                                <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ControlStyle CssClass="form-control" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="LandLine" HeaderText="LandLine" 
                                    SortExpression="LandLine">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1"  runat="server"   Text='<%# Bind("Email") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server"   Text='<%# Bind("Email") %>'></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ControlStyle CssClass="form-control" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="Website" HeaderText="Website" 
                                    SortExpression="Website">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Location" HeaderText="Location" 
                                    SortExpression="Location">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Address" HeaderText="Address" 
                                    SortExpression="Address">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Latitude" HeaderText="Latitude(Map)" SortExpression="Latitude">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Longitude" HeaderText="Longitude(Map)" SortExpression="Longitude">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                                <ControlStyle CssClass="btn btn-primary" />
                                </asp:CommandField>
                            </Fields>
                        </asp:DetailsView>
                        
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                            DeleteCommand="DELETE FROM [NewListing_Website_listing_tbl] WHERE [CompanyId] = @CompanyId" 
                            InsertCommand="INSERT INTO [NewListing_Website_listing_tbl] ([CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url]) VALUES (@CatId, @CompanyName, @OwnerName, @YearEstablish, @Mobile, @LandLine, @Email, @Website, @Location, @Address, @City, @Map, @RegsitrationDate, @KeyWord, @Enable, @TotalReview, @url)" 
                            SelectCommand="SELECT [CompanyId], [CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url], [Latitude], [Longitude] FROM [NewListing_Website_listing_tbl] WHERE ([CompanyId] = @CompanyId)" 
                            
                            UpdateCommand="UPDATE [NewListing_Website_listing_tbl] SET  [CompanyName] = @CompanyName, [OwnerName] = @OwnerName, [YearEstablish] = @YearEstablish, [Mobile] = @Mobile, [LandLine] = @LandLine, [Email] = @Email, [Website] = @Website, [Location] = @Location, [Address] = @Address, [City] = @City, [Map] = @Map, [Latitude] =@Latitude, [Longitude] = @Longitude  WHERE [CompanyId] = @CompanyId">
                            <DeleteParameters>
                                <asp:Parameter Name="CompanyId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
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
                                <asp:Parameter Name="url" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                 <asp:SessionParameter DefaultValue="0" Name="CompanyId" SessionField="CompID" 
                                        Type="Int32" />
                            </SelectParameters>
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
                                <asp:Parameter Name="url" Type="String" />
                                <asp:Parameter Name="CompanyId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                       


                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row" style="margin-bottom:40px;">
        <div class="container-fluid">
            <div class="box">
                <div class="box-content">
                    <div  class="form-horizontal" > 
                    <div class="container-fluid" style="border: 1px solid #a5ad53;">
                         <div class="">
                           <h4 style="background: black;padding: 0.4em;color: white;">Update Cover Image</h4>
                             <center> <asp:Image ID="ImageCompany" runat="server"  class="img img-responsive" /></center>
                          </div>
                          <table>
                            <tr>
                             <td><asp:FileUpload ID="FileUpload1" runat="server" class="form-control myinf"></asp:FileUpload></td>
                             <td><asp:Button ID="Button1" runat="server" Text="Update" class="btn btn-primary" onclick="btnupImage_Click"></asp:Button></td>
                            </tr>
                          </table>
                        </div>
                      </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>
</asp:Content>
