<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DecoratinComplete.Home" %>
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
<!--//tags -->
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/myStyle.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet" /> 
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="shortcut icon" href="/images/image110.png" />

 
<!-- //for bootstrap working -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet" />
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css' />
</head>
<body onload="slider()">
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
								<asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server">
										  <HeaderTemplate><ul class="dropdown-menu agile_short_dropdown"></HeaderTemplate>
										  <ItemTemplate>
									<li><a href="/tags/<%# Eval("Url") %>"><%# Eval("TagName") %></a></li>
										  </ItemTemplate>
										  <FooterTemplate></ul></FooterTemplate>
										   </asp:Repeater>
								

						  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
							  ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
							  
							  ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" 
							  SelectCommand="SELECT [TagId], [TagName], [CatId], [Url] FROM [Tag] Where CatId='30'" 
							  >
                
            </asp:SqlDataSource>
					</li>

					


					  <li class="menu__item dropdown">
					   <a class="menu__link" href="#" data-toggle="dropdown">Ornament <b class="caret"></b></a>
								<asp:Repeater ID="Repeater2" DataSourceID="SqlDataSource2" runat="server">
										  <HeaderTemplate><ul class="dropdown-menu agile_short_dropdown"></HeaderTemplate>
										  <ItemTemplate>
									<li><a href="/tags/<%# Eval("Url") %>"><%# Eval("TagName") %></a></li>
										  </ItemTemplate>
										  <FooterTemplate></ul></FooterTemplate>
										   </asp:Repeater>
								

						  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
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



