<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LocalPandit.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Best Dial | Start</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrap.min.css" />
    <!-- Animate CSS -->
    <link rel="stylesheet" href="/css/animate.min.css" />
    <!-- Font-awesome CSS-->
    <link rel="stylesheet" href="/css/font-awesome.min.css" />
    <!-- Owl Caousel CSS -->
    <link rel="stylesheet" href="/vendor/OwlCarousel/owl.carousel.min.css" />

    <link rel="stylesheet" href="/vendor/OwlCarousel/owl.theme.default.min.css" />
    <!-- Main Menu CSS -->
    <link rel="stylesheet" href="/css/meanmenu.min.css" />
    <!-- Select2 CSS -->
    <link rel="stylesheet" href="/css/select2.min.css" />
    <!-- Magnific CSS -->
    <link rel="stylesheet" type="/text/css" href="css/magnific-popup.css" />
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/style.css" />
</head>

<body>
    <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an 
        <strong>outdated</strong> browser. Please 
        <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.
    </p>
    <![endif]-->
    <!-- Add your site or application content here -->
    <!-- Preloader Start Here -->
    <div id="preloader"></div>
    <!-- Preloader End Here -->
    <div id="wrapper">
        <section class="bg-accent s-space-regular">
        <form id="firstForm" runat="server">
            <div class="container">
                <div class="section-title-dark">
                    <h2>Welcome To Best Dial</h2>
                    <p>It’s very simple to find everything near you.</p>
                </div>
                <ul class="process-area">
                    <li>
                       
                    </li>
                    <li>
                        <img src="/img/jslogo.png" class="img-thumbnail" />
                        <h3>Start Your Business</h3>
                        <p>Best Dial, India's local search engine, provides Best Deals.</p><hr />
                        <p><a href="#">Term & Condition</a></p><br />
                        <p><asp:Button ID="Button1" class="cp-default-btn-lg" runat="server" 
                                Text="AGREE AND CONTINUE" onclick="Button1_Click"></asp:Button></p>
                    </li>
                </ul>
            </div>
            </form>
        </section>
         <!-- Report Abuse Modal Start-->
    <div class="modal fade" id="report_abuse" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content report-abuse-area radius-none">
                <div class="gradient-wrapper" style="margin-top:10px;">
                    <div class="gradient-title">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h2 class="item-danger">Term & Condition</h2>
                    </div>
                    <div class="gradient-padding reduce-padding">
                      <div>
                        <p>HOW YOU MAY USE OUR MATERIALS: We use a diverse range of information, text, photographs, designs, graphics, images, sound and video recordings, animation, content, advertisement and other materials and effects (collectively "Materials") for the search services on the Platforms. We provide the Material through the Platforms FOR YOUR PERSONAL AND NON-COMMERCIAL USE ONLY.</p>
                        <p>While every attempt has been made to ascertain the authenticity of the Platforms content, Just Dial is not liable for any kind of damages, losses or action arising directly or indirectly, due to access and/or use of the content in the Platforms including but not limited to decisions based on the content in the Platforms which results in any loss of data, revenue, profits, property, infection by viruses etc.</p>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Report Abuse Modal End-->
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
</body>
</html>
