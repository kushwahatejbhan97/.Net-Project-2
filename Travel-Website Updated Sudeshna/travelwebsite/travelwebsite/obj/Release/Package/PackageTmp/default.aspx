<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="travelwebsite._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home :: TourDestinations </title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta charset="utf-8" />
	 <link rel="icon" href="/images/logotd.png" type="image/gif" sizes="16x16" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
	
	<!-- css files -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="css/font-awesome.min.css" rel="stylesheet"/><!-- fontawesome css -->
	<!-- //css files -->
	
	<link href="css/css_slider.css" type="text/css" rel="stylesheet" media="all" />

	<!-- google fonts -->
    <link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900" rel="stylesheet"/>
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet"/>
	<!-- //google fonts -->
	
</head>
<body>

<!-- header -->
<header>
	<div class="container" style="margin:0px;max-width:100%">
		<!-- nav -->
		<nav class="py-md-4 py-3 d-lg-flex">
			<div id="logo row">
               
				<h1>  <img src="images/logotd.png"  class="img-fluid img-thumbnail logoimg"/><a href="/home" class="logoheader">TourDestinations</a></h1>
			</div>
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			<ul class="menu mt-lg-3 ml-auto">
				<li class="active"><a href="/home">Home</a></li>
				<li class=""><a href="/about">About Us</a></li>
				<li class=""><a href="/services">Services</a></li>
				<li class=""><a href="/explore-south-east-asia">Explore South East Asia</a></li>
				<li class=""><a href="/study-abroad">Study Abroad</a></li>
				<li class="mr-2"><a href="/contact">Contact</a></li>
				
			</ul>
		</nav>
		<!-- //nav -->
	</div>
</header>
<!-- //header -->

<!-- banner -->
<section class="banner_w3lspvt" id="home">
	<div class="csslider infinity" id="slider1">
		<input type="radio" name="slides" checked="checked" id="slides_1" />
		<input type="radio" name="slides" id="slides_2" />
		<input type="radio" name="slides" id="slides_3" />
		<input type="radio" name="slides" id="slides_4" />
		<ul>
			<li>
				<div class="banner-top">
					<div class="overlay">
						<div class="container">
							<div class="w3layouts-banner-info">
								<h3 class="text-wh"> HOLIDAY AT ITS BEST </h3>
								<%--<h4 class="text-wh"> vestibulum consequat. Curabitur mauris justo</h4>--%>
								<a href="/about" class="button-style mt-4">Read More</a>
								</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="banner-top1">
					<div class="overlay">
						<div class="container">
							<div class="w3layouts-banner-info">
								<h3 class="text-wh">Study Abroad</h3>
								
								<a href="/about" class="button-style mt-4">Read More</a>
								</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="banner-top2">
					<div class="overlay">
						<div class="container">
							<div class="w3layouts-banner-info">
								<h3 class="text-wh">Explore South East Asia</h3>
								
								<a href="/about" class="button-style mt-4">Read More</a>
								</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="banner-top3">
					<div class="overlay">
						<div class="container">
							<div class="w3layouts-banner-info">
								<h3 class="text-wh"> TourDestinations Providing Best Travelling Experience</h3>
								
								<a href="/about" class="button-style mt-4">Read More</a>
								</div>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="arrows">
			<label for="slides_1"></label>
			<label for="slides_2"></label>
			<label for="slides_3"></label>
			<label for="slides_4"></label>
		</div>
	</div>
</section>
<!-- //banner -->
	<section class="about py-sm-5 py-4">
	<div class="container py-lg-5 py-sm-3">
		<div class="row">
			<div class="col-lg-6 inner-about">
				
				<h4 class="mt-md-4 mt-2">WELCOME TOUR DESTINATIONS TRAVEL AGENCY!</h4>
				<h5 class="bottom mt-sm-4 mt-3"></h5>
				<p class="">TOUR DESTINATIONS is a MSME registered travel agency based in Hyderabad. 
Various destinations across the globe have become places of attraction and interest for tourists. Tourists have their dream destinations to visit, enjoy and relax.</p>
			<p>
				India is a fast emerging most favoured destinations across the globe for tourism. India is a nation with diversified geography, climate, culture, language, religions etc. and tourism in India brings a rich experience and fine blend of knowledge and understanding of the country among the tourists. It is a fascinating destination among the tourists coming from abroad.
			</p>
			<%--<p>
				We at TOUR DESTINATIONS believe in ‘Trust, Quality and Service’. With an intimate knowledge of holiday planning for the best locations across India and abroad, we at TOUR DESTINATIONS are successfully providing our services to the clients across the spectrum. We provide fixed itineraries or we make tailor made itineraries based on clients requirements.
			</p>--%>
			
			</div>
			<div class="col-lg-6 mt-lg-0 mt-4">
				<h5 class="bottom mt-sm-4 mt-3"></h5>
				<img src="images/wp.jpg" class="img-fluid homeimg" alt="" />
			</div>
		</div>
	</div>