<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<asp:Repeater ID="RepeaterBubble" DataSourceID="SqlDBSlider" runat="server">
			<HeaderTemplate><ol class="carousel-indicators">
				
				</HeaderTemplate>
		<ItemTemplate>
			
			<li data-target="#myCarousel" data-slide-to="<%# Container.ItemIndex %>" class=""></li>

			
		</ItemTemplate>
			
			<FooterTemplate></ol></FooterTemplate>
		
			</asp:Repeater>
		<asp:Repeater ID="RepeaterSlider" DataSourceID="SqlDBSlider" runat="server">
			<HeaderTemplate>
		<div class="carousel-inner" role="listbox">
			
			</HeaderTemplate>
			<ItemTemplate>
				<div class="item" style="background: linear-gradient(rgba(23, 22, 23, 0.2), rgba(23, 22, 23, 0.5)), url('<%# "/Admin/Slider/Desktop/" + Eval("DeskImg") %>') no-repeat; background-size: cover;"> 
				<div class="container">
					<div class="carousel-caption">
						<h3><%# Eval("SliderTitle") %></h3>
						<p><%# Eval("SliderSubTitle") %></p>
						<a class="hvr-outline-out button2" href='<%# Eval("URL") %>'>Shop Now </a>
					</div>
				</div>
			</div>

			</ItemTemplate>
			
			<FooterTemplate></div></FooterTemplate>
			</asp:Repeater>


		<asp:SqlDataSource ID="SqlDBSlider" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" DeleteCommand="DELETE FROM [Slider] WHERE [id] = @id" InsertCommand="INSERT INTO [Slider] ([name], [show], [DeskImg], [MblImg], [CatId], [URL], [SliderTitle], [SliderSubTitle]) VALUES (@name, @show, @DeskImg, @MblImg, @CatId, @URL, @SliderTitle, @SliderSubTitle)" SelectCommand="SELECT [id], [name], [show], [DeskImg], [MblImg], [CatId], [URL], [SliderTitle], [SliderSubTitle] FROM [Slider]" UpdateCommand="UPDATE [Slider] SET [name] = @name, [show] = @show, [DeskImg] = @DeskImg, [MblImg] = @MblImg, [CatId] = @CatId, [URL] = @URL, [SliderTitle] = @SliderTitle, [SliderSubTitle] = @SliderSubTitle WHERE [id] = @id">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="show" Type="Boolean" />
                                    <asp:Parameter Name="DeskImg" Type="String" />
                                    <asp:Parameter Name="MblImg" Type="String" />
                                    <asp:Parameter Name="CatId" Type="Int32" />
                                    <asp:Parameter Name="URL" Type="String" />
                                    <asp:Parameter Name="SliderTitle" Type="String" />
                                    <asp:Parameter Name="SliderSubTitle" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="show" Type="Boolean" />
                                    <asp:Parameter Name="DeskImg" Type="String" />
                                    <asp:Parameter Name="MblImg" Type="String" />
                                    <asp:Parameter Name="CatId" Type="Int32" />
                                    <asp:Parameter Name="URL" Type="String" />
                                    <asp:Parameter Name="SliderTitle" Type="String" />
                                    <asp:Parameter Name="SliderSubTitle" Type="String" />
                                    <asp:Parameter Name="id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>


		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
		<!-- The Modal -->
    </div> 
	<!-- //banner -->
    <div class="banner_bottom_agile_info" style="padding: 5em 0;">
	    <div class="container">
            <div class="banner_bottom_agile_info_inner_w3ls">
    	           
					  <div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
						<figure class="effect-roxy">
							<a id="Banner1Url" runat="server">
							<img runat="server" id="banner1" src="/Admin/Banner/Desktop/imgboxnew2.png" alt=" " class="img-responsive" />
							<figcaption>
								<h3 id="Banner1Title" runat="server"></h3>
								<p id="Banner1ST" runat="server"></p>
							</figcaption>	
								</a>
						</figure>
					</div>
					 <div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
						<figure class="effect-roxy">
							<a id="Banner2Url" runat="server">
							<img runat="server" id="banner2" src="/Admin/Banner/Desktop/imgboxnew3.png" alt=" " class="img-responsive" />
							<figcaption>
								<h3 id="Banner2Title" runat="server"></h3>
								<p id="Banner2ST" runat="server">New Arrivals</p>
							</figcaption>	
								</a>
						</figure>
					</div>
					<div class="clearfix"></div>
		    </div> 
		 </div> 
    </div>

		
		<div class="new_arrivals_agile_w3ls_info"> 
		<div class="container">
		    <h3 class="wthree_text_info">New <span>Arrivals</span></h3>		
				<div id="horizontalTab">
						<ul class="resp-tabs-list">

							<li class="resp-tab-item resp-tab-active" aria-controls="tab_item-0" role="tab" runat="server" id="liCatName1"></li>
							<li class="resp-tab-item" aria-controls="tab_item-1" role="tab" runat="server" id="liCatName2"> </li>
							<li class="resp-tab-item" aria-controls="tab_item-2" role="tab" runat="server" id="liCatName3"> </li>
							<li class="resp-tab-item" aria-controls="tab_item-3" role="tab" runat="server" id="liCatName4"> </li>
						</ul>
					<div class="resp-tabs-container" >
					<!--/tab_one-->
						
							<asp:Repeater ID="Repeaterproducttype1" runat="server"  OnItemCommand="Repeaterproducttype1_ItemCommand">
								<HeaderTemplate>
									<div class="tab1 resp-tab-content resp-tab-content-active" style="display:block" aria-labelledby="tab_item-0">
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
										<div class="info-product-price">
											<span class="item_price bold price" ><i class="fa fa-usd" aria-hidden="true"></i><%# Eval("Price") %></span>
											<%--<del class="bold"><i class="fa fa-usd" aria-hidden="true"></i><%# Eval("MRP") %></del>--%>
										</div>
									
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
					
						<!--//tab_one-->
						<!--/tab_two-->
						
							<asp:Repeater ID="RepeaterProductType2" runat="server"  OnItemCommand="Repeaterproducttype1_ItemCommand">
								<HeaderTemplate>
									<div class="tab2 resp-tab-content" aria-labelledby="tab_item-1">
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
										<div class="info-product-price">
											<span class="item_price bold price" ><i class="fa fa-usd" aria-hidden="true"></i><%# Eval("Price") %></span>
											<%--<del class="bold"><i class="fa fa-usd" aria-hidden="true"></i><%# Eval("MRP") %></del>--%>
										</div>
									
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
										

			<asp:LinkButton ID="LinkButton1" CssClass="left-decrease" runat="server" CommandName="Increase" CommandArgument='<%# Eval("ProductSizeId")%>'><i class="fa fa-minus" ></i></asp:LinkButton>
	

   
     <input type="text" readonly="readonly" id="qty_display1" class="qty-input text-center center-quantity" value='<%# Eval("NoOfItems") %>' />
		



	   <asp:LinkButton ID="LbtnIncrement1"  CssClass="right-decrease" runat="server" CommandName="Increase" CommandArgument='<%# Eval("ProductSizeId")%>'><i class="fa fa-plus" ></i></asp:LinkButton>
	
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
					
					 <!--//tab_two-->
						
						
						
						<asp:Repeater ID="RepeaterProductType3" runat="server"  OnItemCommand="Repeaterproducttype1_ItemCommand">
								<HeaderTemplate>
									<div class="tab3 resp-tab-content" aria-labelledby="tab_item-2">
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
										<div class="info-product-price">
											<span class="item_price bold price" ><i class="fa fa-usd" aria-hidden="true"></i><%# Eval("Price") %></span>
											<%--<del class="bold"><i class="fa fa-usd" aria-hidden="true"></i><%# Eval("MRP") %></del>--%>
										</div>
									
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
										

			<asp:LinkButton ID="LinkButton1" CssClass="left-decrease" runat="server" CommandName="Increase" CommandArgument='<%# Eval("ProductSizeId")%>'><i class="fa fa-minus" ></i></asp:LinkButton>
	

   
     <input type="text" readonly="readonly" id="qty_display1" class="qty-input text-center center-quantity"  value='<%# Eval("NoOfItems") %>' />
		



	   <asp:LinkButton ID="LbtnIncrement1"  CssClass="right-decrease" runat="server" CommandName="Increase" CommandArgument='<%# Eval("ProductSizeId")%>'><i class="fa fa-plus" ></i></asp:LinkButton>
	
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
								


						
						<asp:Repeater ID="RepeaterProductType4" runat="server"  OnItemCommand="Repeaterproducttype1_ItemCommand">
								<HeaderTemplate>
									<div class="tab4 resp-tab-content" aria-labelledby="tab_item-3">
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
										<div class="info-product-price">
											<span class="item_price bold price" ><i class="fa fa-usd" aria-hidden="true"></i><%# Eval("Price") %></span>
											<%--<del class="bold"><i class="fa fa-usd" aria-hidden="true"></i><%# Eval("MRP") %></del>--%>
										</div>
									
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
										

			<asp:LinkButton ID="LinkButton1"  CssClass="left-decrease" runat="server" CommandName="Increase" CommandArgument='<%# Eval("ProductSizeId")%>'><i class="fa fa-minus" ></i></asp:LinkButton>
	

   
     <input type="text" readonly="readonly" id="qty_display1" class="qty-input text-center center-quantity"  value='<%# Eval("NoOfItems") %>' />
		



	   <asp:LinkButton ID="LbtnIncrement1"  CssClass="right-decrease" runat="server" CommandName="Increase" CommandArgument='<%# Eval("ProductSizeId")%>'><i class="fa fa-plus" ></i></asp:LinkButton>
	
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
								
							
					</div>
				</div>	
			</div>
		</div>

		<!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
	<div class="container">
		<h3 class="wthree_text_info">What's <span>Trending</span></h3>
	<div class="col-md-5 bb-grids bb-left-agileits-w3layouts">
			<a href="#">
			   <div class="bb-left-agileits-w3layouts-inner grid">
					<figure class="effect-roxy">
						
                       <a id="Banner3Url" runat="server">

							<img runat="server" id="banner3" src="/Admin/Banner/Desktop/imgboxnew4.png" alt=" " class="img-responsive" />
							<figcaption>
								<h3 id="Banner3Title" runat="server"> </h3>
								<p id="Banner3ST" runat="server"></p>
							</figcaption>	
						   </a>
						</figure>
			    </div>
			</a>
		</div>
		<div class="col-md-7 bb-grids bb-middle-agileits-w3layouts">
		      <a href="#">
		       <div class="bb-middle-agileits-w3layouts grid">
			           <figure class="effect-roxy">
						   <a id="Banner4Url" runat="server">
							<img runat="server" id="banner4" src="/Admin/Banner/Desktop/rani1.jpg" alt=" " class="img-responsive" />
                          
							<figcaption>
								<h3 id="Banner4Title" runat="server"></h3>
								<p id="Banner4ST" runat="server"></p>
							</figcaption>
							   </a>
						</figure>
		        </div>
				</a>
				<a href="#">
		      <div class="bb-middle-agileits-w3layouts forth grid">
						<figure class="effect-roxy">
							<a id="Banner5Url" runat="server">
							<img runat="server" id="banner5" src="/Admin/Banner/Desktop/rani2.jpg" alt=" " class="img-responsive"/>
							<figcaption>
								<h3 id="Banner5Title" runat="server"></h3>
								<p id="Banner5ST" runat="server"></p>
							</figcaption>	
								</a>
						</figure>
					</div>
					</a>
		<div class="clearfix"></div>
	</div>
		
		
	</div>
    </div>

	
  



			<!-- schedule-bottom -->
	<%--<div class="schedule-bottom">
		<div class="col-md-6 agileinfo_schedule_bottom_left">
			<a id="Banner6Url" runat="server">
			<img runat="server" id="banner6" src="/Admin/Banner/Desktop/imgboxnew5.png" alt=" " class="img-responsive" /></a>
		</div>
		<div class="col-md-6 agileits_schedule_bottom_right">
			<div class="w3ls_schedule_bottom_right_grid">
				<h3 id="Banner6Title" runat="server"></h3>
				<p id="Banner6ST" runat="server"></p>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-user-o" aria-hidden="true"></i>
					<h4>Customers</h4>
					<h5 class="counter">653</h5>
				</div>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-calendar-o" aria-hidden="true"></i>
					<h4>Events</h4>
					<h5 class="counter">823</h5>
				</div>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-shield" aria-hidden="true"></i>
					<h4>Awards</h4>
					<h5 class="counter">45</h5>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>--%>
