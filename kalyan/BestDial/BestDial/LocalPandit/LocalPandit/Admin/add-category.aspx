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
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 col-lg-2 control-label" for="email">Category Icon (small):</label>
                            <div class="col-sm-6 col-lg-4 controls">
                                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />  
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 col-lg-2 control-label" for="password">Category Banner (Large):</label>
                            <div class="col-sm-6 col-lg-4 controls">
                                <asp:FileUpload ID="FileUpload2" class="form-control" runat="server" />  
                            </div>
                        </div>

                        

                        
                        <div class="form-group">
                            <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnsignin" runat="server" Text="Submit"  class="btn btn-primary" onclick="signin_Click" />
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
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                             <ContentTemplate>
                             
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

                         <asp:TemplateField HeaderText="Icon Image">
                                <ItemTemplate>
                                    <img id="img1" src='/upload_category/icon/<%# Eval("Catid") %>.jpg' style="height:70px; width:70px" alt=""/>
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <img id="img1" src='/upload_category/cate_banner/<%# Eval("Catid") %>_1.jpg' style="height:70px; width:70px" alt=""/>
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

                                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                                        ShowEditButton="True">
                                    <ControlStyle CssClass="btn btn-primary" />
                                    </asp:CommandField>

                            <asp:HyperLinkField DataNavigateUrlFields="Catid"  HeaderText="Action"
                                DataNavigateUrlFormatString="Change-image-master.aspx?Catid={0}" Text="Update Image" >
                            <ControlStyle CssClass="btn btn-primary" />
                            </asp:HyperLinkField>

                                </Columns>
                            </asp:GridView>

                            </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                DeleteCommand="DELETE FROM [NewListing_Website_category_tbl] WHERE [Catid] = @Catid" 
                                InsertCommand="INSERT INTO [NewListing_Website_category_tbl] ([CategoryName], [Priority], [Enable]) VALUES (@CategoryName, @Priority, @Enable)" 
                                ProviderName="<%$ ConnectionStrings:BestdialConnectionString.ProviderName %>" 
                                SelectCommand="SELECT [Catid], [CategoryName], [Priority], [Enable], [EnableBottom], [Industries] FROM [NewListing_Website_category_tbl] ORDER BY Catid DESC" 
                                UpdateCommand="UPDATE [NewListing_Website_category_tbl] SET [CategoryName] = @CategoryName, [Priority] = @Priority, [Enable] = @Enable, [EnableBottom] =@EnableBottom, [Industries] = @Industries WHERE [Catid] = @Catid">
                                <DeleteParameters>
                                    <asp:Parameter Name="Catid" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="CategoryName" Type="String" />
                                    <asp:Parameter Name="Priority" Type="Int32" />
                                    <asp:Parameter Name="Enable" Type="Boolean" />
                                </InsertParameters>
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
        <p>2017 © Local Pandit</p>
    </footer>

    <a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i class="fa fa-chevron-up"></i></a>
</div>

</asp:Content>
