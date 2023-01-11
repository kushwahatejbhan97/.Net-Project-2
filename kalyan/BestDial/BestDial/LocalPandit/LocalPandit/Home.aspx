<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LocalPandit.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>ClassiPost | Home 1</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="/css/animate.min.css">
    <!-- Font-awesome CSS-->
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <!-- Owl Caousel CSS -->
    <link rel="stylesheet" href="/vendor/OwlCarousel/owl.carousel.min.css">

    <link rel="stylesheet" href="/vendor/OwlCarousel/owl.theme.default.min.css">
    <!-- Main Menu CSS -->
    <link rel="stylesheet" href="/css/meanmenu.min.css">
    <!-- Select2 CSS -->
    <link rel="stylesheet" href="/css/select2.min.css">
    <!-- Magnific CSS -->
    <link rel="stylesheet" type="/text/css" href="css/magnific-popup.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>
  <form id="form1" runat="server">
    <!-- Add your site or application content here -->
    <!-- Preloader Start Here -->
    <div id="preloader"></div>
    <!-- Preloader End Here -->
    <div id="wrapper">
        <section class="bg-accent s-space-regular">
            <div class="container">
                <div class="section-title-dark">
                     <img src="img/banner/Home.png" alt="process" class="img-fluid">
                    <h2>One Time Registration</h2>
                    <p>We shall verify your mobile number as a one-time process, It takes just a few seconds.</p>
                </div>
                <ul class="process-area">
                    <li></li>
                    <li>
                        <h3>Fill Your Information</h3>
                        <div class="container-fluid">
                          <div class="form-group">
                             <asp:TextBox ID="txtname" class="form-control" runat="server" placeholder="Enter Your Name"></asp:TextBox>
                          </div>
                          <div class="form-group">
                            <asp:TextBox ID="txtmobile" class="form-control" runat="server" placeholder="Enter Your Mobile"></asp:TextBox>
                          </div>
                          <div class="form-group">
                           <asp:Button ID="btnsubmit" class="cp-default-btn-lg" runat="server" Text="SUBMIT AND CONTINUE"></asp:Button>
                          </div>
                        </div>
                        <p><a href="/Main.aspx">Skip >></a></p><hr />
                        <p>Once registred you shall have a seamless experience across all our services.</p>
                    </li>
                </ul>
            </div>
        </section>
    </div>
    <!-- jquery-->
    <script src="/js/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/js/popper.js"></script>
    <!-- Bootstrap js -->
    <script src="/js/bootstrap.min.js"></script>
    <!-- Owl Cauosel JS -->
    <script src="/vendor/OwlCarousel/owl.carousel.min.js"></script>
    <!-- Meanmenu Js -->
    <script src="/js/jquery.meanmenu.min.js"></script>
    <!-- Srollup js -->
    <script src="/js/jquery.scrollUp.min.js"></script>
    <!-- jquery.counterup js -->
    <script src="/js/jquery.counterup.min.js"></script>

    <script src="/js/waypoints.min.js"></script>
    <!-- Select2 Js -->
    <script src="/js/select2.min.js"></script>
    <!-- Isotope js -->
    <script src="/js/isotope.pkgd.min.js"></script>
    <!-- Magnific Popup -->
    <script src="/js/jquery.magnific-popup.min.js"></script>
    <!-- Custom Js -->
    <script src="/js/main.js"></script>
    </form>
</body>
</html>
