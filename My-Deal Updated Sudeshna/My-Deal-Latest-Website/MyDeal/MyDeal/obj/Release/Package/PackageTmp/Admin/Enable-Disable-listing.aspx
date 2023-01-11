<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="Enable-Disable-listing.aspx.cs" Inherits="LocalPandit.Admin.Enable_Disable_listing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main-content">
   

   

    
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Enable/Disable Company</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" >
                       
                           
                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           <ContentTemplate>
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
                                    
                                    <asp:CheckBoxField DataField="Enable" HeaderText="Enable" 
                                        SortExpression="Enable" />
                                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                                        ShowEditButton="True">
                                    <ControlStyle CssClass="btn btn-primary" />
                                    </asp:CommandField>
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
                                ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                DeleteCommand="DELETE FROM [NewListing_Website_listing_tbl] WHERE [CompanyId] = @CompanyId" 
                                InsertCommand="INSERT INTO [NewListing_Website_listing_tbl] ([CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url]) VALUES (@CatId, @CompanyName, @OwnerName, @YearEstablish, @Mobile, @LandLine, @Email, @Website, @Location, @Address, @City, @Map, @RegsitrationDate, @KeyWord, @Enable, @TotalReview, @url)" 
                                ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString.ProviderName %>" 
                                SelectCommand="SELECT [CompanyId], [CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url] FROM [NewListing_Website_listing_tbl] ORDER BY CompanyId DESC" 
                                UpdateCommand="UPDATE [NewListing_Website_listing_tbl] SET  [CompanyName] = @CompanyName, [OwnerName] = @OwnerName, [YearEstablish] = @YearEstablish, [Mobile] = @Mobile,  [Email] = @Email,  [City] = @City, [Enable] = @Enable WHERE [CompanyId] = @CompanyId">
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
                           </ContentTemplate>
                           </asp:UpdatePanel>
                            
                      

                    </div>
                </div>
            </div>
        </div>
    </div>
   
   
    <footer>
        <p>2022 © My-Deal</p>
    </footer>

    <a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i class="fa fa-chevron-up"></i></a>
</div>
</asp:Content>
