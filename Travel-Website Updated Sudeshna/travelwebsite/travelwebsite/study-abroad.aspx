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
		<nav class="py-md-3  d-lg-flex" style="padding-top: 14px">
			<div id="logo row">
               
				<a href="/home"><img src="images/logotd.png"  class="img-fluid img-thumbnail logoimg"/></a>
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

            <div class="w3layouts-banner-info-about">
								<h3 class="text-wh text-white">Study Abroad</h3></div>
			
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
                <div class="fetured-info py-lg-5 py-3" style="background:#e9ecef";>
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
    <section class="w3l-footer-29-main py-5">
  <div class="footer-29 py-lg-4 py-md-3">
      <div class="container">
          <div class="d-grid grid-col-4 footer-top-29" style="display:grid">
              <div class="footer-list-29 footer-1">
                  <h6 class="footer-title-29">Contact Us</h6>
                  <ul>
                      <li><p><span class="fa fa-map-marker"></span> A/322, Greenwood Residency Kowkur, Bolarum Hyderabad 500010 </p></li>
                      <li><a href="tel:+91 9130 444 912"><span class="fa fa-phone"></span> +91 9130 444 912</a></li>
					  <li><a href="tel:+91 9505 980 598"><span class="fa fa-phone"></span> +91 9505 980 598</a></li>
                      <li><a href="mailto:info@tourdestinations.com" class="mail"><span class="fa fa-envelope-open-o"></span> info@tourdestinations.com</a></li>
                  </ul>
                  <div class="main-social-footer-29">
                      <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
                      <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
                      <a href="#google-plus" class="google-plus"><span class="fa fa-google-plus"></span></a>
                      <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
                  </div>
              </div>
              <div class="footer-list-29 footer-4">
                  <ul>
                      <h6 class="footer-title-29">Quick Links</h6>
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
              <div class="footer-list-29 footer-3">
                 
                  <h6 class="footer-title-29">Newsletter </h6>
                  <p class="mb-3">Get in your inbox the latest News and</p>
          <form action="#" class="subscribe" method="post">
            <input type="email" name="email" placeholder="Email" required="">
            <button><span class="fa fa-envelope-o"></span></button>
          </form>
          <p>Subscribe and get our weekly newsletter</p>
          <p>We'll never share your email address</p>
        
              </div>
              
          </div>
          <div class="d-grid grid-col-2 bottom-copies">
              <p class="copy-footer-29">© 2019 TourDestinations. All rights reserved | Designed by <a href="https://www.dexterous.in/">Dexterous Technology</a></p>
               
          </div>
      </div>
  </div>
  
  
  <script>
      // When the user scrolls down 20px from the top of the document, show the button
      window.onscroll = function () {
          scrollFunction()
      };

      function scrollFunction() {
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
              document.getElementById("movetop").style.display = "block";
          } else {
              document.getElementById("movetop").style.display = "none";
          }
      }

      // When the user clicks on the button, scroll to the top of the document
      function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
      }
  </script>
  <!-- /move top -->
</section>
<!-- //footer -->

<!-- copyright -->

<!-- //copyright -->


<!-- move top icon -->
<a href="#home" class="move-top text-center"></a>
<!-- //move top icon -->
	
</body>

</html>
