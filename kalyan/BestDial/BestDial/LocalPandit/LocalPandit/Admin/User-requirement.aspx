<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="User-requirement.aspx.cs" Inherits="LocalPandit.Admin.User_requirement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main-content">
   

   

    
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>User Requirement List</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" >
                       
                           
                            
                      

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table fill-head"
                            DataKeyNames="Quoteid" DataSourceID="SqlDataSource1" 
                            EmptyDataText="There are no data records to display.">
                            <Columns>
                                <asp:BoundField DataField="Quoteid" HeaderText="Quoteid" ReadOnly="True" 
                                    SortExpression="Quoteid" />
                                <asp:BoundField DataField="LookingFor" HeaderText="Looking For" 
                                    SortExpression="LookingFor" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                                    SortExpression="Mobile" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                <asp:BoundField DataField="Date" HeaderText="Date/Time" SortExpression="Date" />
                                <asp:CommandField ShowDeleteButton="True" ButtonType="Button" >
                                <ControlStyle CssClass="btn btn-primary" />
                                </asp:CommandField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                            DeleteCommand="DELETE FROM [NewListing_Website_Get_quote_tbl] WHERE [Quoteid] = @Quoteid" 
                            InsertCommand="INSERT INTO [NewListing_Website_Get_quote_tbl] ([LookingFor], [Name], [Mobile], [Email], [Message], [City], [Date]) VALUES (@LookingFor, @Name, @Mobile, @Email, @Message, @City, @Date)" 
                            ProviderName="<%$ ConnectionStrings:BestdialConnectionString.ProviderName %>" 
                            SelectCommand="SELECT [Quoteid], [LookingFor], [Name], [Mobile], [Email], [Message], [City], [Date] FROM [NewListing_Website_Get_quote_tbl] ORDER by Quoteid DESC" 
                            UpdateCommand="UPDATE [NewListing_Website_Get_quote_tbl] SET [LookingFor] = @LookingFor, [Name] = @Name, [Mobile] = @Mobile, [Email] = @Email, [Message] = @Message, [City] = @City, [Date] = @Date WHERE [Quoteid] = @Quoteid">
                            <DeleteParameters>
                                <asp:Parameter Name="Quoteid" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="LookingFor" Type="String" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Mobile" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Message" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Date" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="LookingFor" Type="String" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Mobile" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Message" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Date" Type="String" />
                                <asp:Parameter Name="Quoteid" Type="Int32" />
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
