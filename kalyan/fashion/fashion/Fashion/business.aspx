<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="business.aspx.cs" Inherits="fashion.business" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title></title>
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
  <!-- Template CSS -->
  <link href="//fonts.googleapis.com/css?family=Oswald:300,400,500,600&display=swap" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900&display=swap" rel="stylesheet">
  <!-- Template CSS -->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="w3l-banner-slider-main inner-pagehny">
  <div class="breadcrumb-infhny">

    <div class="top-header-content">

      <header class="tophny-header">
        
       
    <nav class="navbar navbar-expand-lg navbar-light   ">
				<div class="container-fluid serarc-fluid">
					<%--<a class="navbar-brand" href="index.html">
						Spry<span class="lohny">S</span>tore</a>
					 <a class="navbar-brand" href="/home">
                        <img src="assets/images/2.jpg"  alt="Your logo" title="Your logo" style="height:35px;" />
                    </a> --%>
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
							<li class="nav-item ">
								<a class="nav-link" href="/shirts">Shirt</a>
							</li>
							<li class="nav-item ">
								<a class="nav-link" href="/jeans">Jeans</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/electronics">Electronics</a>
							</li>
							<li class="nav-item ">
								<a class="nav-link" href="/ewastemanagement">E-Waste Management</a>
							</li>
							<li class="nav-item active">
								<a class="nav-link" href="/business">Business Enquiry</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/about">About Us</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/contact">Contact Us</a>
							  </li>


						
						</ul>
					</div>
				</div>
			</nav>  
      </header>
      <div class="breadcrumb-contentnhy">
        <div class="container">
          <nav aria-label="breadcrumb">
            <h2 class="hny-title text-center">Business Enquiry</h2>
            <ol class="breadcrumb mb-0">
              <li><a href="/home">Home</a>
                <span class="fa fa-angle-double-right"></span></li>
              <li class="active">contact</li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
</section>
        
   
 <!-- contacts -->
 <section class="w3l-contacts-8">
    <div class="contacts-9 section-gap py-5">
      <div class="container py-lg-5">
        <div class="row top-map">
          <div class="col-lg-6 partners">
            <div class="cont-details">
              <h3 class="hny-title mb-0">M/s <span>TJ </span>Enterprises </h5>
              <p class="mb-5">We're ready to lead you into the future with Business Services</p>
              <p class="margin-top"><span class="texthny">Call Us : </span> <a href="tel:+91 9246590200">+91 9246590200</a></p>
              <p> <span class="texthny">Email : </span> <a href="mailto:tjentp@gmai.com">
                  tjentp@gmai.com</a></p>
              <p class="margin-top">M No 6 10 1 S 341, 4th Shutter in Ground Floor, 1st floor 2nd floor, Mahaboob Mansion, Malakpet, Hyderabad, Telangana-500036. </p>
            </div>
            <%--<div class="hours">
              <h3 class="hny-title">Working <span>Hours</span></h5>
              <h6>Business Service:</h6>
              <p> Monday to Friday 8.00 am - 6.00 pm</p>
              <p> Saturday and Sunday - Closed</p>
              <h6 class="margin-top">Customer support:</h6>
              <p> Monday to Friday 8.00 am - 6.00 pm</p>
              <p> Saturday 10.00 am - 4.00 pm</p>
              <p> Sunday - Closed</p>
            </div>--%>
          </div>
          <div class="col-lg-6 map">
             
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3806.8798418519495!2d78.45537531418798!3d17.417553156520505!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb9748d5b95a69%3A0xb8f83879e8fe33fc!2sDiviniti!5e0!3m2!1sen!2sin!4v1629356440888!5m2!1sen!2sin"
              frameborder="0" style="border:0" allowfullscreen=""></iframe>
          </div>
        </div>
      </div>
    </div>
    <div class="map-content-9 form-bg-img">
      <div class="layer section-gap py-5">
        <div class="container py-lg-5">
          <div class="form">
            <h3 class="hny-title two text-center">Feel Free To Contact Us For Any Time.</h3>
            <form action="https://sendmail.w3layouts.com/submitForm"class="mt-md-5 mt-4" method="post">
              <div class="input-grids">
                <input type="text" name="w3lName" id="w3lName" placeholder="Name">
                <input type="email" name="w3lSender" id="w3lSender" placeholder="Email" required="" />
                <input type="number" name="w3lSubject" id="w3lSubject" placeholder="mobile number" required="">
              </div>
              <div class="input-textarea">
                <textarea name="w3lMessage" id="w3lMessage" placeholder="Message" required=""></textarea>
              </div>
              <button type="submit" class="btn">Send</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- //contact-uss -->


            

