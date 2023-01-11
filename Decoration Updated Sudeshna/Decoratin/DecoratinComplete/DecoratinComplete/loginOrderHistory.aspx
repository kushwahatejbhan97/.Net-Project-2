<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginOrderHistory.aspx.cs" Inherits="DecoratinComplete.loginOrderHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Decoratin</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
	<meta name="description" content="" />

	<meta property="og:title" content="Decoratin" />
	<meta property="og:url" content="decoratin.com.au" />
	<meta property="og:description" content="" />
	
	<meta property="og:image" content="/Logo.jpg" />
	<meta property="og:image:type" content="image/png" />
	<meta property="og:image:width" content="400" />
	<meta property="og:image:height" content="400" />
	<meta property="og:type" content="website" />
	<meta property="og:locale" content="en_IN" />
	<meta property="og:updated_time" content="1440432930" />
	<link href="Admin/assets/images/icone.png" rel="apple-touch-icon" />
	<link rel="canonical" href="http://decoratin.com.au/"/>

	<meta content="IE=Edge" http-equiv="X-UA-Compatible" />
	<meta content="Decoratin" name="author" />
	<meta content="index, follow" name="robots" />
	<meta content="2 days" name="revisit-after"/>
	<meta content="index,follow,archive" name="googlebot"/>
	<meta content="index,follow,archive" name="msnbot"/>
	<meta content="index,follow,archive" name="Slurp"/>
	<meta content="Decoratin" name="publisher"/>
	<meta content="Decoratin" name="owner"/>
	<meta content="Web Page" name="doc-type" />
	<meta content="Copywritten Work" name="doc-rights" />
	<meta content="All" name="rating" />
	<meta content="Global" name="distribution" />
	<meta content="Public" name="document-type" />
	<meta content="Au" name="geo.region" />
	<meta content="Australia" name="geo.placename" />
	
	

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//tags -->
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/myStyle.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/css/checkout.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/css/order.css" rel="stylesheet" type="text/css" media="all" />
	<%--<link href="css/Checkout.css" rel="stylesheet" type="text/css" media="all" />--%>
<link href="css/font-awesome.css" rel="stylesheet" /> 
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="shortcut icon" href="/images/image110.png" />

 
<!-- //for bootstrap working -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet" />
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css' />

	<style>
		.form-title {
   padding: 10px 2em;
    background-color: #947f57;
    border-bottom: 4px solid #ffffff;
    color: white;
}

		.form-body {
    padding: 0px 0px;
    border: 2px solid #937d5554;
}
		.table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
    font-size: 0.9em;
    color: #947f57;
    font-weight: 600;
    font-family: "Open Sans", sans-serif;
	    text-align: center;
}
		.order {
    line-height: 25px;
    list-style: none;
}
		.para{
			font-size: 14px;
    font-weight: 600;
    color: black;
	letter-spacing: normal;
		}
		.forspan{
			font-weight: 500;

		}
		.amount {
    padding: 0px var(--px);
    /* border-top: 1px solid var(--gainsboro); */
    border-left: 1px solid var(--gainsboro);
    border-right: 1px solid var(--gainsboro);
     border-bottom: 1px solid var(--gainsboro); 
}

	</style>
</head>
<body>
	<form runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

		<!-- header -->
		<div class="header" style="background: #171616;">
	<div class="container">
		<ul>
		    
			<li style="width: 100%; font-size: 12px; font-weight: 500;
padding-right: 8%; ">
				<p>Showroom visits on appointment only. Monday- Friday (9:30 AM - 5 PM) Email us at info@decoratin.com.au to book your appointment </p> </li>
			
		</ul>
	</div>
</div>
<!-- //header -->

