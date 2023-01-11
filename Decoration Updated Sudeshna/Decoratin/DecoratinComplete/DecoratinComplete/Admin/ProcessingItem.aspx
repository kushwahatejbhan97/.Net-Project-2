<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ProcessingItem.aspx.cs" Inherits="DecoratinComplete.ProcessingItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>PROCESSING ITEMS</h4>
                </div>
                <div class="form-body">

                   <div class="row">

                       <div class="form-group row ">
                             
                               
                               <div class="col-md-12">
                                   <%--<label for="TextphnNo" style="padding-bottom: 20px;">Single Message</label>--%>

                                   <h4 class="newstyle" style="color:black;">Processing Items</h4>

                            
                        </div>

                               </div>


                           <div class="form-group row ">
                             
                               <div class="col-md-4">
                                   
                            
                             <asp:Button ID="btnClientData" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Export By OrderId" />
                                   

                            
                        </div>

                               <div class="col-md-4">
                                   
                            
                             <asp:Button ID="Button3" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Export By ItemName" />
                                   

                            
                        </div>

                               <div class="col-md-4">
                                   
                            
                             <asp:Button ID="Button4" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Export By Brand" />
                                   

                            
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
               
                <div class="form-body" style="overflow-x:scroll;">
                 

                    
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderDetailsId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="OrderDetailsId" HeaderText="OrderDetailsId" ReadOnly="True" SortExpression="OrderDetailsId" />
                            <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />
                            <asp:BoundField DataField="ProductSizeId" HeaderText="ProductSizeId" SortExpression="ProductSizeId" />
                            <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                            <asp:BoundField DataField="CatId" HeaderText="CatId" SortExpression="CatId" />
                            <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />
                            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                            <asp:BoundField DataField="Dimensions" HeaderText="Dimensions" SortExpression="Dimensions" />
                            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                            <asp:BoundField DataField="MRP" HeaderText="MRP" SortExpression="MRP" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="MinQuantity" HeaderText="MinQuantity" SortExpression="MinQuantity" />
                            <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
                            <asp:BoundField DataField="ProductSizeImgMbl" HeaderText="ProductSizeImgMbl" SortExpression="ProductSizeImgMbl" />
                            <asp:BoundField DataField="NoOfItems" HeaderText="NoOfItems" SortExpression="NoOfItems" />
                            <asp:BoundField DataField="TotalMrp" HeaderText="TotalMrp" SortExpression="TotalMrp" />
                            <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" DeleteCommand="DELETE FROM [OrderDetails] WHERE [OrderDetailsId] = @OrderDetailsId" InsertCommand="INSERT INTO [OrderDetails] ([OrderId], [ProductSizeId], [ProductId], [ProductName], [CatId], [Material], [Color], [Dimensions], [Stock], [MRP], [Price], [MinQuantity], [Discount], [ProductSizeImgMbl], [NoOfItems], [TotalMrp], [TotalPrice], [Status]) VALUES (@OrderId, @ProductSizeId, @ProductId, @ProductName, @CatId, @Material, @Color, @Dimensions, @Stock, @MRP, @Price, @MinQuantity, @Discount, @ProductSizeImgMbl, @NoOfItems, @TotalMrp, @TotalPrice, @Status)" ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" SelectCommand="SELECT [OrderDetailsId], [OrderId], [ProductSizeId], [ProductId], [ProductName], [CatId], [Material], [Color], [Dimensions], [Stock], [MRP], [Price], [MinQuantity], [Discount], [ProductSizeImgMbl], [NoOfItems], [TotalMrp], [TotalPrice], [Status] FROM [OrderDetails]" UpdateCommand="UPDATE [OrderDetails] SET [OrderId] = @OrderId, [ProductSizeId] = @ProductSizeId, [ProductId] = @ProductId, [ProductName] = @ProductName, [CatId] = @CatId, [Material] = @Material, [Color] = @Color, [Dimensions] = @Dimensions, [Stock] = @Stock, [MRP] = @MRP, [Price] = @Price, [MinQuantity] = @MinQuantity, [Discount] = @Discount, [ProductSizeImgMbl] = @ProductSizeImgMbl, [NoOfItems] = @NoOfItems, [TotalMrp] = @TotalMrp, [TotalPrice] = @TotalPrice, [Status] = @Status WHERE [OrderDetailsId] = @OrderDetailsId">
                        <DeleteParameters>
                            <asp:Parameter Name="OrderDetailsId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="OrderId" Type="Int32" />
                            <asp:Parameter Name="ProductSizeId" Type="Int32" />
                            <asp:Parameter Name="ProductId" Type="Int32" />
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="CatId" Type="Int32" />
                            <asp:Parameter Name="Material" Type="String" />
                            <asp:Parameter Name="Color" Type="String" />
                            <asp:Parameter Name="Dimensions" Type="String" />
                            <asp:Parameter Name="Stock" Type="Int32" />
                            <asp:Parameter Name="MRP" Type="Decimal" />
                            <asp:Parameter Name="Price" Type="Decimal" />
                            <asp:Parameter Name="MinQuantity" Type="Int32" />
                            <asp:Parameter Name="Discount" Type="Int32" />
                            <asp:Parameter Name="ProductSizeImgMbl" Type="String" />
                            <asp:Parameter Name="NoOfItems" Type="Int32" />
                            <asp:Parameter Name="TotalMrp" Type="Decimal" />
                            <asp:Parameter Name="TotalPrice" Type="Decimal" />
                            <asp:Parameter Name="Status" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="OrderId" Type="Int32" />
                            <asp:Parameter Name="ProductSizeId" Type="Int32" />
                            <asp:Parameter Name="ProductId" Type="Int32" />
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="CatId" Type="Int32" />
                            <asp:Parameter Name="Material" Type="String" />
                            <asp:Parameter Name="Color" Type="String" />
                            <asp:Parameter Name="Dimensions" Type="String" />
                            <asp:Parameter Name="Stock" Type="Int32" />
                            <asp:Parameter Name="MRP" Type="Decimal" />
                            <asp:Parameter Name="Price" Type="Decimal" />
                            <asp:Parameter Name="MinQuantity" Type="Int32" />
                            <asp:Parameter Name="Discount" Type="Int32" />
                            <asp:Parameter Name="ProductSizeImgMbl" Type="String" />
                            <asp:Parameter Name="NoOfItems" Type="Int32" />
                            <asp:Parameter Name="TotalMrp" Type="Decimal" />
                            <asp:Parameter Name="TotalPrice" Type="Decimal" />
                            <asp:Parameter Name="Status" Type="Int32" />
                            <asp:Parameter Name="OrderDetailsId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                 

                    
            </div>
            </div>
                
             </div>
            </div>
</asp:Content>
