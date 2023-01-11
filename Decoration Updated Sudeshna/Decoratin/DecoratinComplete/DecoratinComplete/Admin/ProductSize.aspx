<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ProductSize.aspx.cs" Inherits="DecoratinComplete.Admin.ProductSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


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
                                   <label for="drpCategory">Category</label>
                                   
                                   <asp:DropDownList ID="drpCategory" AppendDataBoundItems="true"  CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="CatName" DataValueField="CatId" AutoPostBack="True" OnSelectedIndexChanged="drpCategory_SelectedIndexChanged" >
                                      <asp:ListItem Value="0">Select Category</asp:ListItem>
                                   </asp:DropDownList>
                                   <asp:RequiredFieldValidator ControlToValidate="drpCategory" ID="RequiredFieldValidator5"
ValidationGroup="Productform" ErrorMessage="Please select a type"
InitialValue="Select Category" runat="server"  Display="Dynamic">
</asp:RequiredFieldValidator>
                           
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [CatId], [CatName] FROM [Category]">
                                   </asp:SqlDataSource>
                               </div>
                               <div class="col-md-6">
                           
                            <label for="drpProductId">Product</label>
                            
                            
                                   <asp:DropDownList ID="drpProduct" AutoPostBack="true"  CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="ProductName" DataValueField="ProductId" >
                                       
                                   </asp:DropDownList>
                                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [ProductId], [ProductName], [CatId] FROM [Product] WHERE ([CatId] = @CatId)">
                                       <SelectParameters>
                                           <asp:ControlParameter ControlID="drpCategory" DefaultValue="0" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
                                       </SelectParameters>
                                   </asp:SqlDataSource>
                                   <asp:RequiredFieldValidator ControlToValidate="drpProduct" ID="RequiredFieldValidator4"