<!-- header-bot -->
<div class="header-bot" style="display:flex">
	<div class="header-bot_inner_wthreeinfo_header_mid">
		<div class="col-md-8 logo_agile">
		<div class="col-md-5 logo_agile">
                <a href="/home"><img src="/images/image11.png" style="padding-top: 0px; width: 32%;" /></a>
				<%--<h1><a href="/"><span>E</span>lite Shoppy <i class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a></h1>--%>
			</div>

		<div class="col-md-7 header-middle" style="padding-top:20px;">
			
					
			
			<asp:TextBox ID="txtsearch" TextMode="Search" runat="server" placeholder="Search here..."></asp:TextBox>
			
			<asp:Button ID="btnsearch" OnClick="btnsearch_Click" runat="server" Text="" style="width:13%;"/>
					
				<div class="clearfix"></div>
			
		</div>

			</div>



		
		
		<!-- header-bot -->
			
        <!-- header-bot -->
		<div class="col-md-4 agileits-social top_content" style="display:flex; margin-top:11px">

		<div class="col-md-9 agileits-social top_content" style="margin-top: 0.5%;padding-top: 7px;  text-overflow: ellipsis; white-space: nowrap;">
			
			<div class="profile_details">		
								<ul>
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<span class="prfil-img"><img src="/images/user1.png" alt=""> </span> 
												<div class="user-name">
													<p>Account</p>
													<asp:Label ID="lblClientName" runat="server" Text=""></asp:Label>
													<%--<span>Login / Register</span>--%>
												</div>
												<i class="fa fa-angle-down lnr"></i>
												<i class="fa fa-angle-up lnr"></i>
												<div class="clearfix"></div>	
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="/profile"><i class="fa fa-user"></i> Profile</a> </li> 
											<li> <a href="/order"><i class="fa fa-shopping-bag"></i> Order</a> </li> 
											<li> <a href="/return"><i class="fa fa-truck"></i> Return</a> </li> 
											
											<li> 
												<asp:LinkButton ID="LblLogOut" runat="server" OnClick="LblLogOut_Click"><i class="fa fa-sign-out"></i>Logout

												</asp:LinkButton>
												<%--<a href="#"><i class="fa fa-sign-out"></i> Logout</a>--%> </li>
										</ul>
									</li>
								</ul>
							</div>


			
		
			<%--<div class="user-address fontchangesmall pull-right menu__item dropdown" style="text-align: center; vertical-align: middle; 
						display:flex; flex:1;	font-weight: bold; overflow: hidden; ">
							
				<div class=" menu__link" style=" width:35%">
								<div style=" height:40px; width:40px;  background-color: #947F57; border-radius:50%; padding:8px;  ">
							<i class="fa fa-user" style="font-size: 24px;  width:24px; color:white">

							</i> 
									</div>

							</div>	



						
							
									<a class="Log fontchangesmall menu__link" href="#" style="color:black !important; display:flex; width:50%" data-toggle="dropdown">
										<div><div>Account</div><div>Login/SignUp</div></div>
										 <b class="caret"></b></a>
										
										<ul class="dropdown-menu agile_short_dropdown">
   <li><a href="#"><i class="fa fa-unlock-alt" aria-hidden="true"></i>Login</a></li>
	<li><a  href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Register</a></li>
		  
					   </ul>
							
							
						</div>--%>
		



			
			</div>
		

		<div class="col-md-3 agileits-social top_content" style="margin-top: 1.5%;">
			

		<div class="top_nav_right" style="width:100%;">
			<div class="wthreecartaits wthreecartaits2 cart cart box_1"> 
						<div class="last"> 
					
						<div class="w3view-cart"  value=""  data-toggle="modal" data-target="#cartModal" <%--onclick="cartModal()"--%>>
							<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
							<asp:UpdatePanel ID="UpdatePanel5" runat="server">
								<ContentTemplate>
							<asp:Label ID="lblItemsCount" runat="server" CssClass="cart-total-res" Text="0"></asp:Label>
								</ContentTemplate>

							</asp:UpdatePanel>

						</div>
					</div>  
  
						</div>
		</div>



			
			</div>

			

			</div>

		<div class="clearfix"></div>
	</div>
