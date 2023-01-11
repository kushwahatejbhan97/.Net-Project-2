<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="DecoratinComplete.Admin.category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Add Category</h4>
                </div>
                <div class="form-body">
                   
                    <div class="form-group">

                            <label for="txtCatName">Category Name</label>
                            <asp:TextBox ID="txtCatName" AutoPostBack="true" OnTextChanged="txtCatName_TextChanged" CssClass="form-control" placeholder="Category Name Shouldn't Exceed 30 Characters" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" InitialValue="" ControlToValidate="txtCatName" ValidationGroup="catform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Category Name"></asp:RequiredFieldValidator>

                        </div>

                    <div class="form-group">
                            <label for="exampleInputPassword1">Url</label>
                             <asp:TextBox ID="TxtUrl" ReadOnly="true" CssClass="form-control" placeholder="*No special character or space" runat="server"></asp:TextBox>
                            
                        </div>

                    <div class="form-group">
                            <label for="txttitle">Title</label>
                             <asp:TextBox ID="txttitle" CssClass="form-control" placeholder="*Enter Product Title" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" InitialValue="" ControlToValidate="txttitle" ValidationGroup="catform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Title"></asp:RequiredFieldValidator>
                        </div>

                    <div class="form-group">
                            <label for="txtdescription">Description</label>
                             <asp:TextBox ID="txtdescription" CssClass="form-control" TextMode="MultiLine" placeholder="*Write Description Here" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" InitialValue="" ControlToValidate="txtdescription" ValidationGroup="catform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Write Description"></asp:RequiredFieldValidator>
                        </div>

                    <div class="form-group">
                            <label for="txtkeyword">Keyword</label>
                             <asp:TextBox ID="txtkeyword" CssClass="form-control" placeholder="*Enter Keyword" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="" ControlToValidate="txtkeyword" ValidationGroup="catform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Keyword"></asp:RequiredFieldValidator>
                        </div>
                     
                    <div class="form-group">
                            <label for="FileUpload1">Category Desktop Image</label>
                            <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="FileUpload1" ValidationGroup="catform" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*Upload Desktop Image"></asp:RequiredFieldValidator>
                            <p class="help-block">* The image width and height should be 253px * 253px</p>
                        </div>

                    <div class="form-group">
                            <label for="FileUpload2">Category Mobile Image</label>
                            <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="FileUpload2" ValidationGroup="catform" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*Upload Desktop Image"></asp:RequiredFieldValidator>
                            
                            <p class="help-block">* The image width and height should be 160px * 160px</p>
                        </div>
                        
                   <asp:Button ID="btnsubmitCat" ValidationGroup="catform" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnsubmitCat_Click" />
                       
                   

                    
                </div>
            </div>

        </div>
    </div>

    <div class="main-page">
        <div class="forms">
            
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    
                    <h4>Edit Delete Category</h4>

                </div>
                <div class="form-body" style="overflow-x:scroll;">
                    <p>
                        <asp:GridView ID="GridView1"  CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="CatId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                            <Columns>
                                <asp:BoundField DataField="CatId" HeaderText="CatId" ReadOnly="True" SortExpression="CatId" />
                                <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
                                <asp:BoundField DataField="Url" HeaderText="Url" SortExpression="Url" />
                                
                                
                                <asp:TemplateField HeaderText="CatImgMbl" SortExpression="CatImgMbl">
                                    <%--<EditItemTemplate>
                                         <asp:DropDownList ID="ddlCompanyEdit" DataSource="<%# SqlDataSource1 %>" DataValueField="CatImgMbl" DataTextField="CatImgMbl" runat="server">

                                         </asp:DropDownList>
                                    </EditItemTemplate>--%>
                                    <ItemTemplate>
                                        
                                        <img src='/admin/Category/Mobile/<%# Eval("CatImgMbl") %>' height="60" />
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="CatImgDesk" SortExpression="CatImgDesk">
                                    
                                    <ItemTemplate>
                                        <img src= '/admin/Category/Desktop/<%# Eval("CatImgDesk") %>' height="60" />
                                        
                                    </ItemTemplate>
                                </asp:TemplateField>

                                
                                <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                    <EditItemTemplate>
                                        <asp:Button ID="Button1" CssClass="btn btn-dark" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        
                                        
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" CssClass="btn btn-dark" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        <a class="btn btn-dark" href="EditCatImage.aspx?CatId=<%# Eval("CatId") %>&CatImgDesk=<%# Eval("CatImgDesk") %>&CatImgMbl=<%# Eval("CatImgMbl") %>" >Change Image</a>
                                        <%--<asp:Button ID="Button3" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Change Image" />--%>

                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>"
                            DeleteCommand="DELETE FROM [Category] WHERE [CatId] = @CatId" 
                            SelectCommand="SELECT [CatId], [CatName], [CatImgMbl], [CatImgDesk], [Url], [Title], [Description], [Keyword] FROM [Category]" 
                            UpdateCommand="UPDATE [Category] SET [CatName] = @CatName, [Url] = @Url WHERE [CatId] = @CatId">
                            <DeleteParameters>
                                <asp:Parameter Name="CatId" Type="Int32" />
                            </DeleteParameters>
                            
                            <UpdateParameters>
                                <asp:Parameter Name="CatName" Type="String" />
                                
                                <asp:Parameter Name="Url" Type="String" />
                                
                                <asp:Parameter Name="CatId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </p>
                    
                    </div>

                </div>
                
            </div>

        </div>
   
</asp:Content>
