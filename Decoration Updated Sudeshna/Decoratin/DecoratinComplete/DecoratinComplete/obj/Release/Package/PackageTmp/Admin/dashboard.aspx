<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="DecoratinComplete.Admin.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
			<div class="col_3">
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-rupee icon-rounded"></i>
                    <div class="stats">
                        <h5>
                        <asp:Label ID="LblOrderRecieved" runat="server" Text="0000"></asp:Label>
                            </h5>
                     <%-- <h5><strong>$452</strong></h5>--%>
                      <span>Order Recieved</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-laptop user1 icon-rounded"></i>
                    <div class="stats">
                      <h5>
                          <asp:Label ID="LblRevenue" runat="server" Text="0000"></asp:Label>
                          <%--<strong>$1019</strong>--%></h5>
                      <span>Revenue</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-money user2 icon-rounded"></i>
                    <div class="stats">
                      <h5>
                          <asp:Label ID="LblVisitors" runat="server" Text="0000"></asp:Label>
                          <%--<strong>$1012</strong>--%></h5>
                      <span>Visitors</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-pie-chart dollar1 icon-rounded"></i>
                    <div class="stats">
                      <h5>
                          <asp:Label ID="LblUsers" runat="server" Text="0000"></asp:Label>
                          <%--<strong>$450</strong>--%></h5>
                      <span>Users</span>
                    </div>
                </div>
        	 </div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-users dollar2 icon-rounded"></i>
                    <div class="stats">
                      <h5>
                          <asp:Label ID="LblStock" runat="server" Text="0000"></asp:Label>
                         </h5>
                      <span>Stock</span>
                    </div>
                </div>
        	 </div>
        	<div class="clearfix"> </div>
		</div>
		
		
	
	<!-- for amcharts js -->
			<script src="/admin/assets/js/amcharts.js"></script>
			<script src="/admin/assets/js/serial.js"></script>
			<script src="/admin/assets/js/export.min.js"></script>
			<link rel="stylesheet" href="/admin/assets/css/export.css" type="text/css" media="all" />
			<script src="/admin/assets/js/light.js"></script>
	<!-- for amcharts js -->

    <script  src="/admin/assets/js/index1.js"></script>
	
		
			</div>


    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Latest Transaction</h4>
                </div>
                <div class="form-body" style="overflow-x:scroll;">
                    
                    <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                       
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap mb-0">
                                              <thead class="thead-light">
                                                    <tr>
                                                        <th style="width: 20px;">
                                                           
                                                        </th>
                                                        <th>Order ID</th>
                                                        <th>Billing Name</th>
                                                        <th>Delivery Date</th>
                                                        <th>Total</th>
                                                        <th>Payment Status</th>
                                                     
                                                      
                                                    </tr>
                                                </thead>
                                                <asp:Repeater ID="RepeaterHotDealsProducts" runat="server"   DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="custom-control custom-checkbox">
                                                               
                                                            </div>
                                                        </td>
                                                        <td><a href="OrderDetails.aspx?orderid=<%# Eval("OrderId")%>" class="text-body font-weight-bold"><%# Eval("OrderId")%></a> </td>
                                                        <td><%# Eval("ClientName")%></td>
                                                        <td>
                                                           <%# Eval("Date")%>
                                                        </td>
                                                        <td>
                                                           <%# Eval("TotalAmount")%>
                                                        </td>
                                                        <td>
                                                            <span class="badge badge-pill badge-soft-success font-size-12"><%# Eval("PaymentStatus")%></span>
                                                        </td>
                                                        
                                                     
                                                    </tr>

                                                  
                                                </tbody>
                                                </ItemTemplate>
                    </asp:Repeater>
                                           </table>
                                        </div>
                                      
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                                            DeleteCommand="DELETE FROM [OrderSummary] WHERE [OrderId] = @OrderId" 
                                            InsertCommand="INSERT INTO [OrderSummary] ([ClientId], [ClientName], [Mobile], [Email], [Address], [ABN], [Date], [Status], [CurrentStatus], [StatusText], [OrderDetails], [SubTotal], [Tax], [TotalAmount], [GrandTotal], [DeliveryCharge], [Saving], [ProductCount], [Packcount], [PaymentMode], [PaymentStatus], [DeliveredDate], [TxnId], [ExpectedDelDate], [cupon], [cuponCode], [couponDis], [CouponTitle], [CouponDescription]) VALUES (@ClientId, @ClientName, @Mobile, @Email, @Address, @ABN, @Date, @Status, @CurrentStatus, @StatusText, @OrderDetails, @SubTotal, @Tax, @TotalAmount, @GrandTotal, @DeliveryCharge, @Saving, @ProductCount, @Packcount, @PaymentMode, @PaymentStatus, @DeliveredDate, @TxnId, @ExpectedDelDate, @cupon, @cuponCode, @couponDis, @CouponTitle, @CouponDescription)" 
                                            SelectCommand="SELECT [OrderId], [ClientId], [ClientName], [Mobile], [Email], [Address], [ABN], [Date], [Status], [CurrentStatus], [StatusText], [OrderDetails], [SubTotal], [Tax], [TotalAmount], [GrandTotal], [DeliveryCharge], [Saving], [ProductCount], [Packcount], [PaymentMode], [PaymentStatus], [DeliveredDate], [TxnId], [ExpectedDelDate], [cupon], [cuponCode], [couponDis], [CouponTitle], [CouponDescription] FROM [OrderSummary] WHERE Status='1' ORDER BY [OrderId] ASC" 
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
                                         


                                       
                                        <br />


                                    </div>
                                </div>
                            </div>
                        </div>
              
            </div>
                
             </div>
            </div>

        </div>







                 
</asp:Content>
