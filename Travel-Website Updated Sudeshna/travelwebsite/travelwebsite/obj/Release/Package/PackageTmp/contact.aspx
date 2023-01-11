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

<!-- contact -->
<section class="contact py-sm-5 py-4">
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
