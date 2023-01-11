<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="add-category.aspx.cs" Inherits="LocalPandit.Admin.add_category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-content">
   

   

    
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Add Category</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-3 col-lg-2 control-label" for="username">Select Head Tag:</label>
                            <div class="col-sm-6 col-lg-4 controls">
                                <asp:CheckBox ID="CheckBoxPopular" runat="server" Text="Popular" />
                                <asp:CheckBox ID="CheckBoxHR" runat="server" Text="Humen Resources" />
                                <asp:CheckBox ID="CheckBoxIndustries" runat="server" Text="Industries" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 col-lg-2 control-label" for="username">Category Name:</label>
                            <div class="col-sm-6 col-lg-4 controls">
                                <asp:TextBox ID="tb_cat_name" class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tb_cat_name" ValidationGroup="AddCat" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Category Name"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 col-lg-2 control-label" for="email">Category Icon (small):</label>
                            <div class="col-sm-6 col-lg-4 controls">
                                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />  
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="FileUpload1" ValidationGroup="AddCat" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*Upload Category Icon (small)"></asp:RequiredFieldValidator>
                                <p class="help-block">* The image width and height should be 164px * 160px</p>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 col-lg-2 control-label" for="password">Category Banner (Large):</label>
                            <div class="col-sm-6 col-lg-4 controls">
                                <asp:FileUpload ID="FileUpload2" class="form-control" runat="server" />  
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FileUpload2" ValidationGroup="AddCat" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*Upload Category Icon (Large)"></asp:RequiredFieldValidator>
                                <p class="help-block">* The image width and height should be 164px * 160px</p>
                            </div>
                        </div>

                        

                        
                        <div class="form-group">
                            <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnsignin" runat="server" ValidationGroup="AddCat" Text="Submit"  class="btn btn-primary" onclick="signin_Click" />
                            </div>
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
                    <h3><i class="fa fa-bars"></i>Edit / Delete Category</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" >

                        <div class="form-group" style="padding:1em;">
                            
                             
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table fill-head"
                                DataKeyNames="Catid" DataSourceID="SqlDataSource1" 
                                EmptyDataText="There are no data records to display." AllowPaging="True" 
                                AllowSorting="True">
                                <Columns>
                                    <asp:BoundField DataField="Catid" HeaderText="Category Id" ReadOnly="True" 
                                        SortExpression="Catid" >
                                    <FooterStyle CssClass="form-control" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CategoryName" HeaderText="Category Name" 
                                        SortExpression="CategoryName" >
                                    <ControlStyle CssClass="form-control" />
                                    </asp:BoundField>

                         <asp:TemplateField HeaderText="Icon Image" SortExpression="CatIConImageID">
                                <ItemTemplate>
                                    <img src='/upload_category/icon/<%# Eval("CatIConImageID") %>.jpg' style="height:70px; width:70px" alt=""/>
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Image" SortExpression="CatImageID">
                                <ItemTemplate>
                                    <img src='/upload_category/cate_banner/<%# Eval("CatImageID") %>.jpg' style="height:70px; width:70px" alt=""/>
                                </ItemTemplate>
                            </asp:TemplateField>


                                    <asp:BoundField DataField="Priority" HeaderText="Priority" 
                                        SortExpression="Priority" >
                                    <ControlStyle CssClass="form-control" />
                                    </asp:BoundField>
                                    <asp:CheckBoxField DataField="Enable" HeaderText="Popular" 
                                        SortExpression="Enable" >
                                    <ControlStyle CssClass="form-control" />
                                    </asp:CheckBoxField>

                                     <asp:CheckBoxField DataField="EnableBottom" HeaderText="Humen Resources" 
                                        SortExpression="EnableBottom" >
                                    <ControlStyle CssClass="form-control" />
                                    </asp:CheckBoxField>

                                    <asp:CheckBoxField DataField="Industries" HeaderText="Industries" 
                                        SortExpression="Industries" >
                                    <ControlStyle CssClass="form-control" />
                                    </asp:CheckBoxField>

                                    <%--<asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                                     
                                        ShowEditButton="True"   >
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
                            <%--<asp:HyperLinkField DataNavigateUrlFields="Catid"  HeaderText="Action"
                                DataNavigateUrlFormatString="Change-image-master.aspx?Catid={0}" Text="Update Image" >
                            <ControlStyle CssClass="btn btn-primary" />
                            </asp:HyperLinkField>--%>
                                     <asp:TemplateField HeaderText="Action" ShowHeader="False">

                                    <ItemTemplate>
                                        
                                        <a class="btn btn-primary" href="Change-image-master.aspx?Catid=<%# Eval("Catid") %>&CatIConImageID=<%# Eval("CatIConImageID") %>&CatImageID=<%# Eval("CatImageID") %>" >Update Image</a>
                                        

                                    </ItemTemplate>
                                         </asp:TemplateField>

                                </Columns>
                            </asp:GridView>

                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                DeleteCommand="DELETE FROM [NewListing_Website_category_tbl] WHERE [Catid] = @Catid" 
                                
                                ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString.ProviderName %>" 
                                SelectCommand="SELECT [Catid], [CategoryName], [Priority], [Enable], [EnableBottom], [Industries], [CatImageID],[CatIConImageID] FROM [NewListing_Website_category_tbl] ORDER BY Catid DESC" 
                                UpdateCommand="UPDATE [NewListing_Website_category_tbl] SET [CategoryName] = @CategoryName, [Priority] = @Priority, [Enable] = @Enable, [EnableBottom] =@EnableBottom, [Industries] = @Industries WHERE [Catid] = @Catid">
                                <DeleteParameters>
                                    <asp:Parameter Name="Catid" Type="Int32" />
                                </DeleteParameters>
                                
                                <UpdateParameters>
                                    <asp:Parameter Name="CategoryName" Type="String" />
                                    <asp:Parameter Name="Priority" Type="Int32" />
                                    <asp:Parameter Name="Enable" Type="Boolean" />
                                    <asp:Parameter Name="EnableBottom" Type="Boolean" />
                                    <asp:Parameter Name="Catid" Type="Int32" />
                                    
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            
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
