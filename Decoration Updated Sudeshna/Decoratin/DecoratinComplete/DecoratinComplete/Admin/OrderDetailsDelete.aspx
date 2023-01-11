<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="OrderDetailsDelete.aspx.cs" Inherits="DecoratinComplete.Admin.OrderDetailsDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>EDIT PRODUCT</h4>
                </div>
                <div class="form-body" style="overflow-x:scroll;">
              
                    
                    
              
                    <asp:GridView ID="GridView1"  CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderDetailsId" DataSourceID="SqlDataSource1" OnRowCommand="ActionCommand"  EmptyDataText="There are no data records to display." >
                        <Columns>
                            
                            <asp:BoundField DataField="OrderDetailsId" HeaderText="OrderDetailsId" SortExpression="OrderId" />
                            <asp:TemplateField HeaderText="Image" SortExpression="ProductSizeImgMbl">
                                
                                <ItemTemplate>
                                    <img src='/admin/Product/Mobile/<%# Eval("ProductSizeImgMbl") %>' height="60" />
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                            
                            <asp:BoundField DataField="Dimensions" HeaderText="Dimensions" SortExpression="Dimensions" />
                         
                            
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                           
                            <asp:BoundField DataField="NoOfItems" HeaderText="NoOfItems" SortExpression="NoOfItems" />
                            
                            <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />
                            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                               <ItemTemplate>
                                    
                                    &nbsp;<asp:LinkButton ID="LinkButton1" CssClass= "btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CommandArgument='<%# Eval("OrderDetailsId") %>'  OnClientClick="return confirm('Are you sure you want to cancel this order?');"  ></asp:LinkButton>

                                   <%--<asp:LinkButton ID="btnBrandDelete" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" OnClientClick="return confirm('Are you sure you want to cancel this order?');" ></asp:LinkButton>--%>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                        SelectCommand="SELECT [OrderDetailsId], [OrderId], [ProductSizeId], [ProductId], [ProductName], [CatId], [Material], [Color], [Dimensions], [Stock], [MRP], [Price], [MinQuantity], [Discount], [ProductSizeImgMbl], [NoOfItems], [TotalMrp], [TotalPrice] FROM [OrderDetails] WHERE ([OrderId] = @OrderId) And ([Status]='1')">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="0" Name="OrderId" QueryStringField="orderid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
              
                    
                    
              
            </div>
                
             </div>
            </div>

        </div>


    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Cancelled Product From This Order</h4>
                </div>
                <div class="form-body" style="overflow-x:scroll;">
              
                    
                    
              
                    <asp:GridView ID="GridView2"  CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderDetailsId" DataSourceID="SqlDataSource2" OnRowCommand="ActionCommand"  EmptyDataText="There are no data records to display." >
                        <Columns>
                            
                            <asp:BoundField DataField="OrderDetailsId" HeaderText="OrderDetailsId" SortExpression="OrderId" />
                            <asp:TemplateField HeaderText="Image" SortExpression="ProductSizeImgMbl">
                                
                                <ItemTemplate>
                                    <img src='/admin/Product/Mobile/<%# Eval("ProductSizeImgMbl") %>' height="60" />
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                            
                            <asp:BoundField DataField="Dimensions" HeaderText="Dimensions" SortExpression="Dimensions" />
                         
                            
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                           
                            <asp:BoundField DataField="NoOfItems" HeaderText="NoOfItems" SortExpression="NoOfItems" />
                            
                            <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />
                            
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                        ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                        SelectCommand="SELECT [OrderDetailsId], [OrderId], [ProductSizeId], [ProductId], [ProductName], [CatId], [Material], [Color], [Dimensions], [Stock], [MRP], [Price], [MinQuantity], [Discount], [ProductSizeImgMbl], [NoOfItems], [TotalMrp], [TotalPrice] FROM [OrderDetails] WHERE ([OrderId] = @OrderId) And ([Status]='0')">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="0" Name="OrderId" QueryStringField="orderid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
              
                    
                    
              
            </div>
                
             </div>
            </div>

        </div>
</asp:Content>
