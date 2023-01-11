
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="DecoratinComplete.Admin.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style>
        .forms label {
    font-weight: 500;
    padding: 5px 11px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Product Details</h4>
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


                                <asp:DropDownList ID="drpBrand" DataSourceID="SqlDataSource2" AppendDataBoundItems="true" CssClass="form-control" runat="server" DataTextField="Brand" DataValueField="Brand">
                                    <asp:ListItem Value="Select Brand">Select Brand</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [Brand] FROM [Brand]"></asp:SqlDataSource>

                                <asp:RequiredFieldValidator ControlToValidate="drpBrand" ID="RequiredFieldValidator2"
                                    ValidationGroup="Productform" ForeColor="Red" ErrorMessage="*Please select brand"
                                    InitialValue="Select Brand" runat="server" Display="Dynamic">
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

                                <asp:DropDownList ID="drpCategory" AppendDataBoundaItems="true" AutoPostBack="true" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="CatName" DataValueField="CatId">
                                    <asp:ListItem Value="0">Select Category</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ControlToValidate="drpCategory" ID="RequiredFieldValidator14"
                                    ValidationGroup="Productform" ForeColor="Red" ErrorMessage="*Please select Category"
                                    InitialValue="Select Category" runat="server" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                                <%--<asp:RequiredFieldValidator ControlToValidate="drpCategory" ID="RequiredFieldValidator5"
                                    ValidationGroup="Productform" ForeColor="Red" ErrorMessage="Please select a type"
                                    InitialValue="Select Category" runat="server" Display="Dynamic">
                                </asp:RequiredFieldValidator>--%>
                                <%--<asp:TextBox ID="txtCatId" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>--%>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [CatId], [CatName] FROM [Category]"></asp:SqlDataSource>
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
                                


                            </div>

                            <div class="col-md-6">
                                <label for="txtSuitable">Suitable For</label>
                                <asp:TextBox ID="txtSuitable" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                

                            </div>
                        </div>



                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="txtMinQuantity">Minimum Quantity</label>
                                <asp:TextBox ID="txtMinQuantity" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="txtMinQuantity" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Theme"></asp:RequiredFieldValidator>


                            </div>

                            <div class="col-md-6">
                                <label for="drpProductSizelbl">Product Size label</label>
                                <asp:DropDownList ID="drpProductSizelbl" CssClass="form-control" runat="server">
                                    <asp:ListItem>New</asp:ListItem>
                                    <asp:ListItem>Offers</asp:ListItem>
                                    <asp:ListItem>Trending</asp:ListItem>
                                    <asp:ListItem>Hot Selling</asp:ListItem>
                                    <asp:ListItem>Back Order</asp:ListItem>
                                </asp:DropDownList>
                                <%--<asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="txtSuitable" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Suitable"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>


                        <div class="form-group row">
                            <div class="col-md-4">
                                <label for="fileDesktop">Product Desktop Image</label>
                                <asp:FileUpload ID="fileDesktop" CssClass="form-control" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="fileDesktop" ValidationGroup="Productform" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*Upload Desktop Image"></asp:RequiredFieldValidator>
                                <p class="help-block">* The image width and height should be 253px * 253px</p>
                            </div>
                            <div class="col-md-4">

                                <label for="fileMobile">Product Mobile Image</label>
                                <asp:FileUpload ID="fileMobile" CssClass="form-control" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="fileMobile" ValidationGroup="Productform" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*Upload Mobile Image"></asp:RequiredFieldValidator>
                                <p class="help-block">* The image width and height should be 160px * 160px</p>
                            </div>
                            <div class="col-md-4">

                                <label for="fileSlider">Product Slider</label>
                                <asp:FileUpload ID="fileSlider" CssClass="form-control" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="fileSlider" ValidationGroup="Productform" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*Upload Slider Image"></asp:RequiredFieldValidator>
                                <p class="help-block">* The image width and height should be 600px * 600px</p>
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
                                   
                                    <asp:ListItem  Value="clearance">Clearance</asp:ListItem>
                                    <asp:ListItem Value="seasonal">Seasonal</asp:ListItem>
                   
                                </asp:CheckBoxList>

                                
                               
                                

                                
                            </div>

                            <div class="col-md-6">
                                <label for="txtProductSizeCode">Product Size Code</label>
                                <asp:TextBox ID="txtProductSizeCode" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtProductSizeCode" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Size Code"></asp:RequiredFieldValidator>


                            </div>

                            


                        </div>

                         <div class="form-group row">
                             <div class="col-md-12">
                                <label for="ChkTrending"  >Select Category Tags</label>

                                <asp:CheckBoxList ID="CheckBoxListtag" DataSourceID="SqlDbTags"  RepeatDirection="Horizontal" DataTextField="TagName" DataValueField="Url" CssClass="form-control" runat="server">
                                   
                                   
                   
                                </asp:CheckBoxList>

                                
                               <asp:SqlDataSource ID="SqlDbTags" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                                SelectCommand="SELECT DISTINCT [TagId], [TagName], [CatId], [Url] FROM [Tag]  ORDER BY [TagName]">

                                <SelectParameters>
                                    <asp:ControlParameter ControlID="drpCategory" DefaultValue="0" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                                

                                
                            </div>
                         </div>

                    </div>



                </div>
            </div>
        </div>
    </div>

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Product Size Details</h4>
                </div>
                <div class="form-body">

                    <div class="row">



                        <div class="form-group row ">
                            <div class="col-md-6">
                                <label for="txtDimensions">Dimensions</label>
                                <asp:TextBox ID="txtDimensions" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ValidationGroup="Productform" ControlToValidate="txtDimensions" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Dimensions"></asp:RequiredFieldValidator>


                            </div>
                            <div class="col-md-6">

                                <label for="txtWeight">Weight</label>
                                <asp:TextBox ID="txtWeight" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                

                            </div>

                        </div>

                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="txtStock">Stock</label>
                                <asp:TextBox ID="txtStock" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="Productform" ValidationExpression="^\d{0,8}(\.\d{1,4})?$" runat="server" ErrorMessage="Please Enter Your Correct Stock" ControlToValidate="txtStock" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>


                            </div>

                            <div class="col-md-6">
                                <label for="ChkStatusPSize">Status</label>
                                <asp:CheckBox ID="ChkStatusPSize" CssClass="form-control" placeholder="" runat="server" />


                            </div>


                        </div>



                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="txtMRP">MRP</label>
                                <asp:TextBox ID="txtMRP" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="reprice" ValidationGroup="Productform" ValidationExpression="^\d{0,8}(\.\d{1,4})?$" runat="server" ErrorMessage="Please Enter Your Correct MRP" ControlToValidate="txtMRP" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>


                            </div>

                            <div class="col-md-6">
                                <label for="exampleInputPassword1">Price</label>
                                <asp:TextBox ID="txtPrice" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="Productform" ValidationExpression="^\d{0,8}(\.\d{1,4})?$" runat="server" ErrorMessage="Please Enter Your Correct Product Price" ControlToValidate="txtPrice" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                    </div>

                    <asp:Button ID="btnSubmitProduct" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnSubmitProduct_Click" />
                    <asp:Button ID="BtnClearAll" ValidationGroup="Productform" CssClass="btn btn-warning" runat="server" Text="Clear All" OnClick="BtnClearAll_Click" />
                </div>



            </div>
        </div>

    </div>


    <div class="main-page">
        <div class="forms">

            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">

                    <h4>Edit Delete Product</h4>

                </div>
                <div class="form-body" style="overflow-x: scroll;">

                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                            <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                            <asp:BoundField DataField="Dimensions" HeaderText="Dimensions" SortExpression="Dimensions" />
                            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                            <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
                            <asp:BoundField DataField="MRP" HeaderText="MRP" SortExpression="MRP" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="MinQuantity" HeaderText="MinQuantity" SortExpression="MinQuantity" />
                            <asp:TemplateField HeaderText="ProductSizeImgMbl" SortExpression="ProductSizeImgMbl">

                                <ItemTemplate>
                                    <itemtemplate>

                                        <img src='/admin/Product/Mobile/<%# Eval("ProductSizeImgMbl") %>' height="60" />
                                    </itemtemplate>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>"
                        DeleteCommand="DELETE FROM [Product] WHERE [ProductId] = @ProductId"
                        InsertCommand="INSERT INTO [Product] ([ProductName], [Url], [Title], [KeyWords], [Description], [Details], [CatName], [Color], [Type], [Material], [Theme], [SuitableFor], [Trending], [Offers], [Recommends], [Status], [Ratings], [Brand], [ProductSizeId], [Dimensions], [Weight], [Stock], [StocktoDispatch], [Discount], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductSizeImgMbl], [ProductSizeImgDesk], [ProductSizeSlider]) VALUES (@ProductName, @Url, @Title, @KeyWords, @Description, @Details, @CatName, @Color, @Type, @Material, @Theme, @SuitableFor, @Trending, @Offers, @Recommends, @Status, @Ratings, @Brand, @ProductSizeId, @Dimensions, @Weight, @Stock, @StocktoDispatch, @Discount, @MRP, @Price, @MinQuantity, @ProductSizeLabel, @ProductSizeImgMbl, @ProductSizeImgDesk, @ProductSizeSlider)" ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>"
                        SelectCommand="SELECT [ProductId], [ProductName], [Url], [Title], [KeyWords], [Description], [Details], [CatId], [CatName], [Color], [Type], [Material], [Theme], [SuitableFor], [Trending], [Offers], [Recommends], [Status], [Ratings], [Brand], [ProductSizeId], [Dimensions], [Weight], [Stock], [StocktoDispatch], [Discount], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductSizeImgMbl], [ProductSizeImgDesk], [ProductSizeSlider] FROM [Product] WHERE ([CatId] = @CatId)  ORDER BY [ProductId] DESC"
                        UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [Url] = @Url, [Title] = @Title, [KeyWords] = @KeyWords, [Description] = @Description, [Details] = @Details, [CatName] = @CatName, [Color] = @Color, [Type] = @Type, [Material] = @Material, [Theme] = @Theme, [SuitableFor] = @SuitableFor, [Trending] = @Trending, [Offers] = @Offers, [Recommends] = @Recommends, [Status] = @Status, [Ratings] = @Ratings, [Brand] = @Brand, [ProductSizeId] = @ProductSizeId, [Dimensions] = @Dimensions, [Weight] = @Weight, [Stock] = @Stock, [StocktoDispatch] = @StocktoDispatch, [Discount] = @Discount, [MRP] = @MRP, [Price] = @Price, [MinQuantity] = @MinQuantity, [ProductSizeLabel] = @ProductSizeLabel, [ProductSizeImgMbl] = @ProductSizeImgMbl, [ProductSizeImgDesk] = @ProductSizeImgDesk, [ProductSizeSlider] = @ProductSizeSlider WHERE [ProductId] = @ProductId">
                        <DeleteParameters>
                            <asp:Parameter Name="ProductId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Url" Type="String" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="KeyWords" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="Details" Type="String" />

                            <asp:Parameter Name="CatName" Type="String" />
                            <asp:Parameter Name="Color" Type="String" />
                            <asp:Parameter Name="Type" Type="String" />
                            <asp:Parameter Name="Material" Type="String" />
                            <asp:Parameter Name="Theme" Type="String" />
                            <asp:Parameter Name="SuitableFor" Type="String" />
                            <asp:Parameter Name="Trending" Type="Boolean" />
                            <asp:Parameter Name="Offers" Type="Boolean" />
                            <asp:Parameter Name="Recommends" Type="Boolean" />
                            <asp:Parameter Name="Status" Type="Boolean" />
                            <asp:Parameter Name="Ratings" Type="Decimal" />
                            <asp:Parameter Name="Brand" Type="String" />
                            <asp:Parameter Name="ProductSizeId" Type="Int32" />
                            <asp:Parameter Name="Dimensions" Type="String" />
                            <asp:Parameter Name="Weight" Type="String" />
                            <asp:Parameter Name="Stock" Type="Int32" />
                            <asp:Parameter Name="StocktoDispatch" Type="Int32" />
                            <asp:Parameter Name="Discount" Type="Int32" />
                            <asp:Parameter Name="MRP" Type="Decimal" />
                            <asp:Parameter Name="Price" Type="Decimal" />
                            <asp:Parameter Name="MinQuantity" Type="Int32" />
                            <asp:Parameter Name="ProductSizeLabel" Type="String" />
                            <asp:Parameter Name="ProductSizeImgMbl" Type="String" />
                            <asp:Parameter Name="ProductSizeImgDesk" Type="String" />
                            <asp:Parameter Name="ProductSizeSlider" Type="String" />
                        </InsertParameters>
                        <SelectParameters>

                            <asp:ControlParameter ControlID="drpCategory" DefaultValue="0" Name="CatId"
                                PropertyName="SelectedValue" Type="Int32" />

                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Url" Type="String" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="KeyWords" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="Details" Type="String" />

                            <asp:Parameter Name="CatName" Type="String" />
                            <asp:Parameter Name="Color" Type="String" />
                            <asp:Parameter Name="Type" Type="String" />
                            <asp:Parameter Name="Material" Type="String" />
                            <asp:Parameter Name="Theme" Type="String" />
                            <asp:Parameter Name="SuitableFor" Type="String" />
                            <asp:Parameter Name="Trending" Type="Boolean" />
                            <asp:Parameter Name="Offers" Type="Boolean" />
                            <asp:Parameter Name="Recommends" Type="Boolean" />
                            <asp:Parameter Name="Status" Type="Boolean" />
                            <asp:Parameter Name="Ratings" Type="Decimal" />
                            <asp:Parameter Name="Brand" Type="String" />
                            <asp:Parameter Name="ProductSizeId" Type="Int32" />
                            <asp:Parameter Name="Dimensions" Type="String" />
                            <asp:Parameter Name="Weight" Type="String" />
                            <asp:Parameter Name="Stock" Type="Int32" />
                            <asp:Parameter Name="StocktoDispatch" Type="Int32" />
                            <asp:Parameter Name="Discount" Type="Int32" />
                            <asp:Parameter Name="MRP" Type="Decimal" />
                            <asp:Parameter Name="Price" Type="Decimal" />
                            <asp:Parameter Name="MinQuantity" Type="Int32" />
                            <asp:Parameter Name="ProductSizeLabel" Type="String" />
                            <asp:Parameter Name="ProductSizeImgMbl" Type="String" />
                            <asp:Parameter Name="ProductSizeImgDesk" Type="String" />
                            <asp:Parameter Name="ProductSizeSlider" Type="String" />
                            <asp:Parameter Name="ProductId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </div>

            </div>

        </div>

    </div>


</asp:Content>