<!-- //schedule-bottom -->

		<!--/grids-->
      <div class="agile_last_double_sectionw3ls" style="padding:4em;">
            <div class="col-md-6 multi-gd-img multi-gd-text ">
					<a id="Banner7Url" runat="server" ><img runat="server" id="banner7" src="Admin/Banner/Desktop/imgboxdown1.jpg" alt=" "/><h4 id="Banner7Title" runat="server"></h4>

						<p id="Banner7ST" runat="server"></p>
					</a>
					
			</div>
			 <div class="col-md-6 multi-gd-img multi-gd-text ">
					<a id="Banner8Url" runat="server"><img runat="server" id="banner8"  src="Admin/Banner/Desktop/imgboxdown2.jpg" alt=" " /><h4 id="Banner8Title" runat="server"></h4>
						<p id="Banner8ST" runat="server"></p>
					</a>
			</div>
			<div class="clearfix"></div>
	   </div>							
<!--/grids-->
	
	<!-- /we-offer -->
		<div class="sale-w3ls">
			<div class="container">
				<div class="clearfix"></div>
				<div class="clearfix"></div>
 <br />
				 <br />
				 <br />
				 <br />
				 <br />
				<a class="hvr-outline-out button2" href="/home">Shop Now </a>
			</div>
		</div>
	<!-- //we-offer -->


