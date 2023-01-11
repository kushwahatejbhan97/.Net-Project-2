<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Single.aspx.cs" Inherits="DecoratinComplete.Single" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
    <!-- //tags -->
	<style>
		.link-product-add-cart
		{
			text-align:center;
		}

	</style>
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="/css/flexslider.css" type="text/css" media="screen" />
    <link href="/css/font-awesome.css" rel="stylesheet" />
    <link href="/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
    <link href="/css/myStyle.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="shortcut icon" href="/images/image110.png" />

    <link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/css/radio.css" rel="stylesheet" />

    <!-- //for bootstrap working -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet" />
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css' />
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
                <a href="/"><img src="/images/image11.png" style="padding-top: 0px; width: 32%;" /></a>
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
													<span>Login / Register</span>
												</div>
												<i class="fa fa-angle-down lnr"></i>
												<i class="fa fa-angle-up lnr"></i>
												<div class="clearfix"></div>	
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="/login"><i class="fa fa-unlock-alt"></i> Login</a> </li> 
											<li> <a href="/Register"><i class="fa fa-pencil-square-o"></i> Register</a> </li> 
											<%--<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>--%>
										</ul>
									</li>
								</ul>
							</div>


			
		
			
		



			
			</div>
		

		<div class="col-md-3 agileits-social top_content" style="margin-top: 1.5%;">
			

		<div class="top_nav_right" style="width:100%;">
			<div class="wthreecartaits wthreecartaits2 cart cart box_1"> 
						<div class="last"> 
					
						<div class="w3view-cart"  value=""  data-toggle="modal" data-target="#cartModal" <%--onclick="cartModal()"--%>>
							<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
							<asp:UpdatePanel ID="UpdatePanel3" runat="server">
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
					<li class="active menu__item menu__item--current"><a class="menu__link" href="/">Home <span class="sr-only">(current)</span></a></li>
					  <li class=" menu__item"><a class="menu__link" href="/category/lanterns ">Lanterns</a></li>

					  <li class="menu__item dropdown">
					   <a class="menu__link" href="#" data-toggle="dropdown">Decor <b class="caret"></b></a>
								<asp:Repeater ID="Repeater5" DataSourceID="SqlDataSource2" runat="server">
										  <HeaderTemplate><ul class="dropdown-menu agile_short_dropdown"></HeaderTemplate>
										  <ItemTemplate>
									<li><a href="/tag/<%# Eval("Url") %>"><%# Eval("TagName") %></a></li>
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
									<li><a href="/tag/<%# Eval("Url") %>"><%# Eval("TagName") %></a></li>
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

					  
					  

					  <li class=" menu__item"><a class="menu__link" href="/category/vases-jars">Vases/Jars</a></li>
					  
					<li class=" menu__item"><a class="menu__link" href="/category/trays-bowls">Trays/Bowls</a></li>
					  <li class=" menu__item"><a class="menu__link" href="/category/marble-items">MarbleItems</a></li>
					  <li class=" menu__item"><a class="menu__link" href="/category/religious">Religious</a></li>
					  <%--<li class=" menu__item"><a class="menu__link" href="/category/wall-décor">WallDécor</a></li>
					 
					  <li class=" menu__item"><a class="menu__link" href="/category/candles">Candles</a></li>
					  <li class=" menu__item"><a class="menu__link" href="/category/furniture">Furniture</a></li>--%>
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
<!-- Modal1 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
						<div class="modal-body modal-body-sub_agile">
						<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign In <span>Now</span></h3>
							<div class="styled-input agile-styled-input-top">
								<asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username cannot be blank" 
									ControlToValidate="TxtUserName" ValidationGroup="Login" ForeColor="#23b4cc"></asp:RequiredFieldValidator>
								
								<label>Name</label>
								<span></span>
							</div>
							 

							<div class="styled-input">
								<asp:TextBox ID="TxtLogInPassword" TextMode="Password" runat="server"></asp:TextBox>

								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Login" ControlToValidate="TxtLogInPassword" runat="server" ForeColor="#23b4cc" ErrorMessage="Required Password"></asp:RequiredFieldValidator>
								<label>Password</label>
								<span></span>
							</div>

							<asp:Button ID="BtnLogInsubmit" runat="server" Text="Sign In" ValidationGroup="Login" OnClick="BtnLogInsubmit_Click"/>
							
						  
														<div class="clearfix"></div>
														<p><a href="#" data-toggle="modal" data-target="#myModal2" > Don't have an account?</a></p>

						</div>

						<div class="col-md-4 modal_body_right modal_body_right1">
							<img src="/images/log_pic.jpg" alt=" "/>
						</div>
									</div>
							
						
						<div class="clearfix">
                            
                            <br />
        </div>
					
					</div>
				</div>
				<!-- //Modal content-->
			</div>
		