ValidationGroup="Productform" ErrorMessage="Please select a type"
InitialValue="Select Category" runat="server"  Display="Dynamic">
</asp:RequiredFieldValidator>
                                   
                            
                        </div>

                               </div>
                        

                           <div class="form-group row ">
                               <div class="col-md-6">
                            <label for="txtDimensions">Dimensions</label>
                             <asp:TextBox ID="txtDimensions" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Productform" ControlToValidate="txtDimensions" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Dimensions"></asp:RequiredFieldValidator>

                            
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
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="Productform" ValidationExpression="^\d{0,8}(\.\d{1,4})?$" runat="server" ErrorMessage="Please Enter Your Correct Product Stock" ControlToValidate="txtStock" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>

                            
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


                       <div class="form-group row">
                        <div class="col-md-6">
                            <label for="txtMinQuantity">Minimum Quantity</label>
                             <asp:TextBox ID="txtMinQuantity" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="txtMinQuantity" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Theme"></asp:RequiredFieldValidator>

                            
                        </div>

                    <div class="col-md-6">
                            <label for="drpProductSizelbl">Product Size label</label>
                        <asp:DropDownList ID="drpProductSizelbl" CssClass="form-control" runat="server">
                            <asp:ListItem Value="New">New</asp:ListItem>
                            <asp:ListItem Value="Offers">Offers</asp:ListItem>
                            <asp:ListItem Value="Tranding">Trending</asp:ListItem>
                            <asp:ListItem Value="Hot Selling">Hot Selling</asp:ListItem>
                            <asp:ListItem Value="Back Order">Back Order</asp:ListItem>
                        </asp:DropDownList>
                             <%--<asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="txtSuitable" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Suitable"></asp:RequiredFieldValidator>--%>
                            
                        </div>
                        </div>

                       <div class="form-group row">

                            

                            <div class="col-md-6">
                                <label for="txtProductSizeCode">Product Size Code</label>
                                <asp:TextBox ID="txtProductSizeCode" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtProductSizeCode" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Size Code"></asp:RequiredFieldValidator>


                            </div>

                            


                        </div>
                       <div class="form-group row">
                        <div class="col-md-4">
                            <label for="fileDesktop">Product Desktop Image</label>
                            <asp:FileUpload ID="fileDesktop" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 253px * 253px</p>
                        </div>
                        <div class="col-md-4">

                        <label for="fileMobile">Product Mobile Image</label>
                            <asp:FileUpload ID="fileMobile" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 160px * 160px</p>
                        </div>
                        <div class="col-md-4">

                        <label for="fileSlider">Product Slider</label>
                            <asp:FileUpload ID="fileSlider" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 600px * 600px</p>
                        </div>
                            
                        </div>

                           </div>

                    <asp:Button ID="btnSubmitProductSize" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnSubmitProductSize_Click" />
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>


    <div class="main-page">
        <div class="forms">
            
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                
                <div class="form-body" style="overflow-x:scroll;">



               
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductSizeId" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="ProductSizeId" HeaderText="ProductSizeId" ReadOnly="True" SortExpression="ProductSizeId" />
                           <asp:BoundField DataField="Dimensions" HeaderText="Dimensions" SortExpression="Dimensions" />
                            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                            <asp:BoundField DataField="MRP" HeaderText="MRP" SortExpression="MRP" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:TemplateField HeaderText="ProductSizeImgMbl" SortExpression="ProductSizeImgMbl">
                                <ItemTemplate>
                                        
                                        <img src='http://decoratin.com.au/admin/Product/Mobile/<%# Eval("ProductSizeImgMbl") %>' height="60" />
                                    </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="ProductSizeImgMbl" SortExpression="ProductSizeImgMbl">
                                <ItemTemplate>
                                        
                                        <img src='http://decoratin.com.au/Admin/Product/Desktop/<%# Eval("ProductSizeImgDesk") %>' height="60" />
                                    </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action"  ShowHeader="False">
                                    <EditItemTemplate>
                                        <asp:Button ID="Button1" CssClass="btn btn-dark" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        
                                        
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" CssClass="btn btn-dark" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this Product-Size? Only Non Primary Product Size will be deleted. ');" Text="Delete Non Primary" />
                                        

                                    </ItemTemplate>
                                </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                        DeleteCommand="DELETE FROM [ProductSize] WHERE [ProductSizeId] = @ProductSizeId" InsertCommand="INSERT INTO [ProductSize] ([Dimensions], [Weight], [Stock], [StocktoDispatch], [Discount], [Status], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductId], [ProductSizeImgMbl], [ProductSizeImgDesk], [ProductSizeSlider]) VALUES (@Dimensions, @Weight, @Stock, @StocktoDispatch, @Discount, @Status, @MRP, @Price, @MinQuantity, @ProductSizeLabel, @ProductId, @ProductSizeImgMbl, @ProductSizeImgDesk, @ProductSizeSlider)" ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" 
                        SelectCommand="SELECT [ProductSizeId], [Dimensions], [Weight], [Stock], [StocktoDispatch], [Discount], [Status], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductId], [ProductSizeImgMbl], [ProductSizeImgDesk], [ProductSizeSlider] FROM [ProductSize] WHERE ([ProductId] = @ProductId) ORDER BY [ProductSizeId]" 
                        UpdateCommand="UPDATE [ProductSize] SET [Dimensions] = @Dimensions, [Stock] = @Stock, [MRP] = @MRP, [Price] = @Price WHERE [ProductSizeId] = @ProductSizeId">
                        <DeleteParameters>
                            <asp:Parameter Name="ProductSizeId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Dimensions" Type="String" />
                            <asp:Parameter Name="Weight" Type="String" />
                            <asp:Parameter Name="Stock" Type="Int32" />
                            <asp:Parameter Name="StocktoDispatch" Type="Int32" />
                            <asp:Parameter Name="Discount" Type="Int32" />
                            <asp:Parameter Name="Status" Type="Boolean" />
                            <asp:Parameter Name="MRP" Type="Decimal" />
                            <asp:Parameter Name="Price" Type="Decimal" />
                            <asp:Parameter Name="MinQuantity" Type="Int32" />
                            <asp:Parameter Name="ProductSizeLabel" Type="String" />
                            <asp:Parameter Name="ProductId" Type="Int32" />
                            <asp:Parameter Name="ProductSizeImgMbl" Type="String" />
                            <asp:Parameter Name="ProductSizeImgDesk" Type="String" />
                            <asp:Parameter Name="ProductSizeSlider" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                                                     <asp:ControlParameter ControlID="drpProduct" DefaultValue="0" Name="ProductId" 
                                                         PropertyName="SelectedValue" Type="Int32" />
                                                 </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Dimensions" Type="String" />
                            
                            <asp:Parameter Name="Stock" Type="Int32" />
                            
                            <asp:Parameter Name="MRP" Type="Decimal" />
                            <asp:Parameter Name="Price" Type="Decimal" />
                            
                            
                            <asp:Parameter Name="ProductSizeId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>



               
                    </div>

                </div>
                
            </div>

        </div>

</asp:Content>