<!--/grids-->

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
<!--grids-->

		<%--Model cart Start--%>
	

<div class="modal fade" id="cartModal" style="overflow-x:auto;" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content" style="width:100%">
      <div class="modal-header border-bottom-0">
        <h5 class="modal-title" id="exampleModalLabel">
          Your Shopping Cart
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:black;">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
		<asp:UpdatePanel ID="UpdatePanel2"  runat="server">
			<ContentTemplate>
      
				<div class="modal-body" id="itemcart" runat="server" Visible="false" >
        <table class="table table-image" >
          <thead >
            <tr>
              <th scope="col"></th>
              <th scope="col">Product</th>
		     <th scope="col">Stock</th>
              <th scope="col">Price</th>
              <th scope="col" style="text-align:center;">Qty</th>
              <th scope="col">Total</th>
              <th scope="col">Actions</th>
            </tr>
          </thead>
			<asp:UpdatePanel ID="UpdatePanel1" runat="server">
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
              <td>$<%# Eval("Price") %></td>
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
              <td>$<%# Eval("TotalPrice") %></td>
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
        
		  <a href="/checkoutes" type="button" class="btn btn-success">Checkout</a>
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

<%--<!-- login -->
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
										<form>
											<div class="sign-up">
												<h4>Email :</h4>
												<input type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" >	
											</div>
											<div class="sign-up">
												<h4>Password :</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"  >
												
											</div>
											<div class="sign-up">
												<h4>Re-type Password :</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"  >
												
											</div>
											<div class="sign-up">
												<input type="submit" value="REGISTER NOW" >
											</div>
											
										</form>
									</div>
									<div class="login-right">
										<h3>Sign in with your account</h3>
										<form>
											<div class="sign-in">
												<h4>Email :</h4>
												<input type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}"  >	
											</div>
											<div class="sign-in">
												<h4>Password :</h4>
												<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"  >
												<a href="#">Forgot password?</a>
											</div>
											<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>Remember Me.</label>
											</div>
											<div class="sign-in">
												<input type="submit" value="SIGNIN" >
											</div>
										</form>
									</div>
									<div class="clearfix"></div>
								</div>
								<p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- //login -->--%>
<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<script src="js/modernizr.custom.js"></script>
	<!-- Custom-JavaScript-File-Links --> 

<!-- script for responsive tabs -->						
<script src="js/easy-responsive-tabs.js"></script>
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
<!-- //script for responsive tabs -->		
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
<script type="text/javascript" src="js/bootstrap.js"></script>

	<script type="text/javascript">

        function slider() {
            // Get the snackbar DIV
            var elements  = document.getElementsByClassName('item');

            // Add the "show" class to DIV
			var requiredElement = elements[0];
			requiredElement.className = "item active";
		}

    </script>


	

</body>
</html>