<!-- //Modal1 -->
<!-- Modal2 -->
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
						<div class="modal-body modal-body-sub_agile">
						<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign Up <span>Now</span></h3>
						
							<div class="styled-input agile-styled-input-top">
								<asp:TextBox ID="TxtSignUpName" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="SignUp" ControlToValidate="TxtSignUpName" runat="server" ForeColor="Red" ErrorMessage="Required Name"></asp:RequiredFieldValidator>
								
								<label>Name</label>
								<span></span>
							</div>

							 <div class="styled-input">
								 <asp:TextBox ID="TxtSignUpPhone" TextMode="Phone" runat="server"></asp:TextBox>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="SignUp" Display="Dynamic" runat="server" ForeColor="Red" ErrorMessage="Enter valid Phone number" ControlToValidate="TxtSignUpPhone" ></asp:RegularExpressionValidator>
								<label>Phone Number</label>
								<span></span>
							</div>
							<div class="styled-input">
								<asp:TextBox ID="TxtSignUpEmail" TextMode="Email" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="SignUp" ControlToValidate="TxtSignUpEmail" ForeColor="Red" runat="server" ErrorMessage="*Email"></asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="regexEmailValid" Display="Dynamic" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TxtSignUpEmail" ErrorMessage="*Invalid Format" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
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
								<asp:RegularExpressionValidator ID="regularExp" runat="server" 
  ValidationExpression="[0-9]{5}" 
 ErrorMessage="Invalid Zip Code." ValidationGroup="SignUp" ControlToValidate="TxtSignUpPostalPIN" ForeColor="Red"></asp:RegularExpressionValidator>
								<label>PostalPIN</label>
								<span></span>

							</div>

							 <div class="styled-input ">
								 <asp:TextBox ID="TxtSignUpABN" TextMode="Number" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="SignUp" ControlToValidate="TxtSignUpABN" runat="server" ForeColor="Red" ErrorMessage="Required ABN"></asp:RequiredFieldValidator>
								<label>ABN</label>
								<span></span>

							</div>
							<asp:Button ID="BtnSignUpSunmit" runat="server" ValidationGroup="SignUp" Text="Sign Up" OnClick="BtnSignUpSunmit_Click" />

						
						  
														<div class="clearfix"></div>
														<p><a href="#">By clicking register, I agree to your terms</a></p>

						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<img src="/images/log_pic.jpg" alt=" "/>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //Modal content-->
			</div>
		</div>
