<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DecoratinComplete.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" RepeatDirection="Horizontal" runat="server">
                <asp:ListItem Value="abc">abc</asp:ListItem>
                 <asp:ListItem Value="ac">ac</asp:ListItem>
                 <asp:ListItem Value="d">d</asp:ListItem>

            </asp:CheckBoxList>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>




<div id="content" style=" padding:0px; padding-left:20px;">
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style=" padding:0px; margin-left:-20px; ">
                
           
        <div class="row" style=" width:100%; margin:0px;">
            <div class="header-top-block col-xs-12 col-sm-12 col-md-12 col-lg-12" style="background-color: #947f57;
                font-size: 15px; line-height: 2.2; text-align: center; color: White;">
                <span id="Notification" style="">See your Order Details</span>
            </div>
            
        </div>
    
    
    </nav>

            <h2>Order History</h2>
            <div class="line">
                
                
                <br>
                <br>
            </div>
            
           <h4>Current Orders</h4>
            
	 <asp:UpdatePanel ID="UpdatePanel3" runat="server">
		 <ContentTemplate>
			 
			 <asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server">
				<ItemTemplate>
            
           <div class="orders">
           <div class=" row orderrow" style=" ">
			      
       
               <div class=" col-lg-2 col-md-2 col-sm-2 col-xs-4  "><img src="images/Delivery.png" style=" max-width:100%; height:auto;" /></div>
               <div class=" col-lg-2 col-md-2 col-sm-2 col-xs-2 Orderheder  noview"><%# Eval("OrderId") %> </div>
               <div class=" col-lg-2 col-md-2 col-sm-2 col-xs-2 Orderheder noview "> <%# Eval("DeliveredDate") %>  </div>
               <div class=" col-lg-3 col-md-3 col-sm-3 col-xs-4 Orderheder "> Order Amount &nbsp;  <%# Eval("TotalAmount") %>  </div>
               
               <div class=" col-lg-2 col-md-2 col-sm-2 col-xs-3 Orderheder ">
				   
				   <div class="mobdisplay" style=" width:100%; padding-bottom:5px;"><%# Eval("OrderId") %> </div> <%# Eval("StatusText") %> </div>
			   
               <div class=" col-lg-1 col-md-1 col-sm-1 col-xs-1 Orderheder dropdown profile_details_drop open">
				  <%-- <a data-toggle="collapse" href="#" role="button" aria-expanded="false" aria-controls="38201">--%>
  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
<%-- <i style=" " class="fa fa-angle-down"></i>--%>
   <i class="fa fa-angle-down lnr" style="position: absolute; top: 34%; right: 8%; color: #68AE00; font-size: 1.6em;"></i>
	  <i class="fa fa-angle-up lnr" style="position: absolute; top: 34%; right: 8%; color: #68AE00; font-size: 1.6em;"></i>
  </a>
  </div>
  </div>           
        <div class="collapse show" id="<%# Eval("OrderId") %>" style="">
          <div class="row">
          
           <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  card-body"> 
          <h6>Delivery Address</h6> 
           
          "<%# Eval("Address") %>"<br/>
			   <%# Eval("Email") %><br/>Cilient Id : "<%# Eval("ClientId") %>"

           </div>
           

            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 card-body">
            <h6>Payment Information</h6> 
            
            Mode of Payment:&nbsp;<%# Eval("PaymentMode") %><br>
            Payment Status:&nbsp;<%# Eval("PaymentStatus") %><br>
            Delivery Date:&nbsp;<%# Eval("DeliveredDate") %><br>
            Order Date:&nbsp;<%# Eval("ExpectedDelDate") %></div>
           


           <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 card-body">
           <h6>Order Summary</h6>
            Delivery Charges:&nbsp;<%# Eval("DeliveryCharge") %><br>

            Order Amount:&nbsp;<%# Eval("TotalAmount") %><br>Net Payable:&nbsp;<%# Eval("GrandTotal") %><br>Net Payable:&nbsp;<%# Eval("GrandTotal") %><br>
            
            Order Status:&nbsp;<%# Eval("StatusText") %></div>
        </div>

        <div style=" width:100%; float:none; text-align:right; padding:10px; display:block;">
            <a href="#" class="zocial paypal">View Items &nbsp;(3) &nbsp;</a>  
            <a onclick="return confirm('Are you sure you want to delete this order?');" id="Repeatercartitemmaster_LinkButton1_0" class="zocial del" href="javascript:__doPostBack('Repeatercartitemmaster$ctl00$LinkButton1','')">Cancel This Order &nbsp;</a>
            
        
</div>
</div>
			
</div>



                <div style=" padding-bottom: 20px; padding-top:10px; ">
                 
            


                </div>

                <div style=" padding-bottom: 20px; padding-top:10px; ">
                 
            


                </div>
				 </ItemTemplate>
			 </asp:Repeater>


			 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
				 DeleteCommand="DELETE FROM [OrderSummary] WHERE [OrderId] = @OrderId" 
				 
				 ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" 
				 SelectCommand="SELECT [OrderId], [ClientId], [ClientName], [Mobile], [Email], [Address], [ABN], [Date], [Status], [CurrentStatus], [StatusText], [OrderDetails], [SubTotal], [Tax], [TotalAmount], [GrandTotal], [DeliveryCharge], [Saving], [ProductCount], [Packcount], [PaymentMode], [PaymentStatus], [DeliveredDate], [TxnId], [ExpectedDelDate], [cupon], [cuponCode], [couponDis], [CouponTitle], [CouponDescription] FROM [OrderSummary] WHERE ([ClientId] = @ClientId) ORDER BY [OrderId] DESC" 
				  >
                 <DeleteParameters>
                     <asp:Parameter Name="OrderId" Type="Int32" />
                 </DeleteParameters>
                 
                 

				 <SelectParameters>
                    
                    
                    <asp:SessionParameter Name="ClientId" SessionField="ClientID" Type="Int32" />
                    
                    </SelectParameters>
             </asp:SqlDataSource>

		 </ContentTemplate>
           </asp:UpdatePanel>

</div>






















