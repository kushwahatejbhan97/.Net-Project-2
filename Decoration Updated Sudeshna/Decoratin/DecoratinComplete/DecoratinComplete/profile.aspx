<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="DecoratinComplete.profile" %>

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
	<%--<link href="css/Checkout.css" rel="stylesheet" type="text/css" media="all" />--%>
<link href="css/font-awesome.css" rel="stylesheet" /> 
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="shortcut icon" href="/images/image110.png" />
 
<!-- //for bootstrap working -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet" />
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css' />

	<style>
		.table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
    font-size: 1.1em;
    color: #947f57;
    border-top: none !important;
    font-weight: bold;
    font-family: "Open Sans", sans-serif;
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
								<asp:Repeater ID="Repeater5" DataSourceID="SqlDataSource2" runat="server">
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
								<asp:Repeater ID="Repeater6" DataSourceID="SqlDataSource4" runat="server">
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
			<h3>Profile</h3>
			<!--/w3_short-->
				 <div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">

						   <ul class="w3_short">
								<li><a href="#">Home</a><i>|</i></li>
								<li>Profile</li>
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
			<div class="filter" style="margin-left:24px;">

				<h3>My <span> Profile</span></h3>
				</div>
			



			<div class="col-md-8 products-right" style="margin-top:30px;" >
			
				
			
				<!-- Modal content-->
				


				<div class="modal-content1">
					
						<div class="modal-body modal-body-sub_agile">
						<div class="modal_body_left modal_body_left1">
						



						    <asp:DetailsView ID="DetailsView1" runat="server" BorderWidth="0" BorderColor="White"  CssClass=" table table-responsive table-condensed table-striped" AutoGenerateRows="False" DataKeyNames="ClientId" DataSourceID="SqlDataSource1" >
                                <Fields>
									 <asp:BoundField DataField="ClientId" HeaderText="ClientId" InsertVisible="False" ReadOnly="True" SortExpression="ClientId" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                    <asp:BoundField DataField="PostalPIN" HeaderText="PostalPIN" SortExpression="PostalPIN" />
                                    <asp:BoundField DataField="ABN" HeaderText="ABN" SortExpression="ABN" />
                                    <asp:BoundField DataField="ReferCode" HeaderText="ReferCode" SortExpression="ReferCode" />
                                </Fields>
                            </asp:DetailsView>
                            <br />
						
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
							SelectCommand="SELECT [Name], [Mobile], [Email], [Address], [PostalPIN], [ABN], [ReferCode], [ClientId] FROM [Client] WHERE ([ClientId] = @ClientId)">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="0" Name="ClientId" SessionField="ClientID" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
							<%--<div class="styled-input agile-styled-input-top">
								<asp:TextBox ID="TxtSignUpName" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="SignUp" ControlToValidate="TxtSignUpName" runat="server" ForeColor="Red" ErrorMessage="Required Name"></asp:RequiredFieldValidator>
								
								<label>Name</label>
								<span></span>
							</div>

							 <div class="styled-input">
								 <asp:TextBox ID="TxtSignUpPhone" TextMode="Phone" runat="server"></asp:TextBox>
								<asp:RegularExpressionValidator ValidationExpression="[0-9]{10}" ID="RegularExpressionValidator2" ValidationGroup="SignUp" Display="Dynamic" runat="server" ForeColor="Red" ErrorMessage="*10 digit" ControlToValidate="TxtSignUpPhone" ></asp:RegularExpressionValidator>
								 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="SignUp" ControlToValidate="TxtSignUpPhone" ForeColor="Red" runat="server" ErrorMessage="*Mobile Number"></asp:RequiredFieldValidator>

								<label>Phone Number</label>
								<span></span>
							</div>
							<div class="styled-input">
								<asp:TextBox ID="TxtSignUpEmail" TextMode="Email" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="SignUp" ControlToValidate="TxtSignUpEmail" ForeColor="Red" runat="server" ErrorMessage="*Email"></asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="regexEmailValid" Display="Dynamic" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TxtSignUpEmail" ErrorMessage="*Invalid Format"></asp:RegularExpressionValidator>
								<label>Email</label>
								<span></span>
							</div> 
							<div class="styled-input">
								<asp:TextBox ID="TxtSignUpPasswword" TextMode="Password" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="SignUp" ControlToValidate="TxtSignUpPasswword" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
								<label>Password</label>
								<span></span>
							</div> 
							<div class="styled-input">
								<asp:TextBox ID="TxtSignUpConfirmPasswword" TextMode="Password" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="SignUp" ControlToValidate="TxtSignUpConfirmPasswword" ForeColor="Red" runat="server" ErrorMessage="* Enter Content"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TxtSignUpConfirmPasswword" ControlToCompare="TxtSignUpPasswword" Operator="Equal" ForeColor="Red"  ErrorMessage="*Password does not match" ></asp:CompareValidator>
								<label>Confirm Password</label>
								<span></span>
							</div> 

							 
							 <div class="styled-input ">
								 <asp:TextBox ID="TxtSignUpAddress" TextMode="MultiLine" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="SignUp" ControlToValidate="TxtSignUpAddress" runat="server" ForeColor="Red" ErrorMessage="Required Address"></asp:RequiredFieldValidator>
								<label>Address</label>
								<span></span>

							</div>
							  <div class="styled-input ">
								  <asp:TextBox ID="TxtSignUpPostalPIN" runat="server"></asp:TextBox>
								
								<label>PostalPIN</label>
								<span></span>

							</div>

							 <div class="styled-input ">
								 <asp:TextBox ID="TxtSignUpABN" TextMode="Number" runat="server"></asp:TextBox>
								<asp:RegularExpressionValidator ValidationExpression="[0-9]{11}" ID="RegularExpressionValidator1" ValidationGroup="SignUp" Display="Dynamic" runat="server" ForeColor="Red" ErrorMessage="*Wrong Input" ControlToValidate="TxtSignUpABN" ></asp:RegularExpressionValidator>
								 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="SignUp" ControlToValidate="TxtSignUpABN" ForeColor="Red" runat="server" ErrorMessage="*ABN"></asp:RequiredFieldValidator>
								<label>ABN</label>
								<span></span>

							</div>--%>
							

						
						  
														<div class="clearfix"></div>
							
														

						</div>
						
						<div class="clearfix"></div>
					</div>
				</div>
				
				<!-- //Modal content-->
		
			

			
		</div>



		<div class=" New class col-md-4 products-left" style="margin-top: 26px;">
			



			<div class="css-treeview">
		
				<h3 class="agileinfo_sign1">ACCOUNT <span>MENU</span></h3>
				<ul class="tree-list-pad">
					
					
					<li><a href="/profile"><label for="item-0"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> My Account</label></a>
						
					</li>
					
					<li><a href="/order"><label for="item-0"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Order History</label></a>
						
					</li>
					
					<li><a href="/return"><label for="item-0"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>Returns</label></a>
						
					</li>
					
					
					<%--<li><input type="checkbox" checked="checked" id="item-2" /><label for="item-2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Custom Menus</label>
						<ul>
							<li><input type="checkbox"  id="item-2-0" /><label for="item-2-0"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Add or Remove</label>
								<ul>
									<li><a href="mens.html">Shirts</a></li>
									<li><a href="mens.html">Shoes</a></li>
									<li><a href="mens.html">Pants</a></li>
									<li><a href="mens.html">SunGlasses</a></li>
								</ul>
							</li>
							<li><input type="checkbox" id="item-2-1" /><label for="item-2-1"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Any Menu Item</label>
								
							</li>
							<li><input type="checkbox" id="item-2-2" /><label for="item-2-2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>This is a Fully Customizable</label>
								
							</li>
							<li><input type="checkbox" id="item-2-3" /><label for="item-2-2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>Accordion Menu Module</label>
								
							</li>
						</ul>
					</li>--%>
				</ul>
					
			</div>


			

			<div class="clearfix"></div>
		</div>
		

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
