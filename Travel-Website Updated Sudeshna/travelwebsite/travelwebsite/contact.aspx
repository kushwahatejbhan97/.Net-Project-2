<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="travelwebsite.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Contact :: TourDestinations </title>
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
				<li class=""><a href="/study-abroad">Study Abroad</a></li>
				<li class="mr-2 active"><a href="/contact">Contact</a></li>
				
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
								<h3 class="text-wh text-white">Contact Us</h3></div>
						
			
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
			<li class="breadcrumb-item active" aria-current="page">Contat Us</li>
		</ol>
	</div>
</div>
<!-- //page details -->
	<section>
		<div class="contact-left">
                    <div class="grid">
                        <span class="fa fa-map-marker"></span>
                        <div class="location-info">
                            <span>Address</span>
                            <p> A/322, Greenwood Residency Kowkur</p>
                            <p>Bolarum Hyderabad 500010</p>
                           
                        </div>
                    </div>
                    <div class="grid">
                        <span class="fa fa-envelope-o"></span>
                        <div class="email-info">
                            <span>Have any Questions?</span>
                            <a href="mailto:info@tourdestinations.com" style="color: #242526;"> info@tourdestinations.com</a>
                        </div>
                    </div>
                    <div class="grid">
                        <span class="fa fa-phone"></span>
                        <div class="email-info">
                            <span>Phone Number</span>
                            <a href="tel: +91 9130 444 912" style="color: #242526;">  +91 9130 444 912</a><br>
                            <a href="tel: +91 9505 980 598" style="color: #242526;">  +91 9505 980 598</a>
                        </div>
                    </div>
                </div>
	</section>

	





<!-- contact -->
<section class="contact py-sm-5 py-4" style="background:#e9ecef";>
	<div class="container py-md-3">
		<h2 class="heading text-capitalize text-center mb-lg-5 mb-sm-4 mb-3"> Contact Us</h2>
		<div class="contact-form">
			<form action="#" method="post" runat="server">
				<div class="row main-w3layouts-sectns">
					<div class="col-lg-3 col-md-6 w3-btm-spc form-text1">
						<label> Your Name:</label>
						  <asp:TextBox ID="txtname"  runat="server" placeholder="" required=""></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtname" runat="server" ErrorMessage="*Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
						<%--<input type="text" id="txtname" name="Name" placeholder="" required="" runat="server" />--%>
					</div>
					<div class="col-lg-3 col-md-6 w3-btm-spc form-text2">
						<label>Phone Number:</label>
						  <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtphone" runat="server" ErrorMessage="*Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
						 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtphone"  runat="server" ErrorMessage="Invalid Phone Number" ForeColor="Red" Display="Dynamic" ValidationExpression="[0-9]{10}" ValidationGroup="abc"></asp:RegularExpressionValidator>
						<%--<input type="text" name="Phone no" placeholder="" required="" id="txtphone" runat="server" />--%>
					</div>
					<div class="col-lg-3 col-md-6 w3-btm-spc form-text1">
						<label>Email Address:</label>
						  <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtemail" runat="server" ErrorMessage="*Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
						 <asp:RegularExpressionValidator  ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address" />
						<%--<input type="email" name="email" placeholder="" required="" id="txtemail" runat="server" />--%>
					</div>
					<div class="col-lg-3 col-md-6 w3-btm-spc form-text2">
						<label>Subject:</label>
						  <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox>
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtsubject" runat="server" ErrorMessage="*Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
						<%--<input type="text" name="subject" placeholder="" required="" id="txtsubject" runat="server" />--%>
					</div>
				</div>
				<div class="main-w3layouts-sectns ">
					<div class="w3-btm-spc form-text2 p-0">
						<textarea placeholder="Message" id="txtmessage" runat="server" ></textarea>
					</div>
				</div>
				<button class="btn" runat="server" onserverclick="Unnamed_ServerClick"> Submit</button>
			</form>
		</div>
      
	</div>
</section>
<!-- //contact -->

<!-- map -->
<div class="map p-2">
	
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3804.7633135071305!2d78.54062651435501!3d17.518808403613775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb9b35fafcf843%3A0x7028c2e7639b301a!2sGreenwood%20Residency!5e0!3m2!1sen!2sin!4v1645087588002!5m2!1sen!2sin"></iframe>
</div>
<!-- map -->

<!-- newsletter -->

<!-- //newsletter-->


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
