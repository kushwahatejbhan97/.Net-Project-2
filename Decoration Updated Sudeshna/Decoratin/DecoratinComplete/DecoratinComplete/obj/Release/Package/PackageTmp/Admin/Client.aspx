<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="DecoratinComplete.Admin.Client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Client</h4>
                </div>
                <div class="form-body" style="overflow-x:scroll;">


               
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="ClientId" DataSourceID="ClientDataSource1" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="Name" ReadOnly="true" HeaderText="Name" SortExpression="Name" />
                           <asp:BoundField DataField="Mobile" ReadOnly="true" HeaderText="Mobile" SortExpression="Mobile" />
                            <asp:BoundField DataField="Email"  ReadOnly="true" HeaderText="Email" SortExpression="Email" />
                            
                            <asp:BoundField DataField="Address" ReadOnly="true" HeaderText="Address" SortExpression="Address" />
                            
                            <asp:BoundField DataField="ABN" ReadOnly="true" HeaderText="ABN" SortExpression="ABN" />
                            <asp:CheckBoxField DataField="Block" HeaderText="Block" SortExpression="Block" />
                            <asp:CheckBoxField DataField="Approval" HeaderText="Approval" SortExpression="Approval" />

                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-dark" runat="server" CausesValidation="True" CommandName="Update" OnClientClick="return confirm('Are you sure you want to Update this client?');" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-dark" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning
                                        " runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this client?');"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="ClientDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                        DeleteCommand="DELETE FROM [Client] WHERE [ClientId] = @ClientId" 
                        ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" 
                        SelectCommand="SELECT [ClientId], [Name], [Mobile], [Email], [Password], [Address], [PostalPIN], [ABN], [ReferCode], [Block], [Approval] FROM [Client]" 
                        UpdateCommand="UPDATE [Client] SET [Block] = @Block, [Approval] = @Approval WHERE [ClientId] = @ClientId">
                        <DeleteParameters>
                            <asp:Parameter Name="ClientId" Type="Int32" />
                        </DeleteParameters>
                        
                        <UpdateParameters>
                            
                            <asp:Parameter Name="Block" Type="Boolean" />
                            <asp:Parameter Name="Approval" Type="Boolean" />
                            <asp:Parameter Name="ClientId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>


               
                </div>
            </div>

        </div>
    </div>
</asp:Content>
