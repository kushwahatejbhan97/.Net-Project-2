<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LocalPandit.Account.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
	<title>World Best Local Directory Website template</title>
	<!-- META TAGS -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- FAV ICON(BROWSER TAB ICON) -->
	<link rel="shortcut icon" href="images/aff-logo.png" type="image/x-icon">
	<!-- GOOGLE FONT -->
	<link href="https://fonts.googleapis.com/css?family=Poppins%7CQuicksand:500,700" rel="stylesheet">
	<!-- FONTAWESOME ICONS -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- ALL CSS FILES -->
	<link href="css/materialize.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	<!-- RESPONSIVE.CSS ONLY FOR MOBILE AND TABLET VIEWS -->
	<link href="css/responsive.css" rel="stylesheet">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!--== MAIN CONTRAINER ==-->
	<div class="container-fluid sb1">
		<div class="row">
			<!--== LOGO ==-->
			<div class="col-md-2 col-sm-3 col-xs-6 sb1-1"> <a href="#" class="btn-close-menu"><i class="fa fa-times" aria-hidden="true"></i></a> <a href="#" class="atab-menu"><i class="fa fa-bars tab-menu" aria-hidden="true"></i></a>
				<a href="main.html" class="logo"><img src="images/logo1.png" alt="" /> </a>
			</div>
			<!--== SEARCH ==-->
			<div class="col-md-6 col-sm-6 mob-hide">
				<form class="app-search">
					<input type="text" placeholder="Search..." class="form-control"> <a href="#"><i class="fa fa-search"></i></a> </form>
			</div>
			<!--== NOTIFICATION ==-->
			<div class="col-md-2 tab-hide">
				<div class="top-not-cen"> <a class='waves-effect btn-noti' href='#'><i class="fa fa-commenting-o" aria-hidden="true"></i><span>5</span></a> <a class='waves-effect btn-noti' href='#'><i class="fa fa-envelope-o" aria-hidden="true"></i><span>5</span></a> <a class='waves-effect btn-noti' href='#'><i class="fa fa-tag" aria-hidden="true"></i><span>5</span></a> </div>
			</div>
			<!--== MY ACCCOUNT ==-->
			<div class="col-md-2 col-sm-3 col-xs-6">
				<!-- Dropdown Trigger -->
				<a class='waves-effect dropdown-button top-user-pro' href='#' data-activates='top-menu'><img src="images/users/6.png" alt="" />My Account <i class="fa fa-angle-down" aria-hidden="true"></i> </a>
				<!-- Dropdown Structure -->
				<ul id='top-menu' class='dropdown-content top-menu-sty'>
					<li><a href="#" class="waves-effect"><i class="fa fa-cogs"></i>Edit Profile</a> </li>
					<li class="divider"></li>
					<li><a href="#" class="ho-dr-con-last waves-effect"><i class="fa fa-sign-in" aria-hidden="true"></i> Logout</a> </li>
				</ul>
			</div>
		</div>
	</div>
	<!--== BODY CONTNAINER ==-->
	<div class="container-fluid sb2">
		<div class="row">
			<div class="sb2-1">
				<!--== USER INFO ==-->
				<div class="sb2-12">
					<ul>
						<li><img src="images/users/2.png" alt=""> </li>
						<li>
							<h5>John Smith <span> Santa Ana, CA</span></h5> </li>
						<li></li>
					</ul>
				</div>
				<!--== LEFT MENU ==-->
				<div class="sb2-13">
					<ul class="collapsible" data-collapsible="accordion">
						<li><a href="admin.html" class="menu-active"><i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard</a> </li>
						<li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-list-ul" aria-hidden="true"></i> Listing</a>
							<div class="collapsible-body left-sub-menu">
								<ul>
									<li><a href="admin-all-listing.html">All listing</a> </li>
									<li><a href="admin-list-add.html">Add New listing</a> </li>
									<li><a href="admin-listing-category.html">All listing Categories</a> </li>
									<li><a href="admin-list-category-add.html">Add listing Categories</a> </li>
								</ul>
							</div>
						</li>
					
						<li><a href="admin-setting.html"><i class="fa fa-cogs" aria-hidden="true"></i> Setting</a> </li>
						<li><a href="admin-social-media.html"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Social Media</a> </li>
						<li><a href="#" target="_blank"><i class="fa fa-sign-in" aria-hidden="true"></i> Log Out</a> </li>
					</ul>
				</div>
			</div>
			<!--== BODY INNER CONTAINER ==-->
			<div class="sb2-2">
				<!--== breadcrumbs ==-->
				<div class="sb2-2-2">
					<ul>
						<li><a href="main.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a> </li>
						<li class="active-bre"><a href="#"> Dashboard</a> </li>
						
					</ul>
				</div>
				<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Manage Booking</h4>
						<div class="tz-2-main-com bot-sp-20">
							<div class="tz-2-main-1 tz-2-main-admin">
								<div class="tz-2-main-2"> <img src="images/icon/d1.png" alt=""><span>All Listings</span>
									<p>All the Lorem Ipsum generators on the</p>
									<h2>1024</h2> </div>
							</div>
							<div class="tz-2-main-1 tz-2-main-admin">
								<div class="tz-2-main-2"> <img src="images/icon/d4.png" alt=""><span>Users</span>
									<p>All the Lorem Ipsum generators on the</p>
									<h2>428</h2> </div>
							</div>
							<div class="tz-2-main-1 tz-2-main-admin">
								<div class="tz-2-main-2"> <img src="images/icon/d3.png" alt=""><span>Leads</span>
									<p>All the Lorem Ipsum generators on the</p>
									<h2>53</h2> </div>
							</div>
							<div class="tz-2-main-1 tz-2-main-admin">
								<div class="tz-2-main-2"> <img src="images/icon/d2.png" alt=""><span>Reviews</span>
									<p>All the Lorem Ipsum generators on the</p>
									<h2>53</h2> </div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--== BOTTOM FLOAT ICON ==-->
	
	<!--SCRIPT FILES-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/materialize.min.js" type="text/javascript"></script>
	<script src="js/custom.js"></script>
</body>
</html>
