<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="brand.aspx.cs" Inherits="DecoratinComplete.Admin.brand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>ADD BRAND</h4>
                </div>
                <div class="form-body">
           
                    <asp:DetailsView ID="DetailsView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server"  AutoGenerateRows="False" DataKeyNames="BrandId" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="DetailsView1_ItemInserted">
                        <Fields>
                            
                            <asp:BoundField DataField="BrandId" HeaderText="BrandId" InsertVisible="False" ReadOnly="True" SortExpression="BrandId" />
                            <asp:TemplateField HeaderText="Brand" SortExpression="Brand">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="txtbrand" CssClass="form-control" placeholder="Brand Name Shouldn't Exceed 25 Characters" runat="server" Text='<%# Bind("Brand") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtbrand" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Brand Name"></asp:RequiredFieldValidator>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Show" SortExpression="Show">
                                
                                <InsertItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" CssClass="form-control" runat="server" Checked='<%# Bind("Show") %>' />
                                </InsertItemTemplate>
                              
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <InsertItemTemplate>
                                    <asp:LinkButton ID="btnBrandSubmit" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" CausesValidation="True" CommandName="Insert" Text="Submit"  ></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="btnBrandDelete" ValidationGroup="Productform" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"  ></asp:LinkButton>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                        </Fields>
                    </asp:DetailsView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" DeleteCommand="DELETE FROM [Brand] WHERE [BrandId] = @BrandId" InsertCommand="INSERT INTO [Brand] ([Brand], [ImgUrlDesk], [ImgUrlMbl], [Show]) VALUES (@Brand, @ImgUrlDesk, @ImgUrlMbl, @Show)" ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" SelectCommand="SELECT [BrandId], [Brand], [ImgUrlDesk], [ImgUrlMbl], [Show] FROM [Brand]" UpdateCommand="UPDATE [Brand] SET [Brand] = @Brand, [ImgUrlDesk] = @ImgUrlDesk, [ImgUrlMbl] = @ImgUrlMbl, [Show] = @Show WHERE [BrandId] = @BrandId">
                        <DeleteParameters>
                            <asp:Parameter Name="BrandId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Brand" Type="String" />
                            <asp:Parameter Name="ImgUrlDesk" Type="String" />
                            <asp:Parameter Name="ImgUrlMbl" Type="String" />
                            <asp:Parameter Name="Show" Type="Boolean" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Brand" Type="String" />
                            <asp:Parameter Name="ImgUrlDesk" Type="String" />
                            <asp:Parameter Name="ImgUrlMbl" Type="String" />
                            <asp:Parameter Name="Show" Type="Boolean" />
                            <asp:Parameter Name="BrandId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>




                </div>
            </div>

        </div>
    </div>

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>EDIT BRAND</h4>
                </div>
                <div class="form-body" style="overflow-x:scroll;">
               
              
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="BrandId" DataSourceID="SqlDataSource2">
                        <Columns>
                            
                            <asp:BoundField DataField="BrandId" HeaderText="BrandId" InsertVisible="False" ReadOnly="True" SortExpression="BrandId" />
                            <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                            
                            <asp:CheckBoxField DataField="Show" HeaderText="Show" SortExpression="Show" />
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-dark" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-dark" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning
                                        " runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" DeleteCommand="DELETE FROM [Brand] WHERE [BrandId] = @BrandId" InsertCommand="INSERT INTO [Brand] ([Brand], [ImgUrlDesk], [ImgUrlMbl], [Show]) VALUES (@Brand, @ImgUrlDesk, @ImgUrlMbl, @Show)" ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" SelectCommand="SELECT [BrandId], [Brand], [ImgUrlDesk], [ImgUrlMbl], [Show] FROM [Brand]" UpdateCommand="UPDATE [Brand] SET [Brand] = @Brand, [ImgUrlDesk] = @ImgUrlDesk, [ImgUrlMbl] = @ImgUrlMbl, [Show] = @Show WHERE [BrandId] = @BrandId">
                        <DeleteParameters>
                            <asp:Parameter Name="BrandId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Brand" Type="String" />
                            <asp:Parameter Name="ImgUrlDesk" Type="String" />
                            <asp:Parameter Name="ImgUrlMbl" Type="String" />
                            <asp:Parameter Name="Show" Type="Boolean" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Brand" Type="String" />
                            <asp:Parameter Name="ImgUrlDesk" Type="String" />
                            <asp:Parameter Name="ImgUrlMbl" Type="String" />
                            <asp:Parameter Name="Show" Type="Boolean" />
                            <asp:Parameter Name="BrandId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
               
              
               
                </div>
            </div>

        </div>
    </div>
</asp:Content>
