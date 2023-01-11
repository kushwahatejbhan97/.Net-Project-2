<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="balajiEstate._default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sri Sai Balaji Estates</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="shortcut icon" href="favicon.png" type="image/x-icon">
    <link rel="icon" href="favicon.png" type="image/x-icon">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <!-- Font awesome styles -->
    <link rel="stylesheet" href="apartment-font/css/font-awesome.min.css">
    <!-- Custom styles -->
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,300,300italic,500,500italic,700,700italic&amp;subset=latin,latin-ext'>
    <link rel="stylesheet" type="text/css" href="css/plugins.css">
    <link rel="stylesheet" type="text/css" href="css/apartment-layout.css">
    <link id="skin" rel="stylesheet" type="text/css" href="css/apartment-colors-blue.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-rtl.css">
    <link rel="stylesheet" type="text/css" href="css/rtl.css">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="loader-bg">
    </div>
    <div id="wrapper">
        <!-- Page header -->
        <header>
		<div class="top-bar-wrapper">
			<div class="container top-bar">
				<div class="row">
					<div class="col-xs-7 col-sm-9">
						<div class="top-mail pull-left hidden-xs">
							<span class="top-icon-circle">
								<i class="fa fa-envelope fa-sm"></i>
							</span>
							<span class="top-bar-text">balajiestateshyd@gmail.com</span>
						</div>
						<div class="top-phone pull-left hidden-xxs">
							<span class="top-icon-circle">
								<i class="fa fa-phone"></i>
							</span>
							<span class="top-bar-text">8897731126 | 9347988333</span>
						</div>
						<div class="top-localization pull-left hidden-sm hidden-md hidden-xs">
							<span class="top-icon-circle pull-left">
								<i class="fa fa-map-marker"></i>
							</span>
							<span class="top-bar-text">3rd Floor, Super Bazar Chowrasta Malakpet, HYD.</span>
						</div>
					</div>
					<div class="col-xs-5 col-sm-3">
						<div class="top-social-last pull-right" >
							<a class="top-icon-circle" href="#">
								<i class="fa fa-twitter"></i>
							</a>
						</div>
						<div class="top-social pull-right">
							<a class="top-icon-circle" href="#">
								<i class="fa fa-google-plus"></i>
							</a>
						</div>
						<div class="top-social pull-right">
							<a class="top-icon-circle" href="#">
								<i class="fa fa-facebook"></i>
							</a>
						</div>
						
						
						
					</div>
				</div>
			</div><!-- /.top-bar -->	
		</div><!-- /.Page top-bar-wrapper -->	
		<nav class="navbar main-menu-cont">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar icon-bar1"></span>
						<span class="icon-bar icon-bar2"></span>
						<span class="icon-bar icon-bar3"></span>
					</button>
					<a href="default.aspx" title="" class="navbar-brand">
						<img src="img/ssbalajilogo1.png" alt="Estate " class="img-responsive "  />
					</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="default.aspx" >Home</a>
						</li>
						<li >
							<a href="aboutus.aspx" >About Us</a>
							
						</li>
						<li class="dropdown">
							<a href="ourProjects.aspx" >Projects</a>
							<ul class="dropdown-menu">
                                <li >
									<a tabindex="-1" href="New-Project.aspx">New Projects</a>
								</li>

                                <li>
									<a tabindex="-1" href="runningProjects.aspx">Running Projects</a>
								</li>
								
								
								<li>
									<a tabindex="-1" href="upComingProject.aspx">UpComing Projects</a>
								</li>
                                <li >
									<a tabindex="-1" href="completedProjects.aspx">Completed Projects</a>
								</li>
							</ul>
						</li>
                        <li>
                            <a href="services.aspx" >Services</a>
                        </li>
                        <li class="dropdown">
							<a href="#" >Media Center</a>
							<ul class="dropdown-menu">
                                <li>
									<a tabindex="-1" href="gallery.aspx">Image Gallery</a>
								</li>
								<li>
									<a tabindex="-1" href="videoGallery.aspx">Video Gallery</a>
								</li>
                            </ul>
						</li>
                        <li >
							<a href="career.aspx" >Career</a>
							
						</li>
                        <li >
							<a href="downloads.aspx" class="special-color">Downloads</a>
							
						</li>
                        <li >
							<a href="contactus.aspx" >Contact Us</a>
							
						</li>
						
					</ul>
				</div>
			</div>
		</nav><!-- /.mani-menu-cont -->	
    </header>
        <section class="section-dark no-padding">
		<!-- Slider main container -->
		<div id="swiper-gallery" class="swiper-container">
			<!-- Additional required wrapper -->
			<div class="swiper-wrapper">
				<!-- Slides -->
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/1.jpg" ></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated fadeInUp gallery-slide-desc-1">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-left">
											<h5 class="subtitle-margin">Welcome to</h5>
											<h3>Sri Sai Balaji Estates<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-left hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
										
									
								</div>	
							</div>			
						</div>
					</div>
					
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/2.jpg" ></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-2">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-left">
											<h5 class="subtitle-margin">Welcome to</h5>
											<h3>Sri Sai Balaji Estates<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-left hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
										
									
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/3.jpg" ></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-3">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-left">
											<h5 class="subtitle-margin">Welcome to</h5>
											<h3>Sri Sai Balaji Estates<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-left hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
										
									
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/4.jpg" data-sub-html="<strong>this is a caption 1</strong><br/>Second line of the caption"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-4">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-left">
											<h5 class="subtitle-margin">Welcome to</h5>
											<h3>Sri Sai Balaji Estates<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-left hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
										
									
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/5.jpg" data-sub-html="<strong>this is a caption 1</strong><br/>Second line of the caption"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-5">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-left">
											<h5 class="subtitle-margin">Welcome to</h5>
											<h3>Sri Sai Balaji Estates<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-left hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
										
									
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/6.jpg" data-sub-html="<strong>this is a caption 1</strong><br/>Second line of the caption"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-6">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-left">
											<h5 class="subtitle-margin">Welcome to</h5>
											<h3>Sri Sai Balaji Estates<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-left hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
										
									
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/7.jpg" data-sub-html="<strong>this is a caption 1</strong><br/>Second line of the caption"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-7">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-left">
											<h5 class="subtitle-margin">Welcome to</h5>
											<h3>Sri Sai Balaji Estates<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-left hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
										
									
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/8.jpg" data-sub-html="<strong>this is a caption 1</strong><br/>Second line of the caption"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-8">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-left">
											<h5 class="subtitle-margin">Welcome to</h5>
											<h3>Sri Sai Balaji Estates<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-left hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
										
									
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/9.jpg" data-sub-html="<strong>this is a caption 1</strong><br/>Second line of the caption"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-9">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-left">
											<h5 class="subtitle-margin">Welcome to</h5>
											<h3>Sri Sai Balaji Estates<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-left hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
										
									
								</div>	
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slide-bg swiper-lazy" data-background="images/slides/10.jpg" data-sub-html="<strong>this is a caption 1</strong><br/>Second line of the caption"></div>
					<!-- Preloader image -->
					<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					<div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-md-9 col-lg-8 slide-desc-col animated gallery-slide-desc-10">
								<div class="gallery-slide-cont">
									<div class="gallery-slide-cont-inner">	
										<div class="gallery-slide-title pull-left">
											<h5 class="subtitle-margin">Welcome to</h5>
											<h3>Sri Sai Balaji Estates<span class="special-color">.</span></h3>
										</div>
										<div class="gallery-slide-estate pull-left hidden-xs">
											<i class="fa fa-home"></i>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
										
									
								</div>	
							</div>
						</div>
					</div>
				</div>

			</div>
			
			
			
		</div>
		
    </section>
        <section class="thumbs-slider section-both-shadow">
		<div class="container">
			<div class="row">
				<div class="col-xs-1">
					<a href="#" class="thumb-box thumb-next pull-left"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont" style="margin-top:35%">&#xe800;</i></div></a>
				</div>
				<div class="col-xs-10">
					<!-- Slider main container -->
					<div id="swiper-thumbs" class="swiper-container">
						<!-- Additional required wrapper -->
						<div class="swiper-wrapper">
							<!-- Slides -->
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m1.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m2.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m3.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m4.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m5.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m6.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m7.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m8.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m9.jpg" alt="">
							</div>
							<div class="swiper-slide">
								<img class="slide-thumb" src="images/slides/m10.jpg" alt="">
							</div>
							
						</div>
					</div>
				</div>
				<div class="col-xs-1">
					<a href="#" class="thumb-box thumb-prev pull-right"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont" style="margin-top:35%">&#xe802;</i></div></a>
				</div>
			</div>
		</div>
	</section>
        <%--mid Content Here--%>
        <section class="section-light bottom-padding-45 ">
		<div class="container">
			<div class="row">
				
				<div class="col-sm-6 col-lg-12">
					<div class="feature wow fadeInUp" id="feature2">
						<div class="feature-icon center-block"><i class="fa fa-home"></i></div>
						<div class="feature-text">
							
							<h3>Welcome to a fresh new world of <span class="special-color">SRI SAI BALAJI ESTATES</span></h3>
							<div class="title-separator center-block feature-separator"></div>
							<p style="font-size:15px">The world greeting magnanimous spaces and verdant greenery <span class="special-color">!</span> Accentuating floating water bodies and heavenly fragrances <span class="special-color">!</span> The world enthralling laidback and grand villas articulated with the finest of international luxury and traditional Vastu. A sheer experience of delight created to mark a fresh imprint in your memories and begin life anew.
                            </p>
                            <div class="button margin-top-30">	
							<a href="aboutus.aspx" class="button-alternative button-shadow">
								<span>read more</span>
								<div class="button-triangle"></div>
								<div class="button-triangle2"></div>
								<div class="button-icon"><i class="fa fa-search"></i></div>
							</a>
						</div>
						</div>
					</div>
				</div>			
				
			</div>
		</div>
    </section>
        

   <section class="featured-offers parallax">
		
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-9">
					<h5 class="subtitle-margin second-color">highly recommended</h5>
							<h1 class="second-color">Our Featured Projects<span class="special-color">.</span></h1>
				</div>
				<div class="col-xs-12 col-sm-3">
					<a href="#" class="navigation-box navigation-box-next" id="featured-offers-owl-next"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont" style="margin-top:35%">&#xe802;</i></div></a>
					<a href="#" class="navigation-box navigation-box-prev" id="featured-offers-owl-prev"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont" style="margin-top:35%">&#xe800;</i></div></a>								
				</div>
				<div class="col-xs-12">
					<div class="title-separator-secondary"></div>
				</div>
			</div>
		</div>
		<div class="featured-offers-container">
			<div class="owl-carousel" id="featured-offers-owl">
			
				<div class="featured-offer-col">
					<div class="featured-offer-front">
						<div class="featured-offer-photo">
						<a href="SREE-ANANDA-SAI-NAGAR.aspx">	<img src="newprojectnamesreeanandasainagar/114A3338.JPG" alt="sree ananda sai nagar" /></a>
							<div class="type-container">
								<div class="estate-type">New</div>
								<div class="transaction-type">Project</div>
							</div>
						</div>
					<a href="SREE-ANANDA-SAI-NAGAR.aspx">	<div class="featured-offer-text">
							<h4 class="featured-offer-title">Sree Ananda Sai Nagar</h4>
                            <br />
							<p>Sri Lakshmi Narasimha Nagar is located in Gadya Gowraram.
                            </p>
						<br />
						<br />
						</div></a>
						
					</div>
					
					
				</div>

            <div class="featured-offer-col">
					<div class="featured-offer-front">
						<div class="featured-offer-photo">
						<a href="NewProject2.aspx">	<img src="img/laxm.jpg" alt="" /></a>
							<div class="type-container">
								<div class="estate-type">New</div>
								<div class="transaction-type">Project</div>
							</div>
						</div>
					<a href="NewProject2.aspx">	<div class="featured-offer-text">
							<h4 class="featured-offer-title">Sri Lakshmi Nagar</h4>
                            <br />
							<p>Sri Lakshmi Narasimha Nagar is located Near RAIGIRI, <br />Mothkur Road, Yadadri Dist., Telangana - 508116
                            </p>
						</div></a>
						
					</div>
					
					
				</div>

                <div class="featured-offer-col">
					<div class="featured-offer-front">
						<div class="featured-offer-photo">
						<a href="New-Project.aspx">	<img src="img/SriLakshmimain.JPG" alt="" /></a>
							<div class="type-container">
								<div class="estate-type">New</div>
								<div class="transaction-type">Project</div>
							</div>
						</div>
					<a href="New-Project.aspx">	<div class="featured-offer-text">
							<h4 class="featured-offer-title">Sri Lakshmi Narasimha Nagar</h4>
							<p>Sri Lakshmi Narasimha Nagar is located Near RAIGIRI, <br />Mothkur Road, Yadadri Dist., Telangana - 508116
                            </p>
						</div></a>
						
					</div>
					
					
				</div>

				<div class="featured-offer-col">
					<div class="featured-offer-front">
						<div class="featured-offer-photo">
							<a href="completedProjects.aspx">	<img src="img/2_2.jpg" alt="" /></a>
							<div class="type-container">
								<div class="estate-type">Completed</div>
								<div class="transaction-type">Project</div>
							</div>
						</div>
						<a href="completedProjects.aspx"><div class="featured-offer-text">
							<h4 class="featured-offer-title">Balaji Homes</h4>
							<p>Balaji Homes is located Near GURRAMGUDA, Nadergul, Hyderabad EAST.<br />
                               Inaugurated By : SRI T. Devender Goud, on 10-01-2015.
                            </p>
						</div></a>
						
					</div>
					
					
				</div>
				<div class="featured-offer-col">
					<div class="featured-offer-front">
						<div class="featured-offer-photo">
							<a href="runningProjects.aspx"><img src="img/100_2.jpg" alt="" /></a>
							<div class="type-container">
								<div class="estate-type">Running</div>
								<div class="transaction-type">Project</div>
							</div>
						</div>
						<a href="runningProjects.aspx"><div class="featured-offer-text">
							<h4 class="featured-offer-title">Sri Balaji Nagar</h4>
							<p>Sri Balaji Nagar is Located Near Ibrahimpatnam,<br /> 
                                Opp. Tirumala Dairy Products, <br />
                                Gungal, Yachram Mandal,<br />
                                Hyderabad.</p>
						</div></a>
						
					</div>
					
					
				</div>
				<div class="featured-offer-col">
					<div class="featured-offer-front">
						<div class="featured-offer-photo">
							<a href="upComingProject.aspx"><img src="img/3.jpg" alt="" /></a>
							<div class="type-container">
								<div class="estate-type">Running</div>
								<div class="transaction-type">Project</div>
							</div>
						</div>
						<a href="upComingProject.aspx"><div class="featured-offer-text">
							<h4 class="featured-offer-title">Sri Tirumala Nagar (Gungal)</h4>
							<p>It Is Located Next to Gurunanak Engineering College,<br />
                                Agapally Village, Yacharam Mandal, Hyderabad.
                                
                            </p>
						</div></a>
						
					</div>
					
					
				</div>
			</div>
		</div>
    </section>
       
       
       
        <section class="team section-light section-both-shadow">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-9">
					<h5 class="subtitle-margin">Balaji Estates</h5>
							<h1>Features<span class="special-color">.</span></h1>
				</div>
				<div class="col-xs-12 col-sm-3">
					<a href="#" class="navigation-box navigation-box-next" id="team-owl-next"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont" style="margin-top:35%">&#xe802;</i></div></a>
					<a href="#" class="navigation-box navigation-box-prev"  id="team-owl-prev"><div class="navigation-triangle"></div><div class="navigation-box-icon"><i class="jfont" style="margin-top:35%">&#xe800;</i></div></a>
				</div>
				<div class="col-xs-12">
					<div class="title-separator-primary"></div>
				</div>
			</div>
		</div>
		<div class="team-container">
			<div class="owl-carousel" id="team-owl">
				<div class="team-member-cont">
					<div class="team-member">
						<div class="team-photo">
							<img src="img/a1.jpg" alt="" />
							<div class="big-triangle" style="border-color: transparent transparent #14212F transparent;"></div>
							<div class="big-triangle2"></div>
							<a class="big-icon big-icon-plus" href="#"><i class="jfont">&#xe804;</i></a>
							<div class="team-description">
								<div>
									<p class="team-text">
									    We take care about all the VASTU related facts in all the phases of planning and development of our Project, 
                                        So that you can get a vastu perfect environment to live in.
									</p>
							  </div>
							</div>
						</div>
						<div class="team-name">
							<h5></h5>
							<h4>100% Vastu<span class="special-color">.</span></h4>
						</div>
					</div>
				</div>
                <div class="team-member-cont">
					<div class="team-member">
						<div class="team-photo">
							<img src="img/a2.jpg" alt="" />
							<div class="big-triangle" style="border-color: transparent transparent #14212F transparent;"></div>
							<div class="big-triangle2"></div>
							<a class="big-icon big-icon-plus" href="#"><i class="jfont">&#xe804;</i></a>
							<div class="team-description">
								<div>
									<p class="team-text">
									    As per the incereasing crime rate and for the safety of your health & assets, we also include all the security related
                                        equipiments and 24x7 monitoring services in our project plan.
									</p>
							  </div>
							</div>
						</div>
						<div class="team-name">
							<h5></h5>
							<h4>24x7 Security<span class="special-color">.</span></h4>
						</div>
					</div>
				</div>
                <div class="team-member-cont">
					<div class="team-member">
						<div class="team-photo">
							<img src="img/a3.jpg" alt="" />
							<div class="big-triangle" style="border-color: transparent transparent #14212F transparent;"></div>
							<div class="big-triangle2"></div>
							<a class="big-icon big-icon-plus" href="#"><i class="jfont">&#xe804;</i></a>
							<div class="team-description">
								<div>
									<p class="team-text">
									    An awsome and attractive view always make you feel happy, so we specially take care to decorate the entire place with beautiful 
                                        parks and landscapes.
									</p>
							  </div>
							</div>
						</div>
						<div class="team-name">
							<h5></h5>
							<h4>Parks & Landscape<span class="special-color">.</span></h4>
						</div>
					</div>
				</div>
                <div class="team-member-cont">
					<div class="team-member">
						<div class="team-photo">
							<img src="img/a4.jpg" alt="" />
							<div class="big-triangle" style="border-color: transparent transparent #14212F transparent;"></div>
							<div class="big-triangle2"></div>
							<a class="big-icon big-icon-plus" href="#"><i class="jfont">&#xe804;</i></a>
							<div class="team-description">
								<div>
									<p class="team-text">
									    We design our project in a planned way, so that the roads will avaliable to every corner of the campus.
									</p>
							  </div>
							</div>
						</div>
						<div class="team-name">
							<h5></h5>
							<h4>30 ft / 60 ft Road<span class="special-color">.</span></h4>
						</div>
					</div>
				</div>
                <div class="team-member-cont">
					<div class="team-member">
						<div class="team-photo">
							<img src="img/a5.jpg" alt="" />
							<div class="big-triangle" style="border-color: transparent transparent #14212F transparent;"></div>
							<div class="big-triangle2"></div>
							<a class="big-icon big-icon-plus" href="#"><i class="jfont">&#xe804;</i></a>
							<div class="team-description">
								<div>
									<p class="team-text">
									    We specially focus to make the environment Pollution Free by Avenue plantation, so that you can breath in a pollution free environment.
									</p>
							  </div>
							</div>
						</div>
						<div class="team-name">
							<h5></h5>
							<h4>Pollution Free<span class="special-color">.</span></h4>
						</div>
					</div>
				</div>
				<div class="team-member-cont">
					<div class="team-member">
						<div class="team-photo">
							<img src="img/a6.jpg" alt="" />
							<div class="big-triangle" style="border-color: transparent transparent #14212F transparent;"></div>
							<div class="big-triangle2"></div>
							<a class="big-icon big-icon-plus" href="#"><i class="jfont">&#xe804;</i></a>
							<div class="team-description">
								<div>
									<p class="team-text">
									    We provide 24 Hour Backups for Electricity.
									</p>
							  </div>
							</div>
						</div>
						<div class="team-name">
							<h5></h5>
							<h4>Electricity<span class="special-color">.</span></h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>




    	<section class="section-light ">
		<div class="container page-blog-grid1-container ">
			<div class="row">
				<div class="col-xs-12 col-sm-9 ">
					<h5 class="subtitle-margin">Our Neighbour</h5>
							<h1>Development Around Our Ventures<span class="special-color">.</span></h1>
				</div>
				
				<div class="col-xs-12">
					<div class="title-separator-primary"></div>
				</div>
                <div class="row ">
				
				
				<div class="col-xs-12 col-lg-6 blog-grid1-left-col margin-top-45">
					<article class="blog-grid1-item zoom-cont">
						<figure class="pull"><a ><img src="img/sur2.jpg" alt=""  /></a></figure>
						<div class="blog-grid1-post-content">
							
							<a class="blog-grid1-title"><h4>Around 20 Engineering colleges is neighbour to our upcoming venture</h4></a>
							<div class="blog-grid1-separator"></div>
							
							<a  class="blog-grid1-button">
								<span>Our Neighbour</span>
								<div class="blog-grid1-triangle"></div>
							</a>
						</div>
					</article>
				</div>
				<div class="col-xs-12 col-lg-6 blog-grid1-right-col margin-top-45">
					<article class="blog-grid1-item zoom-cont">
						<div class="blog-grid1-post-content">
							<a  class="blog-grid1-title"><h4>Around 40+ MBA | MCA colleges are situated near to our ventures</h4></a>
							<div class="blog-grid1-separator"></div>
							<a  class="blog-grid1-button-right">
								<span>Our Neighbour</span>
								<div class="blog-grid1-triangle"></div>
							</a>
						</div>
						<figure class=""><a ><img src="img/sur3.jpg" alt=""  /></a></figure>

					</article>
				</div>
				<div class="col-xs-12 col-lg-6 blog-grid1-left-col">
					<article class="blog-grid1-item zoom-cont">
						<div class="blog-grid1-post-content">
							
							<a  class="blog-grid1-title"><h4>After our site 2000 acres "Filmcity" Proposal at Rachakonda </h4></a>
							<div class="blog-grid1-separator"></div>
							<a  class="blog-grid1-button-right">
								<span>Our Neighbour</span>
								<div class="blog-grid1-triangle"></div>
							</a>
						</div>
						<figure class=""><a ><img src="img/sur1.jpg" alt=""  /></a></figure>
					</article>
				</div>
				<div class="col-xs-12 col-lg-6 blog-grid1-right-col">
					<article class="blog-grid1-item zoom-cont">
						<figure class=""><a ><img src="img/sur4.jpg" alt=""  /></a></figure>
						<div class="blog-grid1-post-content">
							<a  class="blog-grid1-title"><h4>Near Ibrahimpatnam BDL, BEL, NGS, Octops, Plastic Industries</h4></a>
							<div class="blog-grid1-separator"></div>
							<a class="blog-grid1-button">
								<span>Our Neighbour</span>
								<div class="blog-grid1-triangle"></div>
							</a>
						</div>
					</article>
				</div>
				<div class="col-xs-12 col-lg-6 blog-grid1-left-col">
					<article class="blog-grid1-item zoom-cont">
						<figure class=""><a ><img src="img/sur5.JPG" alt="" /></a></figure>
						<div class="blog-grid1-post-content">
							<a  class="blog-grid1-title"><h4>Near Eliminedu - 100 acres Total, Euro Space Sez is situated.</h4></a>
							<div class="blog-grid1-separator"></div>
							<a class="blog-grid1-button">
								<span>Our Neighbour</span>
								<div class="blog-grid1-triangle"></div>
							</a>
						</div>
					</article>
				</div>
				<div class="col-xs-12 col-lg-6 blog-grid1-right-col">
					<article class="blog-grid1-item zoom-cont">
						<div class="blog-grid1-post-content">
							<a  class="blog-grid1-title"><h4>Near Adibatla - TCS, Cognizent, Tata Advanced System, are situated.</h4></a>
							<div class="blog-grid1-separator"></div>
							<a class="blog-grid1-button-right">
								<span>Our Neighbour</span>
								<div class="blog-grid1-triangle"></div>
							</a>
						</div>
						<figure class=""><a><img src="img/sur6.jpg" alt="" /></a></figure>
					</article>
				</div>
				
				
				
			</div>
			</div>
		</div>
	</section>
       



        <footer class="large-cont">
		<div class="container">
			<div class="row">
            <div class="col-xs-12 col-sm-6 col-lg-3">
                   

					<h4 class="second-color">Our Moto<span class="special-color">.</span></h4>
                    <div class="footer-title-separator"></div>
                    <article>
						<a href="#"><img src="img/event1.jpg" alt="" class="footer-blog-image" /></a>
						<div class="footer-blog-title"><a href="#">Our Moto is customer service & satisfaction at the Door step.</a></div>
						<div class="clearfix"></div>					
					</article>
                     <a href="contactus.aspx" class="button-primary margin-top-45">
						<span>Contact US</span>
						<div class="button-triangle"></div>
						<div class="button-triangle2"></div>
						<div class="button-icon"><i class="fa fa-search"></i></div>
					</a>
					
				</div>
				
				<div class="col-xs-6 col-sm-6 col-lg-3">
					<h4 class="second-color">quick links<span class="special-color">.</span></h4>
					<div class="footer-title-separator"></div>
					<ul class="footer-ul">
						<li><span class="custom-ul-bullet"></span><a href="default.aspx">Home</a></li>
						<li><span class="custom-ul-bullet"></span><a href="aboutus.aspx">About Us</a></li>
						<li><span class="custom-ul-bullet"></span><a href="ourProjects.aspx">Our Projects</a></li>
						<li><span class="custom-ul-bullet"></span><a href="upComingProject.aspx">Up Comming Projects</a></li>
						<li><span class="custom-ul-bullet"></span><a href="runningProjects.aspx">Ongoing projects</a></li>
						<li><span class="custom-ul-bullet"></span><a href="completedProjects.aspx">completed projects</a></li>
					</ul>
				</div>
                <div class="col-xs-6 col-sm-6 col-lg-3">
					<h4 class="second-color">quick links<span class="special-color">.</span></h4>
					<div class="footer-title-separator"></div>
					<ul class="footer-ul">
						<li><span class="custom-ul-bullet"></span><a href="services.aspx">Our Services</a></li>
						<li><span class="custom-ul-bullet"></span><a href="gallery.aspx">Gallery</a></li>
						<li><span class="custom-ul-bullet"></span><a href="career.aspx">Career</a></li>
						<li><span class="custom-ul-bullet"></span><a href="downloads.aspx">Registration Form</a></li>
						<li><span class="custom-ul-bullet"></span><a href="downloads.aspx">Application Form</a></li>
						<li><span class="custom-ul-bullet"></span><a href="contactus.aspx">Contact US</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-sm-6 col-lg-3">
					<h4 class="second-color">contact us<span class="special-color">.</span></h4>
					<div class="footer-title-separator"></div>
					<p class="footer-p" style="color:White">Feel free to contact us any time</p>
					<address>
						<span><i class="fa fa-map-marker"></i>16-2-705/10/A/B, Super Bazar, Chowrasta Malakpet, Hyderabad</span>
						<div class="footer-separator"></div>
						<span><i class="fa fa-envelope fa-sm"></i><a href="#">balajiestateshyd@gmail.com</a></span>
						<div class="footer-separator"></div>
                        <span><i class="fa fa-phone"></i>Contact no  :  8897731126</span><br />
                        <span><i class="fa fa-phone"></i>Contact no  :  9347988333</span><br />
					</address>
					<div class="clear"></div>
				</div>
				
			</div>
		</div>
    </footer>
        <footer class="small-cont">
		<div class="container">
			<div class="row">
            <div class="col-xs-12 col-md-9 footer-copyrights">
					&copy; Copyright 2016 <a href="" target="blank">Sri Sai Balaji Estates</a>. All rights reserved.<a href="http://dexterous.in/" target="blank">Dexterous Technology & Web-Services</a>.
				</div>
				<div class="col-xs-12 col-md-3 small-cont">
					<%--<img src="images/logo-light.png" alt="" class="img-responsive footer-logo" />--%>
				</div>
				
			</div>
		</div>
	</footer>
    </div>
    <!-- Move to top button -->
    <div class="move-top">
        <div class="big-triangle-second-color">
        </div>
        <div class="big-icon-second-color">
            <i class="jfont fa-lg" >&#xe803;</i></div>
    </div>
    <!-- Login modal -->
    <div class="modal fade apartment-modal" id="login-modal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <div class="modal-title">
                        <h1>
                            Login<span class="special-color">.</span></h1>
                        <div class="short-title-separator">
                        </div>
                    </div>
                    <input name="login" type="email" class="input-full main-input" placeholder="Email" />
                    <input name="password" type="password" class="input-full main-input" placeholder="Your Password" />
                    <a href="my-profile.html" class="button-primary button-shadow button-full"><span>Sing
                        In</span>
                        <div class="button-triangle">
                        </div>
                        <div class="button-triangle2">
                        </div>
                        <div class="button-icon">
                            <i class="fa fa-user"></i>
                        </div>
                    </a><a href="#" class="forgot-link pull-right">Forgot your password?</a>
                    <div class="clearfix">
                    </div>
                    <p class="login-or">
                        OR</p>
                    <a href="#" class="facebook-button"><i class="fa fa-facebook"></i><span>Login with Facebook</span>
                    </a><a href="#" class="google-button margin-top-15"><i class="fa fa-google-plus"></i>
                        <span>Login with Google</span> </a>
                    <p class="modal-bottom">
                        Don't have an account? <a href="#" class="register-link">REGISTER</a></p>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <!-- Register modal -->
    <div class="modal fade apartment-modal" id="register-modal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <div class="modal-title">
                        <h1>
                            Register<span class="special-color">.</span></h1>
                        <div class="short-title-separator">
                        </div>
                    </div>
                    <input name="first-name" type="text" class="input-full main-input" placeholder="Frist name" />
                    <input name="last-name" type="text" class="input-full main-input" placeholder="Last name" />
                    <input name="email" type="email" class="input-full main-input" placeholder="Email" />
                    <input name="password" type="password" class="input-full main-input" placeholder="Password" />
                    <input name="repeat-password" type="password" class="input-full main-input" placeholder="Repeat Password" />
                    <a href="my-profile.html" class="button-primary button-shadow button-full"><span>Sing
                        up</span>
                        <div class="button-triangle">
                        </div>
                        <div class="button-triangle2">
                        </div>
                        <div class="button-icon">
                            <i class="fa fa-user"></i>
                        </div>
                    </a>
                    <div class="clearfix">
                    </div>
                    <p class="login-or">
                        OR</p>
                    <a href="#" class="facebook-button"><i class="fa fa-facebook"></i><span>Sing Up with
                        Facebook</span> </a><a href="#" class="google-button margin-top-15"><i class="fa fa-google-plus">
                        </i><span>Sing Up with Google</span> </a>
                    <p class="modal-bottom">
                        Already registered? <a href="#" class="login-link">SING IN</a></p>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <!-- Forgotten password modal -->
    <div class="modal fade apartment-modal" id="forgot-modal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <div class="modal-title">
                        <h1>
                            Forgot your password<span class="special-color">?</span></h1>
                        <div class="short-title-separator">
                        </div>
                    </div>
                    <p class="negative-margin forgot-info">
                        Instert your account email address.<br />
                        We will send you a link to reset your password.</p>
                    <input name="login" type="email" class="input-full main-input" placeholder="Your email" />
                    <a href="my-profile.html" class="button-primary button-shadow button-full"><span>Reset
                        password</span>
                        <div class="button-triangle">
                        </div>
                        <div class="button-triangle2">
                        </div>
                        <div class="button-icon">
                            <i class="fa fa-user"></i>
                        </div>
                    </a>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <!-- jQuery  -->
    <script type="text/javascript" src="js/jQuery/jquery.min.js"></script>
    <script type="text/javascript" src="js/jQuery/jquery-ui.min.js"></script>
    <!-- Bootstrap-->
    <script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
    <!-- Google Maps -->
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDfDCV5hXiPamCIT8_vwGXuzimLQ9MF76g&amp;sensor=false&amp;libraries=places"></script>
    <!-- plugins script -->
    <script type="text/javascript" src="js/plugins.js"></script>
    <!-- template scripts -->
    <script type="text/javascript" src="mail/validate.js"></script>
    <script type="text/javascript" src="js/apartment.js"></script>
    <!-- google maps initialization -->
    <script type="text/javascript">
        google.maps.event.addDomListener(window, 'load', init);
        function init() {
            mapInit(17.2950517, 78.5618135, "featured-map1", "images/pin-house.png", false);
            mapInit(17.1062981, 78.6610472, "featured-map2", "images/pin-apartment.png", false);
            mapInit(17.1107481, 78.6681911, "featured-map3", "images/pin-land.png", false);
           

          
        }
	</script>
</body>
</html>
