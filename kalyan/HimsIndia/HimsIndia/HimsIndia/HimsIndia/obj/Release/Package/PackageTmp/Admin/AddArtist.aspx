<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddArtist.aspx.cs" Inherits="HimsIndia.Admin.AddArtist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
   
   <div class="page-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title mb-12">Edit Delete Artist</h4>


                            <div class="table-responsive">
                                <table class="table table-centered table-nowrap mb-0">
                                </table>
                            </div>
                            

                             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" class="table table-bordered table-responsive table-condensed" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="OthersId" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="OthersId" HeaderText="OthersId" ReadOnly="True" SortExpression="OthersId"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender"></asp:BoundField>
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country"></asp:BoundField>
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
                    <asp:BoundField DataField="Profession" HeaderText="Profession" SortExpression="Profession"></asp:BoundField>
                    <asp:TemplateField HeaderText="Image1" SortExpression="Image1">
                        <EditItemTemplate>
                            <img src='/Admin/Artist/<%# Eval("Image1") %>' class="img-fluid" height="50px" width="90px"/>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <img src='/Admin/Artist/<%# Eval("Image1") %>' class="img-fluid" height="50px" width="90px"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Skills" HeaderText="Skills" SortExpression="Skills"></asp:BoundField>
                     <asp:HyperLinkField DataNavigateUrlFields="OthersId"
                                                    DataNavigateUrlFormatString="/Artistinfo/ArtistInfo.aspx?OthersId={0}"
                                                   Text="Get URL" HeaderText="URL" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"  OnClientClick="return confirm('Are you sure you want to delete this event?');" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbhismindia %>" SelectCommand="SELECT [OthersId], [FirstName], [LastName], [Email], [Phone], [Gender], [Country], [City], [Address], [Profession], [Image1], [Skills] FROM [Others]" DeleteCommand="DELETE FROM [Others] WHERE [OthersId] = @OthersId" InsertCommand="INSERT INTO [Others] ([FirstName], [LastName], [Email], [Phone], [Gender], [Country], [City], [Address], [Profession], [Image1], [Skills]) VALUES (@FirstName, @LastName, @Email, @Phone, @Gender, @Country, @City, @Address, @Profession, @Image1, @Skills)" UpdateCommand="UPDATE [Others] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Phone] = @Phone, [Gender] = @Gender, [Country] = @Country, [City] = @City, [Address] = @Address, [Profession] = @Profession, [Image1] = @Image1, [Skills] = @Skills WHERE [OthersId] = @OthersId">
                <DeleteParameters>
                    <asp:Parameter Name="OthersId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Profession" Type="String" />
                    <asp:Parameter Name="Image1" Type="String" />
                    <asp:Parameter Name="Skills" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Profession" Type="String" />
                    <asp:Parameter Name="Image1" Type="String" />
                    <asp:Parameter Name="Skills" Type="String" />
                    <asp:Parameter Name="OthersId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


    </div>
                    </div>
                   
                </div>
            </div>
           
        </div>
    </div>
   
</asp:Content>
