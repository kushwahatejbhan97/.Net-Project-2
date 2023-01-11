<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="study-abroad.aspx.cs" Inherits="travelwebsite.study_abroad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>About :: TourDestinations </title>
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
	<div class="container">
		<!-- nav -->
		<nav class="py-md-4 py-3 d-lg-flex">
			<div id="logo row">
               
				<h1>  <img src="images/logotd.png"  class="img-fluid img-thumbnail logoimg"/><a href="/home" class="logoheader">TourDestinations</a></h1>
			</div>
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			<ul class="menu mt-lg-3 ml-auto">
				<li class=""><a href="/home">Home</a></li>
				<li class=""><a href="/about">About Us</a></li>
				<li class=""><a href="/services">Services</a></li>
				<li class=""><a href="/explore-south-east-asia">Explore South East Asia</a></li>
				<li class="active"><a href="/study-abroad">Study Abroad</a></li>
				<li class="mr-2"><a href="/contact">Contact</a></li>
				
			</ul>
		</nav>
		<!-- //nav -->
	</div>
</header>
<!-- //header -->

<!-- banner -->
<div class="inner-banner" id="home">
	<div class="inner-banner-overlay">
		<div class="container">
			
		</div>
	</div>
</div>
<!-- //banner -->

<!-- page details -->
<div class="breadcrumb-agile">
	<div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="/home">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page">Study Abroad</li>
		</ol>
	</div>
</div>
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

	<section class="banner-image-two py-lg-4 py-md-3 py-sm-3 py-3 text-center">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <h2>We Are Ready To Help You</h2>
     
      <div class="view-buttn mt-md-4 mt-sm-4 mt-3">
        <a href="/contact" class="btn">Contact Us</a>
      </div>
    </div>
  </section>

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
                        </div>
                        <div class="col-lg-6">
                            <img src="images/1.jpg" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
                <!-- //services -->
           
        </div>
    </section>

	
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
