<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="Company-enquiry-list.aspx.cs" Inherits="LocalPandit.Admin.Company_enquiry_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main-content">
   

   

    
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>User Enquiry List</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="container" style="background:#006699; padding:1em;">
                       <div class=" col-md-4">
                        <label style="color:White;">Select Company</label>
                            <asp:DropDownList ID="DdlCategory" CssClass="form-control" runat="server" AutoPostBack="true" 
                               DataSourceID="SqlDataSourceCategoryList" DataTextField="CompanyName" 
                               DataValueField="CompanyId" AppendDataBoundItems="true"
                               onselectedindexchanged="DdlCategory_SelectedIndexChanged">
                               <asp:ListItem Value="select">~Select~</asp:ListItem>
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSourceCategoryList" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                               SelectCommand="SELECT [CompanyId], [CompanyName] FROM [NewListing_Website_listing_tbl]">
                           </asp:SqlDataSource>
                       </div>
                        
                       </div>

                <div class="box-content">
                    <div  class="form-horizontal" >
                       
                           
                       
                           
                            
                      

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table fill-head"
                            DataKeyNames="EnquiryId" DataSourceID="SqlDataSource1" 
                            EmptyDataText="There are no data records to display." BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                            <Columns>
                                <asp:BoundField DataField="EnquiryId" HeaderText="EnquiryId" ReadOnly="True" 
                                    SortExpression="EnquiryId" />
                                <asp:BoundField DataField="CompanyId" HeaderText="CompanyId" 
                                    SortExpression="CompanyId" />

                                     <asp:BoundField DataField="ListingType" HeaderText="Type" 
                                    SortExpression="Type" />

                                    <asp:BoundField DataField="OwnerName" HeaderText="Owner Name" 
                                    SortExpression="Owner" />
                               
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                                    SortExpression="Mobile" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Message" HeaderText="User Query" 
                                    SortExpression="Message" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
                            DeleteCommand="DELETE FROM [NewListing_Website_Inquiry_tbl] WHERE [EnquiryId] = @EnquiryId" 
                            InsertCommand="INSERT INTO [NewListing_Website_Inquiry_tbl] ([CompanyId], [LookingFor], [Name], [Mobile], [Email], [Message], [Date]) VALUES (@CompanyId, @LookingFor, @Name, @Mobile, @Email, @Message, @Date)" 
                            ProviderName="<%$ ConnectionStrings:BestdialConnectionString.ProviderName %>" 
                            SelectCommand="SELECT        NewListing_Website_Inquiry_tbl.EnquiryId, NewListing_Website_Inquiry_tbl.CompanyId, NewListing_Website_Inquiry_tbl.LookingFor, NewListing_Website_Inquiry_tbl.Name, 
                         NewListing_Website_Inquiry_tbl.Mobile, NewListing_Website_Inquiry_tbl.Email, NewListing_Website_Inquiry_tbl.Message, NewListing_Website_Inquiry_tbl.Date, 
                         NewListing_Website_listing_tbl.CompanyName, NewListing_Website_listing_tbl.OwnerName, NewListing_Website_listing_tbl.ListingType
FROM            NewListing_Website_Inquiry_tbl INNER JOIN
                         NewListing_Website_listing_tbl ON NewListing_Website_Inquiry_tbl.CompanyId = NewListing_Website_listing_tbl.CompanyId  ORDER BY EnquiryId DESC" 
                            UpdateCommand="UPDATE [NewListing_Website_Inquiry_tbl] SET [CompanyId] = @CompanyId, [LookingFor] = @LookingFor, [Name] = @Name, [Mobile] = @Mobile, [Email] = @Email, [Message] = @Message, [Date] = @Date WHERE [EnquiryId] = @EnquiryId">
                            <DeleteParameters>
                                <asp:Parameter Name="EnquiryId" Type="Int32" />
                            </DeleteParameters>

                                 

                            <InsertParameters>
                                <asp:Parameter Name="CompanyId" Type="Int32" />
                                <asp:Parameter Name="LookingFor" Type="String" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Mobile" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Message" Type="String" />
                                <asp:Parameter Name="Date" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="CompanyId" Type="Int32" />
                                <asp:Parameter Name="LookingFor" Type="String" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Mobile" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Message" Type="String" />
                                <asp:Parameter Name="Date" Type="String" />
                                <asp:Parameter Name="EnquiryId" Type="Int32" />
                            </UpdateParameters>
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