<!-- //Modal2 -->
        <!--/single_page-->
        <!-- /banner_bottom_agile_info -->
        <div class="page-head_agile_info_w3l">
            <div class="container">
				<h3 runat="server" id="HeadTitle"></h3>
                
                <!--/w3_short-->
                <div class="services-breadcrumb">
                    <div class="agile_inner_breadcrumb">

                        <ul class="w3_short">
                            <li><a href="/">Home</a><i>|</i></li>
                            <li runat="server" id="HeadsubTitle"></li>
                        </ul>
                    </div>
                </div>
                <!--//w3_short-->
            </div>
        </div>

        <!-- banner-bootom-w3-agileits -->
        <div class="banner-bootom-w3-agileits">
            <div class="container">

                <div class="col-md-4 single-right-left ">
                    <div class="grid images_3_of_2">
                        <div class="flexslider">
                            <asp:Repeater ID="RepeaterLeftImg" runat="server" OnItemCommand="Repeaterproducttype1_ItemCommand">
                                <HeaderTemplate>
                                     <ul class="slides">
                                </HeaderTemplate>
                           
                           <ItemTemplate>
                               <li data-thumb='/Admin/Product/Slider/<%# Eval("ProductSizeSlider") %>' >
                                    <div class="thumb-image">
                                        <img src='/Admin/Product/Slider/<%# Eval("ProductSizeSlider") %>'  data-imagezoom="true" class="img-responsive">
                                    </div>
                                </li>
                                <li data-thumb='/Admin/Product/Slider/<%# Eval("ProductSizeSlider") %>' >
                                    <div class="thumb-image">
                                        <img src='/Admin/Product/Slider/<%# Eval("ProductSizeSlider") %>'  data-imagezoom="true" class="img-responsive">
                                    </div>
                                </li>
                               <li data-thumb='/Admin/Product/Slider/<%# Eval("ProductSizeSlider") %>' >
                                    <div class="thumb-image">
                                        <img src='/Admin/Product/Slider/<%# Eval("ProductSizeSlider") %>'  data-imagezoom="true" class="img-responsive">
                                    </div>
                                </li>
                                <%--<li data-thumb='/Admin/Product/Slider/<%# Eval("ProductSizeSlider") %>' >
                                    <div class="thumb-image">
                                        <img src='/Admin/Product/Slider/<%# Eval("ProductSizeSlider") %>'  data-imagezoom="true" class="img-responsive">
                                    </div>
                                </li>--%>
                               
                           </ItemTemplate>
                                
                                <FooterTemplate></ul></FooterTemplate>
                            

                            </asp:Repeater>

                            <asp:SqlDataSource ID="SqlDbLeftImg" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
								SelectCommand="SELECT [ProductSizeId], [Dimensions], [Weight], [Stock], [StocktoDispatch], [Discount], [Status], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductId], [ProductSizeImgMbl], [ProductSizeImgDesk], [ProductSizeSlider] FROM [ProductSize] WHERE ([ProductSizeId] = @ProductSizeId)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter DefaultValue="0" Name="ProductSizeId" QueryStringField="productsizeid" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            
                            <div class="clearfix">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 single-right-left simpleCart_shelfItem">
                    
					<asp:UpdatePanel ID="UpdatePanel8" runat="server">
					<ContentTemplate>
					
                            <span id="Discount" runat="server" class="product-new-top"></span>
                            <span id="ProductSizeLabel" runat="server" class="product-new-top" style="right: 55px;background: #245060;"></span>
                    <h3 id="ProductName" runat="server"></h3>

                    



                    <p id="Price" runat="server"></p>
                 
                    
                    
                    
                    <div class="description">
                        
                        <div class="row">
                            <div id="divColor" visible="false" runat="server" class="col-md-6 color-quality-right">
                                <h5 id="Color" runat="server"></h5>

                            </div>

                            <div id="divType" visible="false" runat="server" class="col-md-6 color-quality-right">
                                <h5 id="Type" runat="server"></h5>

                            </div>

                            <div id="divMaterial" visible="false" runat="server" class="col-md-6 color-quality-right">
                                <h5 id="Material" runat="server"></h5>

                            </div>
                            <div id="divTheme" visible="false" runat="server" class="col-md-6 color-quality-right">
                                <h5 id="Theme" runat="server"></h5>

                            </div>

                        
                            <div id="divDimension" visible="false" runat="server" class="col-md-6 color-quality-right">
                                <h5 id="Dimension" runat="server"></h5>

                            </div>

                            <div id="divWeight" visible="false" runat="server" class="col-md-6 color-quality-right">
                                <h5 id="Weight" runat="server"></h5>

                            </div>

                            <div id="divStock" visible="false" runat="server" class="col-md-6 color-quality-right">
                                <h5 id="Stock" runat="server"></h5>

                            </div>
                            <div id="divMinQuantity" visible="false" runat="server" class="col-md-6 color-quality-right">
                                <h5 id="MinQuantity" runat="server"></h5>

                            </div>




                        
                        </div>
                    </div>

					 <div class="description">
						 <div class="row">
							 <div id="divSuitableFor" visible="false" runat="server" class="col-md-6 color-quality-right">
                        <h5 id="SuitableFor" runat="server">
                           
                        </h5>
                    </div>
						 </div>
					 </div>
					
					<asp:SqlDataSource ID="SqlDbSingleProduct" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
								SelectCommand="SELECT [ProductId], [ProductName], [Details], [CatName], [CatId], [Color], [Type], [Material], [Theme], [SuitableFor], [Dimensions], [Weight], [Brand], [Stock], [Ratings], [ProductSizeId], [Discount], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductSizeImgMbl], [ProductSizeSlider], [ProductSizeImgDesk] FROM [Product] WHERE ([ProductId] = @ProductId)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="ProductId" QueryStringField="productid" Type="Int32" />
                    </SelectParameters>
                        </asp:SqlDataSource>
                    
                    <div class="occasional">
                        
                        
						
                        
                        
                        <div class="clearfix"></div>
                           <div class="section over-hide z-bigger">
		
		
		<div class="section over-hide z-bigger">
			<div class=" pb-5">
				<div class="row justify-content-center pb-5">
					<div class="col-12 pb-5">
						<asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="RadioButtonList1" ValidationGroup="SingleProduct" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
						</div>
					<div class="col-12 pb-5">
						
                       <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
							CssClass="checkbox-booking" RepeatDirection="Horizontal" RepeatColumns="2"   AutoPostBack="True" 
			 DataTextField="Dimensions" DataValueField="ProductSizeId" 
							onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" >
	</asp:RadioButtonList>

						

                        </div>
                    </div>
                </div>
            </div>
                  </div>
                        
                    </div>

					
						
														<div class="row" style="width:50%">
						<div class=" color-quality-right">
												<div id="DivAddBtn" runat="server"  class="col-md-6 inner-men-cart-pro">
													<asp:LinkButton ID="LbtnAddToCart"  CssClass="link-product-add-cart" runat="server" Text="Add To Cart" ValidationGroup="SingleProduct"  OnClick="LbtnAddToCart_Click"  ></asp:LinkButton>	
												</div>
												<div id="DivQty" runat="server"  visible="false"  class="col-md-6 inner-men-cart-pro">
												
														
												<div class="link-product-add-cart " >
										

			<asp:LinkButton ID="LbtnDecrease" ValidationGroup="SingleProduct"  style="padding-left: 2px; text-align: left;" CssClass="" runat="server"  OnClick="LBtnDecrease_Click"><i class="fa fa-minus" style="color:#fff;" ></i></asp:LinkButton>
	

   
     <%--<input type="text" readonly="readonly" id="qty_display1"  value="0" />--%>

													<asp:Label ID="lblProQty" style="text-align: center; border: none; background:black; padding: 11px; padding-left: 20%; padding-right: 20%;" class="qty-input text-center"  runat="server" Text="0"></asp:Label>


	   <asp:LinkButton ID="LbtnIncrement" ValidationGroup="SingleProduct"  style="padding-right: 2px; text-align: right;" CssClass="" runat="server"  OnClick="LbtnIncrease_Click"><i class="fa fa-plus" style="color:#fff;" ></i> </asp:LinkButton>
	
															</div>

												
													
												</div>


												  


											</div>

															<br />
						<br />
						<br />
						<div class="clearfix"></div>
					</div>
							
						

					<asp:UpdatePanel ID="UpdatePanel4" runat="server">
						<ContentTemplate>
							<asp:Repeater ID="RepeaterProductType2" runat="server"  OnItemCommand="Repeaterproducttype1_ItemCommand">
								<HeaderTemplate>
									 <div class="occasion-cart">
								</HeaderTemplate>
							<ItemTemplate>
                   
						<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															
																<div id="DivAddBtn" runat="server" visible='<%# Eval("NotInCart") %>'>
																	<asp:Button ID="BtnSingleCart" CssClass="button" runat="server" Text="Add to cart" CommandName="Add" CommandArgument='<%# Eval("ProductSizeId")%>' />
																	
																</div>


							<div id="DivQty" runat="server" visible='<%# Eval("InCart") %>'>
												
										

			<asp:LinkButton ID="lnkbtnminus" style="padding-left: 17px; text-align: left;" CssClass="button" runat="server" CommandName="Increase" CommandArgument='<%# Eval("ProductSizeId")%>'><i class="fa fa-minus" ></i></asp:LinkButton>
	

   
     <input type="text" readonly="readonly" id="qty_display1" style="text-align: center; width:97%; background:#203e48; border: none;  padding: 0px;" class="qty-input text-center" value='<%# Eval("NoOfItems") %>'/>
		



	   <asp:LinkButton ID="lnkbtnplus" style="text-align: right;" CssClass="button" runat="server" CommandName="Increase" CommandArgument='<%# Eval("ProductSizeId")%>'><i class="fa fa-plus" ></i></asp:LinkButton>
	
															

												</div>
							
															
														</div>
								</ItemTemplate>
							<FooterTemplate></div></FooterTemplate>												
					
							</asp:Repeater>
					</ContentTemplate>
					</asp:UpdatePanel>
                    


														</ContentTemplate>
						</asp:UpdatePanel>
