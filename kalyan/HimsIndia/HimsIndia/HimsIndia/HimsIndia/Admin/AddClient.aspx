<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddClient.aspx.cs" Inherits="HimsIndia.Admin.AddClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="page-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title mb-12">Edit Delete Client</h4>


                            <div class="table-responsive">
                                <table class="table table-centered table-nowrap mb-0">
                                </table>
                            </div>
    <asp:GridView ID="GridView1" runat="server"  class="table table-bordered table-responsive table-condensed" EmptyDataText="There are no data records to display."
        AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Id">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country"></asp:BoundField>
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
            <asp:BoundField DataField="Skills" HeaderText="Skills" SortExpression="Skills"></asp:BoundField>
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position"></asp:BoundField>
           
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
           
        </Columns>
    </asp:GridView>

   

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbhismindia %>" DeleteCommand="DELETE FROM [post] WHERE [Id] = @Id" InsertCommand="INSERT INTO [post] ([FirstName], [LastName], [Email], [Phone], [Country], [City], [Address], [Skills], [Position]) VALUES (@FirstName, @LastName, @Email, @Phone, @Country, @City, @Address, @Skills, @Position)" SelectCommand="SELECT [Id], [FirstName], [LastName], [Email], [Phone], [Country], [City], [Address], [Skills], [Position] FROM [post]" UpdateCommand="UPDATE [post] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Phone] = @Phone, [Country] = @Country, [City] = @City, [Address] = @Address, [Skills] = @Skills, [Position] = @Position WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Skills" Type="String" />
            <asp:Parameter Name="Position" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Skills" Type="String" />
            <asp:Parameter Name="Position" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
 </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   

</asp:Content>