</section>
<!--/ab -->
    <section class="about py-lg-5 py-md-5 py-3">
        <div class="container">
           
                <!-- services -->
                <div class="fetured-info py-lg-5 py-3">
                    <h3 class="heading text-center mb-lg-5 mb-3">What we do</h3>
                    <div class="row fetured-sec mt-lg-5">

                        <div class="col-lg-6 serv_bottom">
                            <div class="featured-left text-center row">
                                <div class="col-sm-6">
                                    <div class="bottom-gd fea">
                                        <span class="fa fa-plane" aria-hidden="true"></span>
                                        <h3 class="my-3">Destinations organization</h3>
                                        <p class="px-lg-3">We provide planned itinerary and customised itinerary as per the need of the clientele.</p>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="bottom-gd fea">
										
                                        <span class="fa fa-book" aria-hidden="true"></span>
                                        <h3 class="my-3">Study Abroad</h3>
                                        <p class="px-lg-3">We provide assistance to the students who are looking for destinations abroad for their higher studies.</p>
                                    </div>
                                </div>
                               
                            </div>
                        </div>
                        <div class="col-lg-6">
							  <div class="featured-left text-center row">
								   <div class="col-sm-6">
                                    <div class="bottom-gd fea">
										
                                        <span class="fa fa-train" aria-hidden="true"></span>
                                        <h3 class="my-3">Explore South East Asia </h3>
                                        <p class="px-lg-3">We provide planned itinerary and customised itinerary </p>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="bottom-gd fea">
                                        <span class="fa fa-tree" aria-hidden="true"></span>
										
                                        <h3 class="my-3">Honeymoon tours</h3>
                                        <p class="px-lg-3">Explore breathtaking places all around the world in a seamless and memorable way, with our superior services.</p>
                                    </div>
                                </div>
							  
							  </div>
                          <%--  <img src="images/1.jpg" class="img-fluid" alt="">--%>
                        </div>
                    </div>
                </div>
                <!-- //services -->
           
        </div>
    </section>
    <!-- //ab -->
 


 <!-- testimonials -->
    
    <!-- //testimonials -->
<!--we are ready -->
  <section class="banner-image-two py-lg-4 py-md-3 py-sm-3 py-3 text-center">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <h2>We Are Ready To Work With You</h2>
     
      <div class="view-buttn mt-md-4 mt-sm-4 mt-3">
        <a href="/contact" class="btn">Contact Us</a>
      </div>
    </div>
  </section>
  <!--we are ready-->
	<section class="about py-sm-5 py-4">
	<div class="container py-lg-5 py-sm-3">
		<div class="row">
			<div class="col-lg-6 inner-about">
				
				<h4 class="mt-md-4 mt-2">Study Abroad</h4>
				<h5 class="bottom mt-sm-4 mt-3"></h5>
				<p class="">We provide assistance to the students who are looking for destinations abroad for their higher studies. We give all the details of various universities and colleges for vide range of courses and assist them in applying for the courses, admission process, visa assist and ticketing.</p>
			
			
			</div>
			<div class="col-lg-6 mt-lg-0 mt-4">
				<h5 class="bottom mt-sm-4 mt-3"></h5>
              
				<img src="/images/Study-in-abroad.jpg" class="img-fluid homeimg" alt="" />
			</div>
		</div>
	</div>
</section>
<!-- newsletter -->

<!-- //newsletter-->


<!-- footer -->
<footer class="footerv4-w3ls py-sm-5 py-4">
	<div class="footerv4-top">
		<div class="container">
			<div class="row">
				<div class="col-md-3 footer-left">
					<h3>Get In Touch with us</h3>
					<span style="color:white">Mobile No: 91304 44912</span><br />
					<span  style="color:white"> 95059 80598</span><br />
					<span  style="color:white">E-Mail: info@tourdestinations.com </span>
				</div>
				<!-- footer nav links -->
				<div class="col-md-9 footer-nav-wthree my-md-3 mt-3">
					<ul class="social-icons list-unstyled">
						<li>
							<a href="#">
								<span class="fa fa-facebook"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-twitter"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-google-plus"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-instagram"></span>
							</a>
						</li>
					</ul>
					<ul class="footer-link mt-3">
						<li>
							<a href="/home">Home</a>
						</li>
						<li>
							<a href="/about">About Us</a>
						</li>
						<li>
							<a href="/services">Services</a>
						</li>
						<li>
							<a  href="/explore-south-east-asia">Explore South East Asia</a>
						</li>
						<li>
							<a href="/study-abroad">Study Abroad</a>
						</li>
						<li>
							<a href="/contact">Contact</a>
						</li>
					</ul>
				</div>
				<!-- //footer nav links -->
			
			</div>
		</div>
	</div>
</footer>
<!-- //footer -->

<!-- copyright -->
<div class="copy-right text-center">
	<p>© 2019 TourDestinations. All rights reserved | Design by
		<a href="https://www.dexterous.in/">Dexterous Technology</a>
	</p>
</div>
<!-- //copyright -->



<!-- move top icon -->
<a href="#home" class="move-top text-center"></a>
<!-- //move top icon -->
	
</body>
</html>
