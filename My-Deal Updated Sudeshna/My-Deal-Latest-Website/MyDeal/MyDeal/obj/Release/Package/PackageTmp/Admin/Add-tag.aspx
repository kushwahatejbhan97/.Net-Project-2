<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="Add-tag.aspx.cs" Inherits="LocalPandit.Admin.Add_tag" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="main-content">
   <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Add Category Tag</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" >

                        <div class="form-group" style="padding:1em;">
                            
                            <asp:DetailsView ID="DetailsView1" runat="server" class="table fill-head" 
                                AutoGenerateRows="False" DataKeyNames="TagId" DataSourceID="SqlDataSource1" oniteminserting="DetailsView1_ItemInserting"
                                DefaultMode="Insert">
                                <Fields>
                                    <asp:BoundField DataField="TagId" HeaderText="TagId" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="TagId" />
                                    <asp:TemplateField HeaderText="Category Name" SortExpression="Catid">
                                      
                                        <InsertItemTemplate>
                                           <asp:DropDownList ID="DropDownList1" runat="server" 
                                            DataSourceID="SqlDataSourceCate" DataTextField="CategoryName" 
                                            DataValueField="Catid">
                                            </asp:DropDownList>
                                             <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ID="RequiredFieldValidator1"
                                    ValidationGroup="AddTag" ForeColor="Red" ErrorMessage="*Please Category Name"
                                    runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Tags" SortExpression="Tags">
                                        
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TxtTagName" runat="server" Text='<%# Bind("Tags") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtTagName" ValidationGroup="AddTag" runat="server" ForeColor="Red" Display="Dynamic" BorderStyle="None" ErrorMessage="*Enter Tags"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Media Upload" >
                                        <InsertItemTemplate>

                                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"    />

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="FileUpload1" ValidationGroup="AddTag" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*Upload Image"></asp:RequiredFieldValidator>

                                            <p class="help-block">* The image width and height should be 164px * 160px</p>
                   
                                        </InsertItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField ShowHeader="False">
                                        <InsertItemTemplate>
                                            <asp:Button ID="Button1" runat="server" ValidationGroup="AddTag" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:Button ID="Button2" runat="server" ValidationGroup="AddTag" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                        </ItemTemplate>
                                        <ControlStyle CssClass="btn btn-primary" />
                                    </asp:TemplateField>
                                </Fields>
                            </asp:DetailsView>
                           
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                DeleteCommand="DELETE FROM [NewListing_Website_tags_tbl] WHERE [TagId] = @TagId" 
                                InsertCommand="INSERT INTO [NewListing_Website_tags_tbl] ([Catid], [Tags], [urlt]) VALUES (@Catid, @Tags, @urlt) SELECT @NewProductID = SCOPE_IDENTITY()" 
                                ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString.ProviderName %>" 
                                SelectCommand="SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl]" 
                                UpdateCommand="UPDATE [NewListing_Website_tags_tbl] SET [Catid] = @Catid, [Tags] = @Tags WHERE [TagId] = @TagId" OnInserted="SqlDataSource1_Inserted">
                                <DeleteParameters>
                                    <asp:Parameter Name="TagId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    
                                    <asp:Parameter Name="Tags" Type="String" />
                                     <asp:Parameter Direction="Output" Name="NewProductID" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Catid" Type="Int32" />
                                    <asp:Parameter Name="Tags" Type="String" />
                                    <asp:Parameter Name="TagId" Type="Int32" />
                                    
                                    <asp:Parameter Name="urlt" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSourceCate" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
            SelectCommand="SELECT [Catid], [CategoryName] FROM [NewListing_Website_category_tbl]">
        </asp:SqlDataSource>
                            
                           
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Edit / Delete Category Tags</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                 <div class="container" style="background:#006699; padding:1em;">
                       <div class=" col-md-4">
                        <label style="color:White;">Select Category</label>
                            <asp:DropDownList ID="DdlCategory" CssClass="form-control" runat="server" AutoPostBack="true" 
                               DataSourceID="SqlDataSourceCategoryList" DataTextField="CategoryName" 
                               DataValueField="Catid">
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSourceCategoryList" runat="server" 
                               ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                               SelectCommand="SELECT [Catid], [CategoryName] FROM [NewListing_Website_category_tbl]">
                           </asp:SqlDataSource>
                       </div>
                       </div>
                <div class="box-content">
                    <div  class="form-horizontal" >

                        <div class="form-group" style="padding:1em;">
                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           <ContentTemplate>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TagId" class="table fill-head" 
                                DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display.">
                                <Columns>
                                    <asp:BoundField DataField="TagId" HeaderText="TagId" ReadOnly="True" SortExpression="TagId" />
                                    <asp:TemplateField HeaderText="Catid" SortExpression="Catid">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Catid") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server" Text='<%# Bind("Catid") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>

                            <asp:TemplateField HeaderText="Icon Image">
                                <ItemTemplate>
                                    <img id="img1" src='/upload_tag/icon/<%# Eval("CatIConImageID") %>.jpg' style="height:70px; width:70px" alt=""/>
                                </ItemTemplate>
                            </asp:TemplateField>

                                    <asp:BoundField DataField="Tags" HeaderText="Tags" SortExpression="Tags" >
                                    <ControlStyle CssClass="form-control" />
                                    </asp:BoundField>
                                    <%--<asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                                        ShowEditButton="True">
                                    <ControlStyle CssClass="btn btn-primary" />
                                    </asp:CommandField>--%>


                                    <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                    <EditItemTemplate>
                                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" OnClientClick="return confirm('Are you sure?');" />
                                        
                                        
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure?');"/>
                                        
                                        

                                    </ItemTemplate>
                                </asp:TemplateField>

                                    <%--<asp:HyperLinkField DataNavigateUrlFields="TagId"  HeaderText="Action"
                                        DataNavigateUrlFormatString="Change-image-master-tag.aspx?CatKeyid={0}" Text="Update Image" >
                                    <ControlStyle CssClass="btn btn-primary" />
                                    </asp:HyperLinkField>--%>

                                    <asp:TemplateField HeaderText="Action" ShowHeader="False">

                                    <ItemTemplate>
                                        
                                        <a class="btn btn-primary" href="Change-image-master-tag.aspx?TagId=<%# Eval("TagId") %>&Catid=<%# Eval("Catid") %>&CatIConImageID=<%# Eval("CatIConImageID") %>" >Update Image</a>
                                        

                                    </ItemTemplate>
                                         </asp:TemplateField>

                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>"
                                DeleteCommand="DELETE FROM [NewListing_Website_tags_tbl] WHERE [TagId] = @TagId" InsertCommand="INSERT INTO [NewListing_Website_tags_tbl] ([Catid], [Tags]) VALUES (@Catid, @Tags)"
                                ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString.ProviderName %>"
                                SelectCommand="SELECT [TagId], [Catid], [Tags], [CatIConImageID] FROM [NewListing_Website_tags_tbl]  WHERE ([Catid] = @Catid) ORDER BY TagId DESC" 
                                UpdateCommand="UPDATE [NewListing_Website_tags_tbl] SET [Catid] = @Catid, [Tags] = @Tags WHERE [TagId] = @TagId">
                                <DeleteParameters>
                                    <asp:Parameter Name="TagId" Type="Int32" />
                                </DeleteParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DdlCategory" DefaultValue="0" Name="CatId" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Catid" Type="Int32" />
                                    <asp:Parameter Name="Tags" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Catid" Type="Int32" />
                                    <asp:Parameter Name="Tags" Type="String" />
                                    <asp:Parameter Name="TagId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                           </ContentTemplate>
                        </asp:UpdatePanel>
                        </div>

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