</div>
				<div class="clearfix"></div>
                    <div class="responsive_tabs_agileits">
                    <div id="horizontalTab">
                        <ul class="resp-tabs-list">
                            <li>Description</li>
                            <%--<li>Reviews</li>
                            <li>Information</li>--%>
                        </ul>
                        <div class="resp-tabs-container">
                            <!--/tab_one-->
                            <asp:Repeater ID="Repeater2" DataSourceID="SqlDbSingleProduct" runat="server">
                                <HeaderTemplate>
                                    <div class="tab1">
                                </HeaderTemplate>
                            <ItemTemplate>
                                <div class="single_page_agile_its_w3ls">

                                    <h6><%# Eval("ProductName") %></h6>
                                    <p><%# Eval("Details") %></p>
                                    
                               
                                    
                                </div>
                            </ItemTemplate>

                                
                                <FooterTemplate></div></FooterTemplate>
                            
                            </asp:Repeater>
                            
                        </div>
                    </div>
                </div>
                </div>
                <div class="clearfix"></div>
                <!-- /new_arrivals -->
                

               

                <!-- //new_arrivals -->
                <!--/slider_owl-->

                <div class="w3_agile_latest_arrivals">
                    <h3 class="wthree_text_info">Featured <span>Arrivals</span></h3>
                    <!--/tab_one-->

                    <!--/tab_one-->
						<asp:UpdatePanel ID="UpdatePanel2" runat="server">
							<ContentTemplate>
							<asp:Repeater ID="Repeaterproducttype1" runat="server"  OnItemCommand="Repeaterproducttype1_ItemCommand">
								<HeaderTemplate>
									<div class="tab1">
								</HeaderTemplate>
								<ItemTemplate>
									
									<div class="col-md-3 product-men">
										
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src='/Admin/Product/Desktop/<%# Eval("ProductSizeImgDesk") %>' alt="" class="pro-image-front">
										<img src='/Admin/Product/Desktop/<%# Eval("ProductSizeImgDesk") %>' alt="" class="pro-image-back">
											
											<span class="product-new-top"><%# Eval("ProductSizeLabel") %></span>
										<%--<span class="product-new-top discountlbl"><%# Eval("Discount") %>%</span>--%>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="/productes/<%# Eval("Url") %>"><%# Eval("ProductName") %></a></h4>
										<%--<div class="info-product-price">
											<span class="item_price bold price" ><i class="fa fa-usd" aria-hidden="true"></i><%# Eval("Price") %></span>
											<del class="bold"><i class="fa fa-usd" aria-hidden="true"></i><%# Eval("MRP") %></del>
										</div>
									--%>
										<div class="info-product-price">
										<span class="item_price" style="color:#000;">Min Order : <%# Eval("MinQuantity") %></span>
											
										</div>
										<div class="info-product-price">
										<span><%# Eval("Material") %></span>
											</div>
										<div class="info-product-price">
										<span class="item_price">Dimensions:<%# Eval("Dimensions") %></span></div>
										<div class="info-product-price">
										<span class="item_price" style="color:#ffb900;">Stock:<%# Eval("Stock") %></span></div>
															
										<div >
												<div id="DivAddBtn" runat="server" visible='<%# Eval("NotInCart") %>' class="inner-men-cart-pro">
													<asp:LinkButton ID="LbtnAddToCart" CssClass="link-product-add-cart" runat="server" Text="Add To Cart"  CommandName="Add" CommandArgument='<%# Eval("ProductSizeId")%>'></asp:LinkButton>	
												</div>

												<div id="DivQty" runat="server" visible='<%# Eval("InCart") %>' class="inner-men-cart-pro">
												<div class="link-product-add-cart col-md-12">
										

			<asp:LinkButton ID="LinkButton1" CssClass="left-decrease" runat="server" CommandName="Decrease" CommandArgument='<%# Eval("ProductSizeId")%>'><i class="fa fa-minus" style="color:#fff;" ></i></asp:LinkButton>
	

   
     <input type="text" readonly="readonly" id="qty_display1" class="qty-input text-center center-quantity"  value='<%# Eval("NoOfItems") %>' />
		



	   <asp:LinkButton ID="LbtnIncrement1"  CssClass="right-decrease" runat="server" CommandName="Increase" CommandArgument='<%# Eval("ProductSizeId")%>'><i class="fa fa-plus" style="color:#fff;" ></i></asp:LinkButton>
	
															</div>

												</div>


												  


											</div>
																			
									</div>
								</div>
							</div>
								</ItemTemplate>
								
							
							<FooterTemplate>
								<div class="clearfix"></div>
						</div>
							</FooterTemplate>
							</asp:Repeater>
							
					</ContentTemplate>
					</asp:UpdatePanel>
						

                    <div class="clearfix"></div>
                    <!--//slider_owl-->
                </div>
            </div>
        </div>


        <%--Model cart Start--%>
	

