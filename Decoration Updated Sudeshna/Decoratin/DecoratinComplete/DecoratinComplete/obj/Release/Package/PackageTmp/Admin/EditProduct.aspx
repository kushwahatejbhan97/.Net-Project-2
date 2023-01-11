<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="DecoratinComplete.Admin.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Edit Product Details</h4>
                </div>

                <div class="form-titleNew">


                    <div class="form-group row">

                               

                               <div class="col-md-6">
                            <label for="drpcategory">Category</label>

                                   <asp:DropDownList ID="DropDownList1" AutoPostBack="true" DataSourceID="SqlDataSource3" AppendDataBoundItems="true" CssClass="form-control" DataTextField="CatName" DataValueField="CatId" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                   <asp:ListItem Value="0">Select Category</asp:ListItem>
                                       </asp:DropDownList>
                                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [CatId], [CatName] FROM [Category]"></asp:SqlDataSource>
                                   
                            </div>

                               <div class="col-md-6">
                            <label for="drpProduct">Product</label>
                                   <asp:DropDownList ID="DropDownList2" CssClass="form-control" DataSourceID="SqlDataSource4" DataTextField="ProductName" DataValueField="ProductId" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" runat="server">
                                       
                                   </asp:DropDownList>
                                   <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [ProductId], [ProductName], [Url], [Title], [KeyWords], [Description], [Details], [CatId], [CatName], [Color], [Type], [Material], [Theme], [SuitableFor], [Trending], [Offers], [Recommends], [Status], [Ratings], [Brand], [ProductSizeId], [Dimensions], [Weight], [Stock], [StocktoDispatch], [Discount], [MRP], [Price] FROM [Product] WHERE ([CatId] = @CatId)">
                                       <SelectParameters>
                                           <asp:ControlParameter ControlID="DropDownList1" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
                                       </SelectParameters>
                                   </asp:SqlDataSource>


                                   <%--<asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [ProductId], [ProductName] FROM [Product] WHERE ([CatId] = @CatId)">
                                       <SelectParameters>
                                           <asp:ControlParameter ControlID="drpcategory" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
                                       </SelectParameters>
                                   </asp:SqlDataSource>--%>
                             
                                  
                            </div>


                                   
                        </div>
                </div>

                <div class="form-body">
                   <div class="row">

                
                           <div class="form-group row">
                            <div class="col-md-6">
                            <label for="txtProductName">product Name</label>
                            <asp:TextBox ID="txtProductName" AutoPostBack="true" CssClass="form-control" placeholder="Enter Product Name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtProductName" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Name"></asp:RequiredFieldValidator>
                                </div>

                               <div class="col-md-6">
                            <label for="drpBrand">Brand</label>
                            

                                   <asp:DropDownList ID="drpBrand" DataSourceID="SqlDataSource2" CssClass="form-control" runat="server" DataTextField="Brand" DataValueField="Brand"></asp:DropDownList>
                                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [Brand] FROM [Brand]"></asp:SqlDataSource>

                                   <asp:RequiredFieldValidator ControlToValidate="drpBrand" ID="RequiredFieldValidator2"
ValidationGroup="Productform" ErrorMessage="Please select a type"
InitialValue="0" runat="server"  Display="Dynamic">
</asp:RequiredFieldValidator>

                            </div>
                            
                        </div>
               

                           <div class="form-group row">

                               

                               <div class="col-md-6">
                            <label for="txtKeyword">Keywords</label>
                             <asp:TextBox ID="txtKeyword" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtKeyword" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Keyword"></asp:RequiredFieldValidator>
                            </div>

                               <div class="col-md-6">
                            <label for="txtDetails">Details</label>
                             <asp:TextBox ID="txtDetails" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtDetails" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Details"></asp:RequiredFieldValidator>
                            </div>
                                   
                        </div>

                          

                           

                          
                           <div class="form-group row">

                               <div class="col-md-6">
                                   <label for="drpCategory">Category</label>
                                   
                                   <asp:DropDownList ID="drpCategory" AutoPostBack="true"  CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="CatName" DataValueField="CatId" OnSelectedIndexChanged="drpPsize_SelectedIndexChanged"></asp:DropDownList>
                                   <asp:RequiredFieldValidator ControlToValidate="drpCategory" ID="RequiredFieldValidator5"