</div>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
	<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav menu__list">
					<li class="active menu__item menu__item--current"><a class="menu__link" href="/home">Home <span class="sr-only">(current)</span></a></li>
					  <li class=" menu__item"><a class="menu__link" href="/categories/lanterns ">Lanterns</a></li>

					  <li class="menu__item dropdown">
					   <a class="menu__link" href="#" data-toggle="dropdown">Decor <b class="caret"></b></a>
								<asp:Repeater ID="Repeater4" DataSourceID="SqlDataSource2" runat="server">
										  <HeaderTemplate><ul class="dropdown-menu agile_short_dropdown"></HeaderTemplate>
										  <ItemTemplate>
									<li><a href="/tags/<%# Eval("Url") %>"><%# Eval("TagName") %></a></li>
										  </ItemTemplate>
										  <FooterTemplate></ul></FooterTemplate>
										   </asp:Repeater>
								

						  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
							  ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
							  
							  ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" 
							  SelectCommand="SELECT [TagId], [TagName], [CatId], [Url] FROM [Tag] Where CatId='30'" 
							  >
                
            </asp:SqlDataSource>
					</li>

					


					  <li class="menu__item dropdown">
					   <a class="menu__link" href="#" data-toggle="dropdown">Ornament <b class="caret"></b></a>
								<asp:Repeater ID="Repeater5" DataSourceID="SqlDataSource4" runat="server">
										  <HeaderTemplate><ul class="dropdown-menu agile_short_dropdown"></HeaderTemplate>
										  <ItemTemplate>
									<li><a href="/tags/<%# Eval("Url") %>"><%# Eval("TagName") %></a></li>
										  </ItemTemplate>
										  <FooterTemplate></ul></FooterTemplate>
										   </asp:Repeater>
								

						  <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
							  ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
							  
							  ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" 
							  SelectCommand="SELECT [TagId], [TagName], [CatId], [Url] FROM [Tag] Where CatId='32'" 
							  >
                
            </asp:SqlDataSource>
					</li>

					  
					  

					  <li class=" menu__item"><a class="menu__link" href="/categories/vases-jars">Vases/Jars</a></li>
					  
					<li class=" menu__item"><a class="menu__link" href="/categories/trays-bowls">Trays/Bowls</a></li>
					  <li class=" menu__item"><a class="menu__link" href="/categories/marble-items">MarbleItems</a></li>
					  <li class=" menu__item"><a class="menu__link" href="/categories/religious">Religious</a></li>
					  <%--<li class=" menu__item"><a class="menu__link" href="/categories/wall-décor">WallDécor</a></li>
					 
					  <li class=" menu__item"><a class="menu__link" href="/categories/candles">Candles</a></li>
					  <li class=" menu__item"><a class="menu__link" href="/categories/furniture">Furniture</a></li>--%>
					  <li class=" menu__item"><a class="menu__link" href="/Contact.aspx">Contact</a></li>
					  
				
					
					
				  </ul>
				</div>
			      
			  </div>
			</nav>	
		</div>
		
		<div class="clearfix"></div>
	</div>
</div>
<!-- //banner-top -->

<!-- /banner_bottom_agile_info -->
<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>Order</h3>
			<!--/w3_short-->
				 <div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">

						   <ul class="w3_short">
								<li><a href="#">Home</a><i>|</i></li>
								<li>Order</li>
							</ul>
						 </div>
				</div>
	   <!--//w3_short-->
	</div>
</div>
   <!--/contact-->
		
		  <!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
	<div class="container">
		
		<div class="row" >
         <!-- mens -->
			<div class="filter">

				<h3>Order  <span> History</span></h3>
				</div>

			<asp:Repeater ID="Repeater2" DataSourceID="SqlDataSource3" runat="server">
				 <ItemTemplate>
			<div class="col-md-12 products-right" style="margin-top:30px;" >

				<div class="main-page">
        <div class="forms">

            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">

                    <h4>Order Details</h4>

                </div>
                <div class="form-body">

				<div class="collapse show" id="<%# Eval("OrderId") %>" style="">
          <div class="row">
          
           <div class="col-md-6 card-body"> 
             <ul class="order">
			<li>
				<p class="para">Order Id : <span class="forspan"> <%# Eval("OrderId") %></span> </p>
          
			 </li>
			<li>
				<p class="para">Date : <span class="forspan"> <%# Eval("Date") %></span> </p>
          
			 </li>
			   
			
			
			</ul>
           </div>
           

            <div class="col-md-6 card-body">
             <ul class="order">
            <li>
				<p class="para">Payment Method : <span class="forspan"> <%# Eval("PaymentMode") %></span> </p>
          
			 </li>
				 <li>
				<p class="para">Shipped Method : <span class="forspan"> </span> </p>
          
			 </li>
           
				 </ul>
            <%--Payment Status:&nbsp;<%# Eval("PaymentStatus") %><br>
            Delivery Date:&nbsp;<%# Eval("DeliveredDate") %><br>
            Order Date:&nbsp;<%# Eval("ExpectedDelDate") %></div>--%>
           


           
        </div>

        