<div class="modal fade" id="cartModal" style="overflow-x:auto;" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content" >
      <div class="modal-header border-bottom-0">
        <h5 class="modal-title" id="exampleModalLabel">
          Your Shopping Cart
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:black;">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

		<asp:UpdatePanel ID="UpdatePanel1"  runat="server">
			<ContentTemplate>
      <div class="modal-body" id="itemcart" runat="server" Visible="false"  >
        <table class="table table-image" >
          <thead > 
            <tr>
              <th scope="col"></th>
              <th scope="col">Product</th>
		     <th scope="col">Stock</th>
             
              <th scope="col" style="text-align:center;">Qty</th>
              <th scope="col">Total</th>
             
            </tr>
          </thead>

			<asp:UpdatePanel ID="UpdatePanel5" runat="server">
				<ContentTemplate>

			  <asp:Repeater ID="RepeaterCart" runat="server" OnItemCommand="Repeaterproducttype1_ItemCommand">
				  <HeaderTemplate><tbody></HeaderTemplate>

				  <ItemTemplate>
					  <tr>
					  <td class="w-25">
                <img src='/Admin/Product/Mobile/<%# Eval("ProductSizeImgMbl") %>' class="img-fluid img-thumbnail" alt="Sheep">
              </td>
              <td><%# Eval("ProductName") %></td>
			 <td><%# Eval("Stock") %></td>
              
              <td >
				  <div class="d-flex flex-row justify-content-between align-items-center p-2 mt-4 px-3 rounded">
 <div class="d-flex flex-row align-self-center product_data"  id="qty_select">
   
   <div class="input-group text-center" id="qty_selector">
	   <asp:LinkButton ID="LbtnDecrement" CssClass="decrement-btn" runat="server" CommandName="Decrease" CommandArgument='<%# Eval("ProductSizeId")%>'>
		   <i class="fa fa-minus" style="padding-left:9px"></i>
	   </asp:LinkButton>
     
     <input type="text" readonly="readonly" id="qty_display" class="qty-input text-center" value='<%# Eval("NoOfItems") %>' />
	   <asp:LinkButton ID="LbtnIncrement" CssClass="increment-btn" runat="server" CommandName="Increase" CommandArgument='<%# Eval("ProductSizeId")%>'>
		   <i class="fa fa-plus" ></i>
	   </asp:LinkButton>
	   
   </div>