<section class="w3l-footer-22">
      <!-- footer-22 -->
      <div class="footer-hny py-5">
          <div class="container py-lg-5">
              <div class="text-txt row">
                  <div class="left-side col-lg-4">
                     <%-- <h3><a class="logo-footer" href="index.html">
                            NIK<span class="lohny">A</span>SHI</a></h3>
                        
                                    <a class="navbar-brand" href="#index.html">
                                        <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                                    </a> --%>
                      <p>Diviniti has proven itself to be one of the premier sources of vision and innovation for consumer electronics. 
						  Founded in 2013, Diviniti has engaged in offering quality home entertainment products. </p>
                      <ul class="social-footerhny mt-lg-5 mt-4">

                          <li><a class="facebook" href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                          </li>
                          <li><a class="twitter" href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                          </li>
                          <li><a class="google" href="#"><span class="fa fa-google-plus" aria-hidden="true"></span></a>
                          </li>
                          <li><a class="instagram" href="#"><span class="fa fa-instagram" aria-hidden="true"></span></a>
                          </li>
                      </ul>
                  </div>

                  <div class="right-side col-lg-8 pl-lg-5">
                      <h4> Special Offer
                        All Branded  are Flat 20% Discount</h4>
                      <div class="sub-columns">
                          <div class="sub-one-left">
                              <h6>Useful Links</h6>
                              <div class="footer-hny-ul">
                                  <ul>
                                      <li><a href="/home">Home</a></li>
                                      <li><a href="/shirts">Shirts</a></li>
                                      <li><a href="/jeans">Jeans</a></li>
                                      <li><a href="/tshirts">T-Shirts</a></li>
                                  </ul>
                                  <ul>
                                      <li><a href="/electronics.aspx">Electronics</a></li>
                                      <li><a href="/aboutus">About Us</a></li>
                                      <li><a href="#">Terms and Conditions</a></li>
                                      <li><a href="/contact-us">Support</a></li>
                                  </ul>
                              </div>

                          </div>
                          <div class="sub-two-right">
                              <h6>Contact Info</h6>
                              <p class="mb-5">6-3-648, Ground Floor, Padmaja landmark Somajiguda, Hyderabad Telangana-500082</p>
							<p class="margin-top"><span class="texthny">Call Us :<a href="tel:+1800 3133395">1800 3133395 </a> </span> </p>
							  <p> <span class="texthn">Email :  <a href="helpline@brep.in"> helpline@brep.in</a></span></p>

                             <%-- <h6>We accept:</h6>
                              <ul>
                                  <li><a class="pay-method" href="#"><span class="fa fa-cc-visa"
                                              aria-hidden="true"></span></a>
                                  </li>
                                  <li><a class="pay-method" href="#"><span class="fa fa-cc-mastercard"
                                              aria-hidden="true"></span></a>
                                  </li>
                                  <li><a class="pay-method" href="#"><span class="fa fa-cc-paypal"
                                              aria-hidden="true"></span></a>
                                  </li>
                                  <li><a class="pay-method" href="#"><span class="fa fa-cc-amex"
                                              aria-hidden="true"></span></a>
                                  </li>
                              </ul>--%>
                          </div>
                      </div>
                  </div>
              </div>
              <%--<div class="below-section row">
                  <div class="columns col-lg-6">
                      <ul class="jst-link">
                          <li><a href="#">Privacy Policy </a> </li>
                          <li><a href="#">Term of Service</a></li>
                          <li><a href="contact.html">Customer Care</a> </li>
                      </ul>
                  </div>
                  <div class="columns col-lg-6 text-lg-right">
                      <p>© 2020 SpryStore. All rights reserved. Design by <a href="https://www.dexterous.in/Best-mobile-app-development-company-in-Hyderabad" target="_blank">
                              dexterous Technology</a>
                      </p>
                  </div>
                  <button onclick="topFunction()" id="movetop" title="Go to top">
                      <span class="fa fa-angle-double-up"></span>
                  </button>
              </div>--%>
          </div>
      </div>
      <!-- //titels-5 -->
      <!-- move top -->

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
        </div>
    </form>
</body>
</html>


                                
<script src="assets/js/jquery-3.3.1.min.js"></script>
<script src="assets/js/jquery-2.1.4.min.js"></script>
<!--/login-->
<script>
    $(document).ready(function () {
        $(".button-log a").click(function () {
            $(".overlay-login").fadeToggle(200);
            $(this).toggleClass('btn-open').toggleClass('btn-close');
        });
    });
    $('.overlay-close1').on('click', function () {
        $(".overlay-login").fadeToggle(200);
        $(".button-log a").toggleClass('btn-open').toggleClass('btn-close');
        open = false;
    });
  </script>
<!--//login-->
<script>
    // optional
    $('#customerhnyCarousel').carousel({
        interval: 5000
    });
  </script>
 <!-- cart-js -->
 <script src="assets/js/minicart.js"></script>
 <script>
     transmitv.render();

     transmitv.cart.on('transmitv_checkout', function (evt) {
         var items, len, i;

         if (this.subtotal() > 0) {
             items = this.items();

             for (i = 0, len = items.length; i < len; i++) { }
         }
     });
 </script>
 <!-- //cart-js -->

<!-- disable body scroll which navbar is in active -->

<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- disable body scroll which navbar is in active -->
<script src="assets/js/bootstrap.min.js"></script>