</div>



					 
                 
				
                </div>

            </div>

        </div>

    </div>

				</div>
				</div>
				 </ItemTemplate>
			</asp:Repeater>



			<asp:Repeater ID="Repeater3" DataSourceID="SqlDataSource3" runat="server">
				 <ItemTemplate>
			<div class="col-md-12 products-right" style="margin-top:30px;" >

				<div class="main-page">
        <div class="forms">

            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
					<div class="row">
                    <h4 class="col-md-6">Payment Address</h4>
					<h4 class="col-md-6">Shipping Address</h4>
						</div>

                </div>
                <div class="form-body">

				<div class="collapse show" id="<%# Eval("OrderId") %>" style="">
          <div class="row">
          
           <div class="col-md-6 card-body"> 
             <ul class="order">
			<li>
				<p class="para"><span class="forspan"> <%# Eval("ClientName") %></span> </p>
          
			 </li>
			<li>
				<p class="para"><span class="forspan"> <%# Eval("Address") %></span> </p>
          
			 </li>
				 <li>
				<p class="para"><span class="forspan"> <%# Eval("Email") %></span> </p>
          
			 </li>
				 <li>
				<p class="para"><span class="forspan"> <%# Eval("Mobile") %></span> </p>
          
			 </li>
			   
			
			
			</ul>
           </div>
           

            <div class="col-md-6 card-body"> 
             <ul class="order">
			<li>
				<p class="para"><span class="forspan"> <%# Eval("ClientName") %></span> </p>
          
			 </li>
			<li>
				<p class="para"><span class="forspan"> <%# Eval("Address") %></span> </p>
          
			 </li>
				 <li>
				<p class="para"><span class="forspan"> <%# Eval("Email") %></span> </p>
          
			 </li>
				 <li>
				<p class="para"><span class="forspan"> <%# Eval("Mobile") %></span> </p>
          
			 </li>
			   
			
			
			</ul>
           </div>

        
</div>



					 
                 
				
                </div>

            </div>

        </div>

    </div>

				</div>
				</div>
				 </ItemTemplate>
			</asp:Repeater>

			

			<div class="col-md-12 products-right" style="margin-top:30px;" >

				<div class="main-page">
        <div class="forms">

            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">

                    <h4>Order History</h4>

                </div>
                <div class="form-body" style="overflow-x: scroll;">

				
                  
				
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderDetailsId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:TemplateField HeaderText="Image" SortExpression="ProductSizeImgMbl">
                                
                                <ItemTemplate>
                                    <img src='/admin/Product/Mobile/<%# Eval("ProductSizeImgMbl") %>' height="60" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                            <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />
                            <asp:BoundField DataField="NoOfItems" HeaderText="NoOfItems" SortExpression="NoOfItems" />
                            <asp:BoundField DataField="TotalPrice" HeaderText="Total" SortExpression="TotalPrice" />
							<asp:TemplateField HeaderText="Action" ShowHeader="False">
                             
								<ItemTemplate>
									<%--<a href="loginOrderHistory.aspx?OrderId=<%# Eval("OrderId") %>">--%>
										<i class="fa fa-undo" aria-hidden="true" style="background: #ed0202;
    color: white;
    font-size: 14px;
    padding: 8px;" ></i>


									</a>
                        
                    </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
						ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
						
						
						ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" 
						SelectCommand="SELECT [OrderDetailsId], [OrderId], [ProductSizeId], [ProductId], [ProductName], [CatId], [Material], [Color], [Dimensions], [Stock], [MRP], [Price], [MinQuantity], [Discount], [ProductSizeImgMbl], [NoOfItems], [TotalMrp], [TotalPrice], [Status] FROM [OrderDetails] WHERE ([OrderId] = @OrderId)"
						>
                        
                        <SelectParameters>
                    
                    
                        <asp:QueryStringParameter DefaultValue="0" Name="OrderId" 
                            QueryStringField="OrderId" Type="Int32" />
                    
                    </SelectParameters>
                        
                    </asp:SqlDataSource>

				
                  
				
                </div>

            </div>

        </div>

    </div>

				</div>

			
			<asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource3" runat="server">
				 <ItemTemplate>
			<div class="col-md-12 products-right" style="margin-top:30px;" >
			
	
		<div class="row" >
         <!-- mens -->
			
			<div class="col-md-8 products-right" style="margin-top:30px;" >

				<div class="main-page">
        <div class="forms">
			
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">

                    <div class="row">
                    <h4 class="col-md-4">Add Date</h4>
					<h4 class="col-md-4">Status</h4>
					<h4 class="col-md-4">Comment</h4>
						</div>

                </div>
                <div class="form-body">

				<div class="collapse show" id="<%# Eval("OrderId") %>" style="">
          <div class="row">
          
           <div class="col-md-4 card-body"> 
             <ul class="order">
			<li>
				<p class="para"> <span class="forspan"> <%# Eval("Date") %></span> </p>
          
			 </li>
			
			   
			
			
			</ul>
           </div>
           
			  <div class="col-md-4 card-body">
             <ul class="order">
            <li>
				<p class="para">Status : <span class="forspan"> <%# Eval("StatusText") %></span> </p>
          
			 </li>
				 
           
				 </ul>
            
        </div>

            <div class="col-md-4 card-body">
             <ul class="order">
            <li>
				<p class="para">Comment: <span class="forspan"></span> </p>
          
			 </li>
				 
           
				 </ul>
            <%--Payment Status:&nbsp;<%# Eval("PaymentStatus") %><br>
            Delivery Date:&nbsp;<%# Eval("DeliveredDate") %><br>
            Order Date:&nbsp;<%# Eval("ExpectedDelDate") %></div>--%>
           


           
        </div>


        
