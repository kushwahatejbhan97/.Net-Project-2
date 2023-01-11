<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DecoratinComplete.Admin.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">

            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">

                    <h4>Contact Details</h4>

                </div>
                <div class="form-body" style="overflow-x: scroll;">

                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="Contactuserid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="Contactuserid" HeaderText="Userid" ReadOnly="True" SortExpression="Contactuserid" />
                            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                            <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                            <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" />
                            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" DeleteCommand="DELETE FROM [Contact] WHERE [Contactuserid] = @Contactuserid" InsertCommand="INSERT INTO [Contact] ([username], [email], [subject], [message]) VALUES (@username, @email, @subject, @message)" ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" SelectCommand="SELECT [Contactuserid], [username], [email], [subject], [message] FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [username] = @username, [email] = @email, [subject] = @subject, [message] = @message WHERE [Contactuserid] = @Contactuserid">
                        <DeleteParameters>
                            <asp:Parameter Name="Contactuserid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="subject" Type="String" />
                            <asp:Parameter Name="message" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="subject" Type="String" />
                            <asp:Parameter Name="message" Type="String" />
                            <asp:Parameter Name="Contactuserid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    
                    
                    

                </div>

            </div>

        </div>

    </div>
</asp:Content>