ValidationGroup="Productform" ErrorMessage="Please select a type"
InitialValue="0" runat="server"  Display="Dynamic">
</asp:RequiredFieldValidator>
                             <%--<asp:TextBox ID="txtCatId" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>--%>
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [CatId], [CatName] FROM [Category]">
                                   </asp:SqlDataSource>
                               </div>

                               <div class="col-md-6">
                      
                            <label for="txtColor">Color</label>
                             <asp:TextBox ID="txtColor" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtColor" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Color"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                           <div class="form-group row">

                               <div class="col-md-6">
                            <label for="txtType">Type</label>
                             <asp:TextBox ID="txtType" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtType" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Type"></asp:RequiredFieldValidator>
                            
                        </div>

                           
                  
                       <div class="col-md-6">
                           
                            <label for="txtMaterial">Material</label>
                             <asp:TextBox ID="txtMaterial" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtMaterial" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Material"></asp:RequiredFieldValidator>
                            
                        </div>
                               </div>


                           <div class="form-group row">
                        <div class="col-md-6">
                            <label for="txtTheme">Theme</label>
                             <asp:TextBox ID="txtTheme" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtTheme" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Theme"></asp:RequiredFieldValidator>

                            
                        </div>

                    <div class="col-md-6">
                            <label for="txtSuitable">Suitable For</label>
                             <asp:TextBox ID="txtSuitable" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="txtSuitable" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Suitable"></asp:RequiredFieldValidator>
                            
                        </div>
                        </div>

                           

                           <div class="form-group row">
                               <div class="col-md-3">
                            <label for="ChkTrending">Trending</label>
                                   
                             <asp:CheckBox ID="ChkTrending" CssClass="form-control" placeholder="" runat="server"></asp:CheckBox>
                            </div>

                           <div class="col-md-3">
                            <label for="chkOffers">Offers</label>
                             <asp:CheckBox ID="chkOffers" CssClass="form-control" placeholder="" runat="server"></asp:CheckBox>
                            </div>

                           <div class="col-md-3">
                            <label for="chkRecommends">Recommends</label>
                             <asp:CheckBox ID="chkRecommends" CssClass="form-control" placeholder="" runat="server"></asp:CheckBox>
                            </div>
                           <div class="col-md-3">
                            <label for="chkStatus">Status</label>
                             <asp:CheckBox ID="chkStatus" CssClass="form-control" placeholder="" runat="server"></asp:CheckBox>
                            </div>
                        </div>


                       <div class="form-group row">

                            <div class="col-md-6">
                                <label for="ChkTrending"  >Select General Tags</label>

                                <asp:CheckBoxList ID="CBGeneralList"  RepeatDirection="Horizontal"  CssClass="form-control" runat="server">
                                   
                                    <asp:ListItem Value="clearance">Clearance</asp:ListItem>
                                    <asp:ListItem Value="seasonal" >Seasonal</asp:ListItem>
                   
                                </asp:CheckBoxList>

                                
                               
                                

                                
                            </div>

                            

                            


                        </div>

                           
                       <div class="form-group row">
                             <div class="col-md-12">
                                <label for="ChkTrending"  >Select Category Tags</label>

                                <asp:CheckBoxList ID="CheckBoxListtag" DataSourceID="SqlDbTags"  RepeatDirection="Horizontal" DataTextField="TagName" DataValueField="Url" CssClass="form-control" runat="server">
                                   
                                   
                   
                                </asp:CheckBoxList>

                                
                               <asp:SqlDataSource ID="SqlDbTags" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                                SelectCommand="SELECT DISTINCT [TagId], [TagName], [CatId], [Url] FROM [Tag]  ORDER BY [TagName]">

                                <%--<SelectParameters>
                                    <asp:ControlParameter ControlID="drpCategory" DefaultValue="0" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>--%>
                            </asp:SqlDataSource>
                                

                                
                            </div>
                         </div> 
                       
                       </div>
                    
                        <asp:Button ID="btnSubmitEditProduct" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Update" OnClick="btnSubmitEditProduct_Click"/>
                    <asp:Button ID="btnDelete" ValidationGroup="Productform" CssClass="btn btn-warning" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                   
                </div>
            </div>

        </div>
    </div>


    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Update Primary</h4>
                </div>

                <div class="form-body">


                    

                    <div class="form-group row">

                               

                               <div class="col-md-4">
                            <label for="drpcategory">Category</label>

                                   <asp:DropDownList ID="DropDownList3" DataSourceID="SqlDataSource5" AppendDataBoundItems="true" AutoPostBack="true" CssClass="form-control" DataTextField="CatName" DataValueField="CatId" runat="server" OnSelectedIndexChanged="drpPsize_SelectedIndexChanged">
                                   <asp:ListItem Value="0">Select Category</asp:ListItem>
                                       </asp:DropDownList>
                                   <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [CatId], [CatName] FROM [Category]"></asp:SqlDataSource>
                                   
                            </div>

                               <div class="col-md-4">
                            <label for="DropDownList2">Product</label>
                                   <asp:DropDownList ID="DropDownList21" DataSourceID="SqlDataSource6" CssClass="form-control"   AutoPostBack="True" DataTextField="ProductName" DataValueField="ProductId"  runat="server" OnSelectedIndexChanged="drpPsize_SelectedIndexChanged" >
                                      
                                   </asp:DropDownList>
                                
                                   <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [ProductId], [ProductName] FROM [Product] WHERE ([CatId] = @CatId)">
                                       <SelectParameters>
                                           <asp:ControlParameter ControlID="DropDownList3" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
                                       </SelectParameters>
                                   </asp:SqlDataSource>
                           
                            </div>

                           <div class="col-md-4">
                            <label for="drpPsizeUpdate">Product Size</label>
                               <asp:DropDownList ID="drpPsizeUpdate" DataSourceID="SqlDataSource7" CssClass="form-control"    AutoPostBack="True" DataTextField="Dimensions" DataValueField="ProductSizeId" OnSelectedIndexChanged="drpPsize_SelectedIndexChanged"  runat="server">
                                       
                                   </asp:DropDownList>
                               <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [ProductSizeId], [Dimensions] FROM [ProductSize] WHERE ([ProductId] = @ProductId)">
                                   <SelectParameters>
                                       <asp:ControlParameter ControlID="DropDownList21" Name="ProductId" PropertyName="SelectedValue" Type="Int32" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                                   
                                   
                                   
                             
                                  
                            </div>
                                   
                        </div>
                    <asp:Button ID="btnUpdatePrimary" ValidationGroup="" CssClass="btn btn-dark" runat="server" Text="Update" OnClick="btnUpdatePrimary_Click"  />
                </div>

            </div>

        </div>
    </div>
</asp:Content>