</div>
				
                </div>

            </div>

        </div>

    </div>




				</div>

				</div>
					 	
			
		   <div class=" New class col-md-4 products-left" style="margin-top: 26px;">
			



			<section class="cart">

        

        <div class="wrapper">

          <div class="amount">

            <div class="subtotal">
              <span>Subtotal</span> <span>$ <span id="subtotal"><%# Eval("SubTotal") %></span></span>
            </div>

            <div class="total">
              <span>Total</span> <span>$ <span id="total"><%# Eval("TotalAmount") %></span></span>
            </div>


              <asp:Button ID="BtnContinue" CssClass="btn btn-primary" runat="server" Text="Contine" style="width:100%; background:#947f57;" />

          </div>

			

        </div>

      </section>


			

			<div class="clearfix"></div>
		</div>
		

			</div>
		<div class="clearfix"></div>
		
		
	
		
				</div>

			 	 </ItemTemplate>
			</asp:Repeater>
					 

			
			

			<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
				 DeleteCommand="DELETE FROM [OrderSummary] WHERE [OrderId] = @OrderId" 
				 
				 ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" 
				 SelectCommand="SELECT [OrderId], [ClientId], [ClientName], [Mobile], [Email], [Address], [ABN], [Date], [Status], [CurrentStatus], [StatusText], [OrderDetails], [SubTotal], [Tax], [TotalAmount], [GrandTotal], [DeliveryCharge], [Saving], [ProductCount], [Packcount], [PaymentMode], [PaymentStatus], [DeliveredDate], [TxnId], [ExpectedDelDate], [cupon], [cuponCode], [couponDis], [CouponTitle], [CouponDescription] FROM [OrderSummary] WHERE ([ClientId] = @ClientId) AND ([OrderId] =@OrderId) ORDER BY [OrderId] DESC" 
				  >
                 <DeleteParameters>
                     <asp:Parameter Name="OrderId" Type="Int32" />
                 </DeleteParameters>
                 
                 

				 <SelectParameters>
                    
                    <asp:QueryStringParameter Name="OrderId" QueryStringField="OrderId" DefaultValue="0" />
                    <asp:SessionParameter Name="ClientId" SessionField="ClientID" Type="Int32" />
                    
                    </SelectParameters>
             </asp:SqlDataSource>


			
			
				

			</div>
		<div class="clearfix"></div>
		
		
	</div>
		</div>
