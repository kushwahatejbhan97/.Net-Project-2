<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Privecy.aspx.cs" Inherits="DecoratinComplete.Privecy" %>

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
<link rel="stylesheet" type="text/css" href="/css/jquery-ui.css" />
<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="/css/myStyle.css" rel="stylesheet" type="text/css" media="all" />
<link href="/css/font-awesome.css" rel="stylesheet" /> 
	<link rel="shortcut icon" href="/images/image110.png" />

<!-- //for bootstrap working -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet" />
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css' />
<style>
	body {
		font-family: 'Open Sans', sans-serif;
		text-transform: initial;
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
                <a href="/"><img src="/images/image11.png" style="padding-top: 0px; width: 32%;" /></a>
				<%--<h1><a href="/"><span>E</span>lite Shoppy <i class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a></h1>--%>
			</div>

		

			</div>



		
		
		<!-- header-bot -->
			
        <!-- header-bot -->
		

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
								<asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server">
										  <HeaderTemplate><ul class="dropdown-menu agile_short_dropdown"></HeaderTemplate>
										  <ItemTemplate>
									<li><a href="/tag/<%# Eval("Url") %>"><%# Eval("TagName") %></a></li>
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
									<li><a href="/tag/<%# Eval("Url") %>"><%# Eval("TagName") %></a></li>
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

<!-- /banner_bottom_agile_info -->
<div class="page-head_agile_info_w3l" >
		<div class="container">
			<h3>PRIVACY POLICY</h3>
			<!--/w3_short-->
				 <div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">

						   <ul class="w3_short">
								<li><a href="/">Home</a><i>|</i></li>
								<li>PRIVACY POLICY</li>
							</ul>
						 </div>
				</div>
	   <!--//w3_short-->
	</div>
</div>
  
<div class="banner_bottom_agile_info" style="padding-top:20px;">
	    <div class="container">
			<div class="agile_ab_w3ls_info">
				
				 <div class="col-md-6 ab_pic_w3ls_text_info" style="width:100%;">
				    <h5>Privacy Policy </h5>
					<p><b>SS & Sons Pty Ltd ( Decoratin)</b> is committed to providing quality services to you and this policy outlines our ongoing obligations to you in respect of how we manage your Personal Information.</p>
					<p>We have adopted the Australian Privacy Principles (APPs) contained in the Privacy Act 1988 (Cth) (the Privacy Act). The NPPs govern the way in which we collect, use, disclose, store, secure and dispose of your Personal Information.</p>
					 <p>A copy of the Australian Privacy Principles may be obtained from the website of The Office of the Australian Information Commissioner at <a href="www.aoic.gov.au" style="color:blue;">www.aoic.gov.au</a></p>
				</div>
				  <div class="clearfix"></div>
			</div>    
             
		 </div> 
    </div>


<div class="banner_bottom_agile_info">
	    <div class="container">
			<div class="agile_ab_w3ls_info">
				
				 <div class="col-md-6 ab_pic_w3ls_text_info" style="width:100%;">
				    <h5>What is Personal Information and why do we collect it? </h5>
					<p>Personal Information is information or an opinion that identifies an individual. Examples of Personal Information we collect include: names, addresses, email addresses, phone and facsimile numbers.</p>
					<p>This Personal Information is obtained in many ways<b> including correspondence, by telephone and facsimile, by email, via our website <a href="www.decoratin.com.au" style="color:blue;"><u> www.decoratin.com.au</u></a> from your website, from media and publications, from other publicly available sources, from cookies- delete all that aren’t applicable </b>and from third parties. We don’t guarantee website links or policy of authorised third parties.</p>
					 <p>We collect your Personal Information for the primary purpose of providing our services to you, providing information to our clients and marketing. We may also use your Personal Information for secondary purposes closely related to the primary purpose, in circumstances where you would reasonably expect such use or disclosure. You may unsubscribe from our mailing/marketing lists at any time by contacting us in writing.</p>
					 <p>When we collect Personal Information we will, where appropriate and where possible, explain to you why we are collecting the information and how we plan to use it.</p>
				</div>
				  <div class="clearfix"></div>
			</div>    
             
		 </div> 
    </div>


<div class="banner_bottom_agile_info">
	    <div class="container">
			<div class="agile_ab_w3ls_info">
				
				 <div class="col-md-6 ab_pic_w3ls_text_info" style="width:100%;">
				    <h5>Sensitive Information</h5>
					<p>Sensitive information is defined in the Privacy Act to include information or opinion about such things as an individual's racial or ethnic origin, political opinions, membership of a political association, religious or philosophical beliefs, membership of a trade union or other professional body, criminal record or health information.</p>
					<p>Sensitive information will be used by us only:
					 
						<p> <span class="fa fa-circle" style="font-size: 8px;"></span> For the primary purpose for which it was obtained</p>
						<p> <span class="fa fa-circle" style="font-size: 8px;"></span> For a secondary purpose that is directly related to the primary purpose</p>
						<p> <span class="fa fa-circle" style="font-size: 8px;"></span> With your consent; or where required or authorised by law.</p>
					
					 </p>
				</div>
				  <div class="clearfix"></div>
			</div>    
             
		 </div> 
    </div>


<div class="banner_bottom_agile_info">
	    <div class="container">
			<div class="agile_ab_w3ls_info">
				
				 <div class="col-md-6 ab_pic_w3ls_text_info" style="width:100%;">
				    <h5>Third Parties</h5>
					<p>Where reasonable and practicable to do so, we will collect your Personal Information only from you. However, in some circumstances we may be provided with information by third parties. In such a case we will take reasonable steps to ensure that you are made aware of the information provided to us by the third party.</p>
					
				</div>
				  <div class="clearfix"></div>
			</div>    
             
		 </div> 
    </div>

		<div class="banner_bottom_agile_info">
	    <div class="container">
			<div class="agile_ab_w3ls_info">
				
				 <div class="col-md-6 ab_pic_w3ls_text_info" style="width:100%;">
				    <h5>Disclosure of Personal Information</h5>
					
					<p>Your Personal Information may be disclosed in a number of circumstances including the following:
					 
						<p> <span class="fa fa-circle" style="font-size: 8px;"></span> Third parties where you consent to the use or disclosure; and</p>
						<p> <span class="fa fa-circle" style="font-size: 8px;"></span> Where required or authorised by law.</p>
						
					
					 </p>
				</div>
				  <div class="clearfix"></div>
			</div>    
             
		 </div> 
    </div>


		<div class="banner_bottom_agile_info">
	    <div class="container">
			<div class="agile_ab_w3ls_info">
				
				 <div class="col-md-6 ab_pic_w3ls_text_info" style="width:100%;">
				    <h5>Security of Personal Information</h5>
					<p>Your Personal Information is stored in a manner that reasonably protects it from misuse and loss and from unauthorized access, modification or disclosure.</p>
					 <p>When your Personal Information is no longer needed for the purpose for which it was obtained, we will take reasonable steps to destroy or permanently de-identify your Personal Information. However, most of the Personal Information is or will be stored in client files which will be kept by us for a minimum of 7 years.</p>
					
				</div>
				  <div class="clearfix"></div>
			</div>    
             
		 </div> 
    </div>


		<div class="banner_bottom_agile_info">
	    <div class="container">
			<div class="agile_ab_w3ls_info">
				
				 <div class="col-md-6 ab_pic_w3ls_text_info" style="width:100%;">
				    <h5>Access to your Personal Information</h5>
					 <p>You may access the Personal Information we hold about you and to update and/or correct it, subject to certain exceptions. If you wish to access your Personal Information, please contact us in writing.</p>
					 <p><b>SS & Sons (Decoratin)</b> will not charge any fee for your access request, but may charge an administrative fee for providing a copy of your Personal Information.</p>
					 <p>In order to protect your Personal Information we may require identification from you before releasing the requested information.</p>
					
					 
					
				</div>
				  <div class="clearfix"></div>
			</div>    
             
		 </div> 
    </div>

		<div class="banner_bottom_agile_info">
	    <div class="container">
			<div class="agile_ab_w3ls_info">
				
				 <div class="col-md-6 ab_pic_w3ls_text_info" style="width:100%;">
				    <h5>Maintaining the Quality of your Personal Information</h5>
					 <p>It is an important to us that your Personal Information is up to date. We  will  take reasonable steps to make sure that your Personal Information is accurate, complete and up-to-date. If you find that the information we have is not up to date or is inaccurate, please advise us as soon as practicable so we can update our records and ensure we can continue to provide quality services to you.

</p>
					
					 
					
				</div>
				  <div class="clearfix"></div>
			</div>    
             
		 </div> 
    </div>



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
