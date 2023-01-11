<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BookedOrders.aspx.cs" Inherits="DecoratinComplete.Admin.BookedOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <%--<style type="text/css">
        .auto-style1 {
            font-size: 14px;
            color: #555555;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>ORDER RECIEVED</h4>
                </div>
                <div class="form-body">
                   <div class="row">

                           <div class="form-group row ">
                               <div class="col-md-12">
                            <label for="txtOrderID">Order ID</label>
                             <asp:TextBox ID="txtOrderID" CssClass="form-control" placeholder="Enter Order ID" runat="server"></asp:TextBox>
                                   

                            
                        </div>
                               

                               </div>

                           

                           </div>

                    <asp:Button ID="btnBookedOrders" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnBookedOrders_Click"/>
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Orders</h4>
                </div>
                <div class="form-body" style="overflow-x:scroll;">
              
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" DataKeyNames="OrderId" AutoGenerateColumns="False"  EmptyDataText="There are no data records to display." OnRowCommand="ActionCommand">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="OrderId" DataNavigateUrlFormatString="OrderDetailsDelete.aspx?orderid={0}" DataTextField="OrderId" HeaderText="OrderId" />
                            
                            <asp:BoundField DataField="ClientId" HeaderText="ClientId" SortExpression="ClientId" />
                            <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
                            <asp:BoundField DataField="Date" HeaderText="Order DateTime	" SortExpression="Date" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                               <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" CssClass="btn btn-dark" runat="server" CausesValidation="False" CommandName="Process" Text="Process" CommandArgument='<%# Eval("OrderId") %>'></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton1" CssClass= "btn btn-warning" runat="server" CausesValidation="False" CommandName="MyCancel" Text="Cancel" CommandArgument='<%# Eval("OrderId") %>'  OnClientClick="return confirm('Are you sure you want to cancel this order?');"  ></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:BoundField DataField="OrderDetails" HeaderText="OrderDetails" SortExpression="OrderDetails" />
                            <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" SortExpression="SubTotal" />
                            <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
                            <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
                            <asp:BoundField DataField="GrandTotal" HeaderText="GrandTotal" SortExpression="GrandTotal" />
                            <asp:BoundField DataField="DeliveryCharge" HeaderText="DeliveryCharge" SortExpression="DeliveryCharge" />
                            <asp:BoundField DataField="Saving" HeaderText="Saving" SortExpression="Saving" />
                            <asp:BoundField DataField="ProductCount" HeaderText="ProductCount" SortExpression="ProductCount" />
                            <asp:BoundField DataField="Packcount" HeaderText="Packcount" SortExpression="Packcount" />
                            <asp:BoundField DataField="PaymentMode" HeaderText="PaymentMode" SortExpression="PaymentMode" />
                            <asp:BoundField DataField="PaymentStatus" HeaderText="PaymentStatus" SortExpression="PaymentStatus" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="ABN" HeaderText="ABN" SortExpression="ABN" />
                            

                            
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SQLdbBookedId" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                        DeleteCommand="DELETE FROM [OrderSummary] WHERE [OrderId] = @OrderId" 
                        InsertCommand="INSERT INTO [OrderSummary] ([ClientId], [ClientName], [Mobile], [Email], [Address], [ABN], [Date], [Status], [CurrentStatus], [StatusText], [OrderDetails], [SubTotal], [Tax], [TotalAmount], [GrandTotal], [DeliveryCharge], [Saving], [ProductCount], [Packcount], [PaymentMode], [PaymentStatus], [DeliveredDate], [TxnId], [ExpectedDelDate], [cupon], [cuponCode], [couponDis], [CouponTitle], [CouponDescription]) VALUES (@ClientId, @ClientName, @Mobile, @Email, @Address, @ABN, @Date, @Status, @CurrentStatus, @StatusText, @OrderDetails, @SubTotal, @Tax, @TotalAmount, @GrandTotal, @DeliveryCharge, @Saving, @ProductCount, @Packcount, @PaymentMode, @PaymentStatus, @DeliveredDate, @TxnId, @ExpectedDelDate, @cupon, @cuponCode, @couponDis, @CouponTitle, @CouponDescription)" ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" 
                        SelectCommand="SELECT [OrderId], [ClientId], [ClientName], [Mobile], [Email], [Address], [ABN], [Date], [Status], [CurrentStatus], [StatusText], [OrderDetails], [SubTotal], [Tax], [TotalAmount], [GrandTotal], [DeliveryCharge], [Saving], [ProductCount], [Packcount], [PaymentMode], [PaymentStatus], [DeliveredDate], [TxnId], [ExpectedDelDate], [cupon], [cuponCode], [couponDis], [CouponTitle], [CouponDescription] FROM [OrderSummary]" 
                        UpdateCommand="UPDATE [OrderSummary] SET [ClientId] = @ClientId, [ClientName] = @ClientName, [Mobile] = @Mobile, [Email] = @Email, [Address] = @Address, [ABN] = @ABN, [Date] = @Date, [Status] = @Status, [CurrentStatus] = @CurrentStatus, [StatusText] = @StatusText, [OrderDetails] = @OrderDetails, [SubTotal] = @SubTotal, [Tax] = @Tax, [TotalAmount] = @TotalAmount, [GrandTotal] = @GrandTotal, [DeliveryCharge] = @DeliveryCharge, [Saving] = @Saving, [ProductCount] = @ProductCount, [Packcount] = @Packcount, [PaymentMode] = @PaymentMode, [PaymentStatus] = @PaymentStatus, [DeliveredDate] = @DeliveredDate, [TxnId] = @TxnId, [ExpectedDelDate] = @ExpectedDelDate, [cupon] = @cupon, [cuponCode] = @cuponCode, [couponDis] = @couponDis, [CouponTitle] = @CouponTitle, [CouponDescription] = @CouponDescription WHERE [OrderId] = @OrderId">
                        <DeleteParameters>
                            <asp:Parameter Name="OrderId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ClientId" Type="Int32" />
                            <asp:Parameter Name="ClientName" Type="String" />
                            <asp:Parameter Name="Mobile" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="ABN" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Status" Type="Int32" />
                            <asp:Parameter Name="CurrentStatus" Type="String" />
                            <asp:Parameter Name="StatusText" Type="String" />
                            <asp:Parameter Name="OrderDetails" Type="String" />
                            <asp:Parameter Name="SubTotal" Type="Decimal" />
                            <asp:Parameter Name="Tax" Type="Decimal" />
                            <asp:Parameter Name="TotalAmount" Type="Decimal" />
                            <asp:Parameter Name="GrandTotal" Type="Decimal" />
                            <asp:Parameter Name="DeliveryCharge" Type="Decimal" />
                            <asp:Parameter Name="Saving" Type="Decimal" />
                            <asp:Parameter Name="ProductCount" Type="Int32" />
                            <asp:Parameter Name="Packcount" Type="Int32" />
                            <asp:Parameter Name="PaymentMode" Type="String" />
                            <asp:Parameter Name="PaymentStatus" Type="String" />
                            <asp:Parameter Name="DeliveredDate" Type="String" />
                            <asp:Parameter Name="TxnId" Type="String" />
                            <asp:Parameter Name="ExpectedDelDate" Type="String" />
                            <asp:Parameter Name="cupon" Type="Int32" />
                            <asp:Parameter Name="cuponCode" Type="String" />
                            <asp:Parameter Name="couponDis" Type="Int32" />
                            <asp:Parameter Name="CouponTitle" Type="String" />
                            <asp:Parameter Name="CouponDescription" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ClientId" Type="Int32" />
                            <asp:Parameter Name="ClientName" Type="String" />
                            <asp:Parameter Name="Mobile" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="ABN" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Status" Type="Int32" />
                            <asp:Parameter Name="CurrentStatus" Type="String" />
                            <asp:Parameter Name="StatusText" Type="String" />
                            <asp:Parameter Name="OrderDetails" Type="String" />
                            <asp:Parameter Name="SubTotal" Type="Decimal" />
                            <asp:Parameter Name="Tax" Type="Decimal" />
                            <asp:Parameter Name="TotalAmount" Type="Decimal" />
                            <asp:Parameter Name="GrandTotal" Type="Decimal" />
                            <asp:Parameter Name="DeliveryCharge" Type="Decimal" />
                            <asp:Parameter Name="Saving" Type="Decimal" />
                            <asp:Parameter Name="ProductCount" Type="Int32" />
                            <asp:Parameter Name="Packcount" Type="Int32" />
                            <asp:Parameter Name="PaymentMode" Type="String" />
                            <asp:Parameter Name="PaymentStatus" Type="String" />
                            <asp:Parameter Name="DeliveredDate" Type="String" />
                            <asp:Parameter Name="TxnId" Type="String" />
                            <asp:Parameter Name="ExpectedDelDate" Type="String" />
                            <asp:Parameter Name="cupon" Type="Int32" />
                            <asp:Parameter Name="cuponCode" Type="String" />
                            <asp:Parameter Name="couponDis" Type="Int32" />
                            <asp:Parameter Name="CouponTitle" Type="String" />
                            <asp:Parameter Name="CouponDescription" Type="String" />
                            <asp:Parameter Name="OrderId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
              
            </div>
                
             </div>
            </div>

        </div>
</asp:Content>