<!-- //mens -->
    

		
	   
   
 <!--//contact-->
<!--/grids-->
<div class="coupons">
		<div class="coupons-grids text-center">
			<div class="w3layouts_mail_grid">
				
				<div class="col-md-4 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-map-marker" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>SHOWROOM ADDRESS</h3>
						<p>8/42 Mc Arthurs Road, Altona North 3025</p>
					</div>
				</div>
				<div class="col-md-4 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-phone" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>Call Us</h3>
						
						<p><a href="tel:(+61 451789411" target="_blank">+61 451789411</a> <b>/</b>
						<a href="tel:(03) 8590 5652" target="_blank">(03) 8590 5652</a> <b>/</b><br />
						<a href="tel: +61 426142810" target="_blank">+61 426142810</a></p>
						
					</div>
				</div>
			    <div class="col-md-4 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-clock-o" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>SHOWROOM HOURS</h3>
						<p>Open Hours : Monday- Friday</p>
						<p>9:30 am - 5 pm</p>
						<p>Email :<a href="mailto:info@decoratin.com.au"> info@decoratin.com.au</a></p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>

		</div>
</div>
<!--grids-->
		</form>
<!-- footer -->

<div class="footer">
	<div class="footer_agile_inner_info_w3l">
		<div class="col-md-4 footer-left">

            <img src="/images/image112.png" style="width:40%;" />
			
			<p>Decoratin Home & Gifts, Importer of quality and unique gift and housewares.</p>
			<ul class="social-nav model-3d-0 footer-social w3_agile_social two">
															<li><a href="#" class="facebook">
																  <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="twitter"> 
																  <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="instagram">
																  <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="pinterest">
																  <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
														</ul>
		</div>
		
			
				<div class="col-md-2 sign-gd">
					<h4>My Account</h4>
					<ul>
						<li><a href="#">My Account</a></li>
						<%--<li><a href="#">Order History</a></li>--%>
						<li><a href="#">Newsletter</a></li>
						<li><a href="#">Site Map</a></li>
						
					</ul>
				</div>

		<div class="col-md-2 sign-gd">
					<h4>Our Service</h4>
					<ul>
						<li><a href="/Contact">Contact</a></li>
						<li><a href="/PrivacyPolicy">Privacy Policy</a></li>
						<li><a href="/ReturnPolicy">Return Policy</a></li>
						
					</ul>
				</div>
				
				<div class="col-md-4 sign-gd-two">
					<h4>Store <span>Information</span></h4>
					<div class="w3-address">
						<div class="w3-address-grid">
							<div class="w3-address-left">

								<i class="fa fa-phone" aria-hidden="true"></i>
							</div>
							<div class="w3-address-right">

								<h6>Phone Number</h6>
								<p><a href="tel: +61 451789411" target="_blank">+61 451789411</a></p>
								<p><a href="tel:(03) 8590 5652" target="_blank">(03) 8590 5652</a></p>
								<p><a href="tel: +61 426142810" target="_blank">+61 426142810</a></p>
							</div>
							<div class="clearfix"> </div>
						</div>


						
						<div class="w3-address-grid">
							<div class="w3-address-left">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</div>
							<div class="w3-address-right">
								<h6>Email Address</h6>
								<p>Email :<a href="mailto:info@decoratin.com.au"> info@decoratin.com.au</a></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="w3-address-grid">
							<div class="w3-address-left">
								<i class="fa fa-map-marker" aria-hidden="true"></i>
							</div>
							<div class="w3-address-right">
								<h6>Location</h6>
								<p>8/42 Mc Arthurs Road, Altona North 3025
								
								</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>


				
				<div class="clearfix"></div>
		
		<div class="clearfix"></div>
			
		<p class="copy-right">&copy 2022 Decoratin. All rights reserved | Design by <a href="https://www.dexterous.in/">Dexterous Technology</a></p>
	</div>
</div>

<!-- //footer -->

<!-- login -->
			
<!-- //login -->
<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->	
	<!-- cart-js -->
	<script src="js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: '#'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>

	<!-- //cart-js --> 

<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
<!-- //stats -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
    </script>

	 
<!-- //here ends scrolling icon -->

<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>
