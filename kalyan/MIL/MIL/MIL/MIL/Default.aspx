<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MIL.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome To Mittal Ispat LTD </title>
    
      <!--meta tags -->
      <meta charset="UTF-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <meta name="keywords" content="" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/font-awesome.min.css" rel="stylesheet"/>
      <!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all"/>
      <!--//stylesheets-->
    <link href="images/mittal%20logo.png" rel="shortcut icon"/>
      <link href="//fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700" rel="stylesheet"/>
      <link href="//fonts.googleapis.com/css?family=Oxygen:400,700" rel="stylesheet"/>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="main-top" id="home">
                <!-- header -->
                <div class="headder-top" style="background:rgb(17, 60, 105)">
                    <!-- nav -->
                    <nav>
                        <div id="logo">
                            <h1><a href="/Home">
                                <img src="images/millogo.jpg" class="img-fluid img-thumbnail icons " style="max-height:70px;" /></a></h1>
                        </div>
                        <label for="drop" class="toggle">Menu</label>
                        <input type="checkbox" id="drop" />
                        <ul class="menu mt-2">
                            <li class="active"><a href="/Home" style="color: #ffb100;font-size: 18px;text-transform: capitalize;font-family: 'Fira Sans';font-weight: 600;">Home</a></li>
                            <li ><a href="/About" style="color: #ffb100;font-size: 18px;font-family: 'Fira Sans';font-family: 'Fira Sans'; font-weight: 600; font-weight: 600;">About</a></li>
                            <li><a href="/whatwedo" style="color: #ffb100;font-size: 18px;font-family: 'Fira Sans';  font-weight: 600;">What We Do</a></li>
                            <li><a href="/tranning" style="color: #ffb100;font-size: 18px;font-family: 'Fira Sans'; font-weight: 600;">Tranning</a></li>
                            <li><a href="/career" style="color: #ffb100;font-size: 18px;font-family: 'Fira Sans';  font-weight: 600;">Career</a></li>
                            <li><a href="/Contact" style="color: #ffb100;font-size: 18px;font-family: 'Fira Sans'; font-weight: 600;">Contact Us</a></li>
                        </ul>
                    </nav>
                    <!-- //nav -->
                </div>
                <!-- //header -->
                <!-- banner -->
                <div class="main-banner text-center">
                    <div class="container">
                        <div class="style-banner ">
                            <h4 class="mb-lg-3 mb-2"></h4>
                            <h5>
                            </h5>
                        </div>
                        <div class="two-demo-button mt-lg-5 mt-md-4 mt-3">
                            <p></p>
                        </div>
                        <div class="view-buttn mt-md-4 mt-sm-4 mt-3">
                          <%--  <a href="/About" class="btn scroll"></a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //banner -->
            <!-- about -->
            <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about" style="background-color:rgb(252 251 245); ">
                <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
                    <div class="row">
                        <div class="col-lg-5 col-md-6 about-imgs-txt">
                            <img src="images/electrical%20motor.jpg"  alt="news image" class="img-fluid" />
                        </div>

                        <div class="col-lg-7 col-md-6 text-right about-two-grids">
                            <div class="wthree-about-txt mb-lg-5 mb-md-4 mb-3">
                               
                                <h5>Mittal Ispat LTD</h5>
                            </div>
                            <div class="about-para-txt">
                                <p>Mittal Ispat LTD is a multidimensional company specializing in planning, engineering, testing, validation, and compliance of commercial vehicles, EV engines  and diesel engines  and others. </p>
                                <p>Provide reliable and innovative transportation & engine solutions in India, and empower employees to develop advanced engineering technologies for companies.</p>
                                <p class="mt-2">Empower employees to find creative and innovative solutions by cultivating a welcoming environment of cross functional collaboration and inspiring individual growth.</p>
                                <p>Deliver reliable, smart, innovative, and responsible transportation solutions to strengthen our customers’ operations, improve their quality of work, and realize their changing needs.</p>
                            </div>
                            <div class="view-buttn mt-lg-5 mt-md-4 mt-3">
                                <a href="/About" class=" scroll">Read More</a>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </section>
            <!-- //about  -->
            <!-- service -->
            <section class="service py-lg-4 py-md-3 py-sm-3 py-3" id="service">
                <div class="container-fluid py-lg-5 py-md-4 py-sm-4 py-3">
                    <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2">WHAT WE DO</h3>
                    <div class="title-wls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
                        <p>MIL incorporated in 1985 and since 2018 We are Providing expertise in planning, engineering, testing, validation, and compliance of commercial vehicles, EV engines  and diesel engines  and others</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-7 col-md-6 service-two-grids">
                            <div class="img-cols-grid row">
                                <div class="col-lg-6 col-md-6 col-sm-6 service-grid-wthree text-center">
                                    <div class="about-icon mb-md-4 mb-3">
                                        <span class="fa fa-tint" aria-hidden="true"></span>
                                    </div>
                                    <div class="ser-sevice-grid">
                                        <h4 class="pb-3">Commercial Vehicle Product Planning & Engineering </h4>

                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 service-grid-wthree text-center ">
                                    <div class="about-icon mb-md-4 mb-3">
                                        <span class="fa fa-fire-extinguisher" aria-hidden="true"></span>
                                    </div>
                                    <div class="ser-sevice-grid ">
                                        <h4 class="pb-3">Power train and Vehicle Research & Development </h4>

                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 mt-lg-5 mt-md-4 mt-3 service-grid-wthree  text-center">
                                    <div class="about-icon mb-md-4 mb-3">
                                        <span class="fa fa-cogs" aria-hidden="true"></span>
                                    </div>
                                    <div class="ser-sevice-grid">
                                        <h4 class="pb-3">Electric Vehicle maintenance & servicing</h4>

                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 mt-lg-5 mt-md-4 mt-3 service-grid-wthree  text-center">
                                    <div class="about-icon mb-md-4 mb-3">
                                        <span class="fa fa-free-code-camp" aria-hidden="true"></span>
                                    </div>
                                    <div class="ser-sevice-grid text-center">
                                        <h4 class="pb-3">Quality Management</h4>

                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 mt-lg-5 mt-md-4 mt-3 service-grid-wthree text-center">
                                    <div class="about-icon mb-md-4 mb-3">
                                        <span class="fa fa fa-industry" aria-hidden="true"></span>
                                    </div>
                                    <div class="ser-sevice-grid text-center">
                                        <h4 class="pb-3">Engine & emission testing</h4>

                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 mt-lg-5 mt-md-4 mt-3 service-grid-wthree text-center">
                                    <div class="about-icon mb-md-4 mb-3">
                                        <span class="fa fa-magic" aria-hidden="true"></span>
                                    </div>
                                    <div class="ser-sevice-grid text-center">
                                        <h4 class="pb-3">Accessory development</h4>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="color-img-five col-lg-5 col-md-6">
                        </div>
                    </div>
                </div>
            </section>
            <!--//service -->
            <!--information -->
            <section class="info py-lg-4 py-md-3 py-sm-3 py-3 text-center" style="background:url(../images/car1.png);background-size: cover;">
                <div class="container py-lg-5 py-md-4 py-sm-4 py-3" >
                    <div class="info-matter">
                        <h5>If you need industrial solution.We are available for you</h5>
                        <p class="mt-lg-4 mt-3"></p>
                    </div>
                    <div class="view-buttn mt-lg-5 mt-md-4 mt-sm-4 mt-3">
                        <a href="/Contact" class="btn ">Contact Us</a>
                    </div>
                </div>
            </section>
            <!--//information -->
            <!--blog-->
            <%--<section class="blog py-lg-4 py-md-3 py-sm-3 py-3" id="blog">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2">Our Blog</h3>
            <div class="title-wls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum </p>
            </div>
            <div class="row">
               <div class="col-lg-6 color-img-three">
                  <img src="images/blog3.jpg" alt="news image" class="img-fluid">
               </div>
               <div class="col-lg-6 blog-left-sub">
                  <h4 class="pb-3"><a href="about.html">Oil Refineries</a></h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non Lorem ipsum dolor sit amet Lorem ipsum dolor
                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non Lorem ipsum dolor sit amet Lorem ipsum dolor
                  </p>
                  <div class="blog-date-time mt-lg-4 mt-md-3 mt-3">
                     <ul>
                        <li><span class="fa fa-calendar" aria-hidden="true"></span><a href="about.html">12/4/2019</a></li>
                        <li><span class="fa fa-comments" aria-hidden="true"></span><a href="about.html">5 Comments</a></li>
                     </ul>
                  </div>
                  <div class="view-buttn mt-lg-5 mt-md-4 mt-3">
                     <a href="contact.html" class=" scroll">Read More</a>
                  </div>
               </div>
            </div>
            <div class="row mt-lg-5 mt-md-4 mt-3">
               <div class="col-lg-4 blog-grid-behind">
                  <div class="blog-images-us">
                     <img src="images/blog1.jpg" alt="news image" class="img-fluid">
                     <div class="blog-wthree-sub">
                        <h4 class="pb-3"><a href="about.html">Completions</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non Lorem ipsum dolor sit amet Lorem ipsum dolor
                           Lorem ipsum dolor sit amet
                        </p>
                     </div>
                     <div class="news-date">
                        <a href="about.html"><span>6</span>/May</a>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 blog-grid-behind">
                  <div class="blog-images-us">
                     <img src="images/blog2.jpg" alt="news image" class="img-fluid">
                     <div class="blog-wthree-sub">
                        <h4 class="pb-3"><a href="about.html">Oil Drilling</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non Lorem ipsum dolor sit amet Lorem ipsum dolor
                           Lorem ipsum dolor sit amet
                        </p>
                     </div>
                     <div class="news-date">
                        <a href="about.html"><span>8</span>/jun</a>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 blog-grid-behind">
                  <div class="blog-images-us">
                     <img src="images/blog4.jpg" alt="news image" class="img-fluid">
                     <div class="blog-wthree-sub">
                        <h4 class="pb-3"><a href="about.html">Industry Work</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non Lorem ipsum dolor sit amet Lorem ipsum dolor
                           Lorem ipsum dolor sit amet
                        </p>
                     </div>
                     <div class="news-date">
                        <a href="about.html"><span>2</span>/May</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>--%>
            <!--//blog-->
            <!-- team -->
            <section class="team py-lg-4 py-md-3 py-sm-3 py-3" id="team">
                <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
                    <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2">Our Team</h3>
                    <div class="title-wls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
                        <p>Mittal Ispat Limited currently serves as the headquarters of MIL’s  Research & Development arm in Mumbai, India </p>
                    </div>
                    <%--<div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6 team-row-grid">
                            <div class="team-grid">
                                <div class="team-image mb-3">
                                    <img src="images/t1.jpg" alt="" class="img-fluid" />
                                    <div class="social-icons">
                                        <a href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-linkedin" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-google-plus" aria-hidden="true"></span></a>
                                    </div>
                                </div>
                                <h4>William Jon</h4>
                                <p class="mt-2">Director ,CEO</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 team-row-grid">
                            <div class="team-grid">
                                <div class="team-image mb-3">
                                    <img src="images/t2.jpg" alt="" class="img-fluid" />
                                    <div class="social-icons">
                                        <a href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-linkedin" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-google-plus" aria-hidden="true"></span></a>
                                    </div>
                                </div>
                                <h4>Sam Jacob</h4>
                                <p class="mt-2">Director</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 team-row-grid">
                            <div class="team-grid">
                                <div class="team-image mb-3">
                                    <img src="images/t3.jpg" alt="" class="img-fluid" />
                                    <div class="social-icons">
                                        <a href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-linkedin" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-google-plus" aria-hidden="true"></span></a>
                                    </div>
                                </div>
                                <h4>Liam Max</h4>
                                <p class="mt-2">Manager</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 team-row-grid">
                            <div class="team-grid ">
                                <div class="team-image mb-3">
                                    <img src="images/t4.jpg" alt="" class="img-fluid" />
                                    <div class="social-icons">
                                        <a href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-linkedin" aria-hidden="true"></span></a>
                                        <a href="#"><span class="fa fa-google-plus" aria-hidden="true"></span></a>
                                    </div>
                                </div>
                                <h4>William jon</h4>
                                <p class="mt-2">Engineer</p>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </section>
            <!--//team -->
            <!-- footer -->
            <footer class="py-lg-4 py-md-3 py-sm-3 py-3">
                <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
                    <div class="row">
                        <div class="col-lg-6 col-md-7 footer-left-grid">
                            <div class="footer-w3layouts-head">
                                <h2><a href="/About"> Mittal Ispat LTD </a></h2>
                            </div>
                            <div class="mb-1 pt-lg-5 pt-md-4 pt-3 footer-address">
                                <ul>
                                    <li>
                                        <h4>Get In Touch</h4>
                                    </li>
                                    <br />
                                    <li>
                                        <p>73/A Sdf,Seepz,Andheri,East Mumbai,<br />Maharastra-400096.</p>
                                    </li>
                                    <hr />
                                   <li>
                                       <p>No.32,Sanganakal Rd,KHB Colony,<br />Basaveshwar Nagar,Ballari,Karnataka-583103.</p>
                                   </li>
                                    <hr />
                                    <li>
                                        <p>Vostak Building,Salt Lake Sector-III,<br />Near Amri Hospital,Kolkata-700106</p>
                                    </li>
                                </ul>
                            </div>
                            <div class="mb-1 footer-address">
                                
                            </div>
                            
                        </div>
                        <div class="footer-info-bottom col-lg-6 col-md-5" style="padding-top:69px" >

                            <div class="mb-1 footer-address">
                                <ul>
                                    <li>
                                        <%--<h4>Phone</h4>--%>
                                    </li>
                                    <li>
                                        <p></p>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <h4>Email</h4>
                                    </li>
                                    <li>
                                        <p>
                                            <a href="mailto:info@mittalispatlimited.com">info@mittalispatlimited.com</a>
                                        </p>
                                    </li>
                                </ul>

                            </div>

                            <div class="mb-1 footer-address" >
                                <ul>
                                    <li>
                                        <%--<h4>Phone</h4>--%>
                                    </li>
                                    <li>
                                        <p></p>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <h4>CIN Number</h4>
                                    </li>
                                    <li>
                                        <p>
                                            U27109DL1985PLC020067
                                            <%--<a href="mailto:info@mittalispatlimited.com">info@mittalispatlimited.com</a>--%>
                                        </p>
                                    </li>
                                </ul>

                            </div>

                            <h4 class="pb-lg-4 pb-md-3 pb-3" style="margin-top: 32px;">Social Media</h4>
                            
                            <div class="footer-office-hour mt-3" >
                                <p></p>
                            </div>
                            <div class="icons mt-3 ">
                                <ul>
                                    <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                                    <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                                    <li><a href="#"><span class="fa fa-rss"></span></a></li>
                                    <li><a href="#"><span class="fa fa-vk"></span></a></li>
                                </ul>
                            </div>
                        </div>

                        

                    </div>
                    <div class="bottem-wthree-footer text-center pt-lg-5 pt-md-4 pt-3">
                        <p>
                            © 2019 Mittal Ispat LTD. All Rights Reserved | Design by <a href="https://www.dexterous.in/" target="_blank">Dexterous Technologies</a>
                        </p>
                    </div>
                    <!-- move icon -->
                    <div class="text-center">
                        <a href="#home" class="move-top text-center mt-3"></a>
                    </div>
                    <!--//move icon -->
                </div>
            </footer>
            <!--//footer -->
        </div>
    </form>
</body>
</html>