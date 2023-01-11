﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditProductSize.aspx.cs" Inherits="DecoratinComplete.Admin.EditProductSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Edit Product Size Details</h4>
                </div>

                <div class="form-titleNew">


                    <div class="form-group row">

                               

                               <div class="col-md-4">
                            <label for="drpcategory">Category</label>

                                   <asp:DropDownList ID="drpcategory" DataSourceID="SqlDataSource3" AppendDataBoundItems="true" CssClass="form-control" DataTextField="CatName" DataValueField="CatId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpPsize_SelectedIndexChanged">
                                   <asp:ListItem Value="0">Select Category</asp:ListItem>
                                       </asp:DropDownList>
                                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [CatId], [CatName] FROM [Category]"></asp:SqlDataSource>
                                   
                            </div>

                               <div class="col-md-4">
                            <label for="DropDownList2">Product</label>
                                   <asp:DropDownList ID="drpProduct" DataSourceID="SqlDataSource1" CssClass="form-control"   AutoPostBack="True" DataTextField="ProductName" DataValueField="ProductId"  runat="server" OnSelectedIndexChanged="drpPsize_SelectedIndexChanged" >
                                      
                                   </asp:DropDownList>
                                
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [ProductId], [ProductName] FROM [Product] WHERE ([CatId] = @CatId)">
                                       <SelectParameters>
                                           <asp:ControlParameter ControlID="drpcategory" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
                                       </SelectParameters>
                                   </asp:SqlDataSource>
                           
                            </div>

                           <div class="col-md-4">
                            <label for="DrpProductSize">Product Size</label>
                               <asp:DropDownList ID="drpPsize" DataSourceID="SqlDataSource2" CssClass="form-control"    AutoPostBack="True" DataTextField="Dimensions" DataValueField="ProductSizeId" OnSelectedIndexChanged="drpPsize_SelectedIndexChanged"  runat="server">
                                       
                                   </asp:DropDownList>
                               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [ProductSizeId], [Dimensions] FROM [ProductSize] WHERE ([ProductId] = @ProductId)">
                                   <SelectParameters>
                                       <asp:ControlParameter ControlID="drpProduct" Name="ProductId" PropertyName="SelectedValue" Type="Int32" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                                   
                                   
                                   
                             
                                  
                            </div>
                                   
                        </div>
                </div>

                <div class="form-body">
                   <div class="row">

                       
                           <div class="form-group row ">
                               <div class="col-md-6">
                            <label for="txtDimensions">Dimensions</label>
                             <asp:TextBox ID="txtDimensions" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Productform" ControlToValidate="txtDimensions" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Dimensions"></asp:RequiredFieldValidator>

                            
                        </div>
                               <div class="col-md-6">
                           
                            <label for="txtWeight">Weight</label>
                             <asp:TextBox ID="txtWeight" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Productform" ControlToValidate="txtWeight" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Weight"></asp:RequiredFieldValidator>
                            
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="txtMinQuantity" ValidationGroup="Productform" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Product Minimum Quantity"></asp:RequiredFieldValidator>

                            
                        </div>

                    <div class="col-md-6">
                            <label for="drpProductSizelbl">Product Size label</label>
                        <asp:DropDownList ID="drpProductSizelbl" CssClass="form-control" runat="server">
                            <asp:ListItem Value="New">New</asp:ListItem>
                            <asp:ListItem Value="Offers">Offers</asp:ListItem>
                            <asp:ListItem Value="Tranding">Tranding</asp:ListItem>
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
                           <div class="col-md-1">
                            <asp:Image ID="Image1" CssClass="img-fluid" onerror="this.src='/Admin/Product/Mobile/NoImage.jpg';" style=" height:60px; " runat="server" /> 
                          
                        </div>
                        <div class="col-md-3">
                            <label for="fileDesktop">Product Desktop Image</label>
                            <asp:FileUpload ID="fileDesktop" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 253px * 253px</p>
                        </div>
                           <div class="col-md-1">
                            <asp:Image ID="Image2" onerror="this.src='/Admin/Product/Mobile/NoImage.jpg';" CssClass="img-fluid" style=" height:60px; " runat="server" /> 
                          
                        </div>
                        <div class="col-md-3">

                        <label for="fileMobile">Product Mobile Image</label>
                            <asp:FileUpload ID="fileMobile" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 160px * 160px</p>
                        </div>
                        <div class="col-md-1">
                            <asp:Image ID="Image3" onerror="this.src='/Admin/Product/Desktop/NoImage.jpg';" CssClass="img-fluid" style=" height:60px; " runat="server" /> 
                          
                        </div>
                            <div class="col-md-3">

                        <label for="fileSlider">Product Slider</label>
                            <asp:FileUpload ID="fileSlider" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 600px * 600px</p>
                        </div>
                        </div>

                           </div>

                    <asp:Button ID="btnSubmitEditProductSize" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Update" OnClick="btnSubmitEditProductSize_Click" />

                    <asp:Button ID="btndelete" ValidationGroup="Productform" CssClass="btn btn-warning" runat="server" Text="Delete" OnClick="btndelete_Click" />
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>



    

</asp:Content>
