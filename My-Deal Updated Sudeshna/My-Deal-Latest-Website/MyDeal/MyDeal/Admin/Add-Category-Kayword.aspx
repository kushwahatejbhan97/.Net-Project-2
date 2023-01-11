<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="Add-Category-Kayword.aspx.cs" Inherits="LocalPandit.Admin.Add_Category_Kayword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<div id="main-content">
   <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Add Category Kayword</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" >

                        <div class="form-group" style="padding:1em;">
                            
                            <asp:DetailsView ID="DetailsView1" runat="server"  class="table fill-head"  oniteminserting="DetailsView1_ItemInserting" 
                                AutoGenerateRows="False" DataKeyNames="KeywordId" DataSourceID="SqlDataSource1" 
                                DefaultMode="Insert">
                                <Fields>
                                    <asp:BoundField DataField="KeywordId" HeaderText="KeywordId" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="KeywordId" />

                                    <asp:TemplateField HeaderText="Category Name" SortExpression="CatId">
                                       
                                        <InsertItemTemplate>
                                             <asp:DropDownList ID="DropDownList1" runat="server" 
                                            DataSourceID="SqlDataSourceCate" DataTextField="CategoryName" 
                                            DataValueField="Catid">
                                            </asp:DropDownList>
                                        </InsertItemTemplate>
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Keywords" SortExpression="Keywords">
                                       
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TxtKeyword" runat="server" Text='<%# Bind("Keywords") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtKeyword" BorderStyle="None" ValidationGroup="AddCity" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Keyword"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Keywords") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ShowHeader="False">
                                        <InsertItemTemplate>
                                            <asp:Button ID="Button1" runat="server" ValidationGroup="AddCity" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:Button ID="Button2" runat="server" ValidationGroup="AddCity" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                                DeleteCommand="DELETE FROM [NewListing_Website_Cat_Keyword_tbl] WHERE [KeywordId] = @KeywordId" 
                                InsertCommand="INSERT INTO [NewListing_Website_Cat_Keyword_tbl] ([CatId], [Keywords]) VALUES (@CatId, @Keywords)" 
                                ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString.ProviderName %>" 
                                SelectCommand="SELECT [KeywordId], [CatId], [Keywords] FROM [NewListing_Website_Cat_Keyword_tbl]" 
                                UpdateCommand="UPDATE [NewListing_Website_Cat_Keyword_tbl] SET [CatId] = @CatId, [Keywords] = @Keywords WHERE [KeywordId] = @KeywordId" OnInserted="SqlDataSource1_Inserted">
                                <DeleteParameters>
                                    <asp:Parameter Name="KeywordId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                   
                                    <asp:Parameter Name="Keywords" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CatId" Type="Int32" />
                                    <asp:Parameter Name="Keywords" Type="String" />
                                    <asp:Parameter Name="KeywordId" Type="Int32" />
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
                    <h3><i class="fa fa-bars"></i>Edit / Delete Category Keyword</h3>
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
                          

                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="KeywordId" class="table fill-head"
                                DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
                                <Columns>
                                    <asp:BoundField DataField="KeywordId" HeaderText="KeywordId" ReadOnly="True" SortExpression="KeywordId" />
                                    <asp:TemplateField HeaderText="Category Id" SortExpression="CatId">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CatId") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server" Text='<%# Bind("CatId") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>


                                    <asp:BoundField DataField="Keywords" HeaderText="Keyword" 
                                        SortExpression="Keywords" >
                                    <ControlStyle CssClass="form-control" />
                                    </asp:BoundField>
                                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                                        ShowEditButton="True">
                                    <ControlStyle CssClass="btn btn-primary" />
                                    </asp:CommandField>

                                    


                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>"
                                DeleteCommand="DELETE FROM [NewListing_Website_Cat_Keyword_tbl] WHERE [KeywordId] = @KeywordId"
                                InsertCommand="INSERT INTO [NewListing_Website_Cat_Keyword_tbl] ([CatId], [Keywords]) VALUES (@CatId, @Keywords)"
                                ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString.ProviderName %>"
                                SelectCommand="SELECT [KeywordId], [CatId], [Keywords] FROM [NewListing_Website_Cat_Keyword_tbl] WHERE ([Catid] = @Catid)  ORDER BY KeywordId DESC"
                                UpdateCommand="UPDATE [NewListing_Website_Cat_Keyword_tbl] SET [CatId] = @CatId, [Keywords] = @Keywords WHERE [KeywordId] = @KeywordId">
                                <DeleteParameters>
                                    <asp:Parameter Name="KeywordId" Type="Int32" />
                                </DeleteParameters>
                                 <SelectParameters>
                                    <asp:ControlParameter ControlID="DdlCategory" DefaultValue="0" Name="CatId" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="CatId" Type="Int32" />
                                    <asp:Parameter Name="Keywords" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CatId" Type="Int32" />
                                    <asp:Parameter Name="Keywords" Type="String" />
                                    <asp:Parameter Name="KeywordId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                          

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>



    <footer>
        <p>2017 © My-Deal</p>
    </footer>

    <a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i class="fa fa-chevron-up"></i></a>
</div>



</asp:Content>
