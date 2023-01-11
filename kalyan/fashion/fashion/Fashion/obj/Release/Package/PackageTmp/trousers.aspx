<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="trousers.aspx.cs" Inherits="fashion.trousers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      
    <link href="//fonts.googleapis.com/css2?family=Raleway:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Nunito:400,700&display=swap" rel="stylesheet">

    <!-- Template CSS -->
    <link rel="stylesheet" href="imgs-css/css/style-starter.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
                     <!--w3l-banner-slider-main-->
<section class="w3l-banner-slider-main">
	<div class="top-header-content">
		<header class="tophny-header">
			<div class="container-fluid">
				<div class="top-right-strip row">
					<!--/left-->
					<%--<div class="top-hny-left-content col-lg-6 pl-lg-0">
						<h6>Upto 30% off on All styles , <a href="#" target="_blank"> Click here for <span
									class="fa fa-hand-o-right hand-icon" aria-hidden="true"></span> <span
									class="hignlaite">More details</span></a></h6>
					</div>--%>
					<!--//left-->
					<!--/right-->
					
					<!--//right-->
					<div class="overlay-login text-left">
						<button type="button" class="overlay-close1">
							<i class="fa fa-times" aria-hidden="true"></i>
						</button>
						<div class="wrap">
							<h5 class="text-center mb-4">Login Now</h5>
							<div class="login-bghny p-md-5 p-4 mx-auto mw-100">
								<!--/login-form-->
								<form action="#" method="post">
									<div class="form-group">
										<p class="login-texthny mb-2">Email address</p>
										<input type="email" class="form-control" id="exampleInputEmail1"
											aria-describedby="emailHelp" placeholder="" required="">
										<small id="emailHelp" class="form-text text-muted">We'll never share your email
											with anyone else.</small>
									</div>
									<div class="form-group">
										<p class="login-texthny mb-2">Password</p>
										<input type="password" class="form-control" id="exampleInputPassword1"
											placeholder="" required="">
									</div>
									<div class="form-check mb-2">
										<div class="userhny-check">
											<label class="check-remember container">
												<input type="checkbox" class="form-check"> <span
													class="checkmark"></span>
												<p class="privacy-policy">Remember me</p>
											</label>
											<div class="clearfix"></div>
										</div>
									</div>
									<button type="submit" class="submit-login btn mb-4">Sign In</button>

								</form>
								<!--//login-form-->
							</div>
							<!---->
						</div>
					</div>
				</div>
			</div>
			<!--/nav-->
			<nav class="navbar navbar-expand-lg navbar-light" style="background: rgba(16, 16, 16, 0.470588)">
				<div class="container-fluid serarc-fluid">
					<%--<a class="navbar-brand" href="index.html">
						Spry<span class="lohny">S</span>tore</a>
					 <a class="navbar-brand" href="#index.html">
                        <img src="assets/images/2.jpg"  alt="Your logo" title="Your logo" style="height:35px;" />
                    </a> 
					<div class="search-right">

						<a href="#search" title="search"><span class="fa fa-search mr-2" aria-hidden="true"></span>
							<span class="search-text">Search here</span></a>
						
					</div>--%>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon fa fa-bars"> </span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item ">
								<a class="nav-link" href="/home">Home</a>
							</li>
							<li class="nav-item  ">
								<a class="nav-link" href="/shirts">Shirt</a>
							</li>
							<li class="nav-item ">
								<a class="nav-link" href="/jeans">Jeans</a>
							</li>
							<li class="nav-item ">
								<a class="nav-link" href="/electronics">Electronics</a>
							</li>
							<li class="nav-item  ">
								<a class="nav-link" href="/ewastemanagement">E-Waste Management</a>
							</li>
							<li class="nav-item ">
								<a class="nav-link" href="/business">Business Enquiry</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/about">About Us</a>
							</li>
							<li class="nav-item ">
								<a class="nav-link" href="/contact">Contact Us</a>
							  </li>


						
						</ul>

					</div>
				</div>
			</nav>
			<!--//nav-->
		</header>
		

</section>
<!-- //w3l-banner-slider-main -->

             <!--/gallery -->
    <section class="w3-gallery py-5">
        <div class="container py-md-5">
            <ul class="portfolio-categ filter mb-md-5 mb-4 p-0 justify-content-center">
                <li class="port-filter all active">
                    <a href="#">Trousers</a>
                </li>
               
            </ul>
            <ul class="portfolio-area clearfix p-0 m-0">
                <li class="portfolio-item2 content" data-id="id-1" data-type="cat-item-1">
                    <span class="image-block">

                        <a class="image-zoom" href="imgs/trousers/1.jpg" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="imgs/trousers/1.jpg" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title"></h3>

                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-2" data-type="cat-item-2">
                    <span class="image-block">

                        <a class="image-zoom" href="imgs/trousers/2.jpg" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="imgs/trousers/2.jpg" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title"></h3>

                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-3" data-type="cat-item-1">
                    <span class="image-block">

                        <a class="image-zoom" href="imgs/trousers/3.jpg" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="imgs/trousers/3.jpg" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title"></h3>

                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-4" data-type="cat-item-3">
                    <span class="image-block">

                        <a class="image-zoom" href=imgs/trousers/4.jpg" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="imgs/trousers/4.jpg" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title"></h3>

                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-5" data-type="cat-item-4">
                    <span class="image-block">

                        <a class="image-zoom" href="imgs/trousers/5.jpg" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="imgs/trousers/5.jpg" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title"></h3>

                            </div>
                        </a>
                    </span>
                </li>
                <li class="portfolio-item2 content" data-id="id-7" data-type="cat-item-3">
                    <span class="image-block">

                        <a class="image-zoom" href="imgs/trousers/6.jpg" data-gal="prettyPhoto[gallery]">
                            <div class="content-overlay"></div>
                            <img src="imgs/trousers/6.jpg" class="img-fluid w3layouts agileits" alt="portfolio-img">
                            <div class="content-details fadeIn-bottom">
                                <h3 class="content-title"></h3>

                            </div>
                        </a>
                    </span>
                </li>
           
              
            </ul>
            <!--end portfolio-area -->
        </div>
        <!-- //gallery container -->
    </section>
    <!-- //gallery-->

</asp:Content>