</div>
</div>
				  </td>
             
              <td>
                
				  <asp:LinkButton ID="LBtnCross" CssClass="btn btn-danger btn-sm" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ProductSizeId")%>'>
					  <i class="fa fa-times"></i>
				  </asp:LinkButton>
              </td>
						   </tr>
				  </ItemTemplate>
				  
              
				  <FooterTemplate>  </tbody></FooterTemplate>
           

			  </asp:Repeater>
					

            </ContentTemplate>
			</asp:UpdatePanel>
        


			


			
        </table> 
        <div class="d-flex justify-content-end">
          <h5>Total: 
			  <asp:Label ID="lblGrossTotal" CssClass="price text-success" runat="server" Text="0$"></asp:Label>
			  </h5>
        </div>
      </div>

	  <div id="NoItemCart" runat="server" visible="false">
				  <img src="/images/EmptyCart.jpg" alt="EmptyCart" class="image img-responsive" style=" width:100%;" />

        </div>

			</ContentTemplate>
			</asp:UpdatePanel>
      <div class="modal-footer border-top-0 d-flex justify-content-between">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
		  <a href="/checkout" type="button" class="btn btn-success">Checkout</a>
      </div>

		
    </div>


	  


	  
  </div>
</div>



	<script type="text/javascript">

        function cartModal() {
            $('#cartModal').modal('show');
        }
    </script>
	<%--Model cart End --%>


        




        <!--//single_page-->
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
        <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content modal-info">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body modal-spa">
                        <div class="login-grids">
                            <div class="login">
                                <div class="login-bottom">
                                    <h3>Sign up for free</h3>
                                    
                                </div>
                                <div class="login-right">
                                    <h3>Sign in with your account</h3>
                                    
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //login -->
        <a href="#home" class="scroll" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
        <!-- js -->
        <script type="text/javascript" src="/js/jquery-2.1.4.min.js"></script>
        <!-- //js -->
        <script src="/js/modernizr.custom.js"></script>
        <!-- Custom-JavaScript-File-Links -->
        <!-- cart-js -->
        <script src="/js/minicart.min.js"></script>
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
        <!-- single -->
        <script src="/js/imagezoom.js"></script>
        <!-- single -->
        <!-- script for responsive tabs -->
        <script src="/js/easy-responsive-tabs.js"></script>
        <script>
            $(document).ready(function () {
                $('#horizontalTab').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion           
                    width: 'auto', //auto or any width like 600px
                    fit: true,   // 100% fit in a container
                    closed: 'accordion', // Start closed if in accordion view
                    activate: function (event) { // Callback function if tab is switched
                        var $tab = $(this);
                        var $info = $('#tabInfo');
                        var $name = $('span', $info);
                        $name.text($tab.text());
                        $info.show();
                    }
                });
                $('#verticalTab').easyResponsiveTabs({
                    type: 'vertical',
                    width: 'auto',
                    fit: true
                });
            });
        </script>
        <!-- FlexSlider -->
        <script src="/js/jquery.flexslider.js"></script>
        <script>
            // Can also be used with $(document).ready()
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    controlNav: "thumbnails"
                });
            });
        </script>
        <!-- //FlexSlider-->
        <!-- //script for responsive tabs -->
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="/js/move-top.js"></script>
        <script type="text/javascript" src="/js/jquery.easing.min.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
                });
            });
        </script>
        <!-- here stars scrolling icon -->
        <script type="text/javascript">
            $(document).ready(function () {
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
        <script type="text/javascript" src="/js/bootstrap.js"></script>
    </form>
</body>

</html>
