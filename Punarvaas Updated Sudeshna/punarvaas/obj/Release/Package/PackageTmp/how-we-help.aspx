<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="how-we-help.aspx.cs" Inherits="punarvaas.how_we_help" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Punarvaas || Why Punarvaas?</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="utf-8" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/line-awesome/1.3.0/line-awesome/css/line-awesome.min.css" integrity="sha512-vebUliqxrVkBy3gucMhClmyQP9On/HAWQdKDXRaAlb/FKuTbxkjPKUyqVOxAcGwFDka79eTF+YXwfke1h3/wfg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/line-awesome/1.3.0/font-awesome-line-awesome/css/all.min.css" integrity="sha512-dC0G5HMA6hLr/E1TM623RN6qK+sL8sz5vB+Uc68J7cBon68bMfKcvbkg6OqlfGHo1nMmcCxO5AinnRTDhWbWsA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" />
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
   <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script> 
    <meta name="keywords" content="Drug Rehabilitation,alcohol addiction,Alcohol Withdrawal,alcohol rehab" />
   <link rel="icon" href="/images/punarvaas-logo-ps-whitebg.png" type="image/gif" sizes="16x16" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all" />
    <link href="css/style3.css" type="text/css" rel="stylesheet" media="all" />
    <!-- font-awesome icons -->
    <link href="/css/fontawesome-all.min.css" rel="stylesheet" />
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Poppins:wght@400;500;600&display=swap"
      rel="stylesheet" />
    

    <style>
        .faqdropdown{
            background: none !important;
    border: none !important;
    font-size: 18px !important;
    cursor: pointer !important;
    outline:none;
        }
        .faqdropdown:focus{
            border: none !important;
            outline:none !important;
        }
        .faqdropdown:active{
            border: none !important;
        }
        .tabcolor{
            border:none;
            outline:none;
            background:none;
               cursor: pointer !important;
        }
        .tabcolor:active{
             border: none !important;
              outline:none !important;
        }
        .tabcolor:focus{
             border: none !important;
            outline:none !important;
        }
    </style>

    <!-- Google tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-239967065-1">
</script>

</head>

<body>
   <!-- banner -->
    <div class="inner-banner" id="home">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary pt-3">

                <h1>
                    <a class="navbar-brand text-white" href="/home">
                       <img src="images/punarvaas-logo-ps-whitebg.png" class="img-thumbnail img-fluid imglogo"  />
                        Punarvaas
                    </a>
                </h1>
                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-lg-auto text-center">
                        <li class="nav-item  mr-3 ">
                            <a class="nav-link text-white" href="/home">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item  mr-3 ">
                            <a class="nav-link text-white text-capitalize " href="/about">about</a>
                        </li>
                        <li class="nav-item  mr-3 ">
                            <a class="nav-link text-white text-capitalize " href="/why-punarvaas">Why Punarvaas</a>
                        </li>
                        <li class="nav-item  mr-3 active ">
                            <a class="nav-link text-white text-capitalize active" href="/how-we-help">How We Help</a>
                        </li>
                        <li class="nav-item dropdown mr-3">
                            <a class="nav-link dropdown-toggle  text-white text-capitalize" href="javascript:void(0)" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                Who We Help
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="/alcohol-treatment">Alcohol Treatment</a>
                               
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="/drug-rehabilitation">Drug Rehabilitation</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link  text-white text-capitalize" href="/contact">contact</a>
                        </li>
                    </ul>
                </div>

            </nav>
        </header>
        <!-- //header -->
        <!-- //container -->
    </div>
    <!-- breadcrumbs -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="/home">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Why Punarvaas?</li>
        </ol>
    </nav>
    <!-- //breadcrumbs -->
    <!-- section-2 -->
    
    <!-- //section-2 -->

   
    <!-- about -->
    <div class="agileits-about py-md-5 py-5" id="services">
        <div class="container py-lg-5">
            <div class="title-section text-center pb-md-5">
                <span style="color:#00aea5;font-size:30px;font-weight: 900;">Punar</span><span style="color:#606165;font-size:30px;font-weight: 900;">vaas</span>
                <h3 class="w3ls-title text-center text-capitalize">How do we help?</h3>
            </div>

          
            
           
                
                <div class="col-md-12 team-text mt-md-0 mt-5">
                  
                   
                    <p class="my-3">Interventions - Any form of addiction can adversely affect them in many aspects, like emotional, physical, mental, and financial. It is also seen there are strains that are developed in their relationships. We at Punarvaas have detailed intervention plans which include both medical intervention as well as non-medical intervention.
                    </p>
                  <p>
                      Residential program - Fighting any kind of addiction be it alcohol or drugs requires commitment, time, and the right environment. We at Punarvaas provide you with the best nourishing environment without any distractions so that you can give your complete undivided attention to getting better. Our highly trained personnel understand you and will support you 24 hours of the day to keep you motivated and keep you on the track of recovery.<br />
A residential program always has a better success rate as the patient has no option of procuring the substance. Here the patient will show withdrawal symptoms. It is at this stage that a 24 hours intervention by experts becomes crucial. This kind of support is only possible in an in-house program that can provide the emotional and physical stability that the patient requires.<br />
We at Punarvaas offer a safe haven that includes well-lit and hygienic accommodation giving a homely atmosphere to the patient. We provide freshly cooked meals that are prepared keeping in mind patient's preference and individual food restrictions.  We provide both non-vegetarian and vegetarian meals and also respect the religious beliefs of everyone living with us.<br />

                  </p>
             
            
            
            
       
    </div>
          
        </div>
    </div>
    <!-- //about -->

       <!-----------------------TABS------------------------>

        

        <!-----------------------TABS end------------------------>
    <!-- blog -->
    
    <section class="blog_w3ls py-lg-5" style="background: #2b3d5c;">
        <div class="container">
            <div class="title-section text-center pb-lg-5">
                <h4></h4>
                <h3 class="w3ls-title text-center text-capitalize" style="color:#fff"> Treatment at Punarvaas</h3>
                <p style="color:#fff">Punarvaas have the best rehabilitation programs in Northeast. We have a lot of experience in helping individuals fight alcohol and drugs. Our reputation precedes us and you can completely trust us with your loved ones. Our treatments in a nutshell.</p>
            </div>
            <div class="row mt-5 pb-lg-5">
                <div class="col-md-4  p-0 my-auto">
                    <img  src="/img/group%20therapy%201.jpg"  class="img-fluid" alt="team-img" />
                </div>
                <div class="col-md-8 team-text mt-md-0 mt-5">
                    <h4 style="color:#fff">Group Therapy </h4>
                    <p class="my-3" style="color:#fff">We at Punarvaas often hold group therapy sessions wherein we encourage our patients to come forward and open up and share. Individuals battling with addictions often tend to ruin their interpersonal and social relationships. Group therapy helps individuals develop communication and socializing skills. Group therapy makes individuals self-aware and helps them build confidence. </p>
                   
                    
                    <ul class="list-group mt-3">
                        <li class="list-group-item border-0" style="color: #fff;">
                          Empathy - People fighting any kind of substance abuse eventually lose their self-esteem. When they interact with people dealing with similar situations, they are able to relate and empathize better. They are able to look into the matter more objectively.</li>
                        <li class="list-group-item border-0" style="color: #fff;">
                           Boost self-esteem and confidence - Group therapy helps people promote a healthy self-image and develop better self-esteem</li>
                      <li class="list-group-item border-0" style="color: #fff;">
                              Exchange of thoughts and ideas - Support groups in rehab centres are great places to brainstorm and learn and get inspired  from each other's day-to-day success stories.</li>
                   
                        </ul>
                  
                </div>
                
            </div>


            <div class="row mt-5 pb-lg-5">
                
                <div class="col-md-8 team-text mt-md-0 mt-5">
                    <h4 style="color:#fff">Individual Therapy </h4>
                    <p class="my-3" style="color:#fff">One-on-one therapy sessions are a very important part of the recovery of the patient. One of the major USPs of our program is our ability to create a trusting habitat for our patients.  This trust that  the patients have on us immensely help in the healing process.</p>
                    <p style="color:#fff">Punarvaas provides you with a highly controlled yet positive space where you can be extremely comfortable. Our therapy sessions are conducted regularly and by highly trained professionals. The psychotherapists and the psychologists that work with us have a huge experience in the fields of de addiction. They will create a positive environment and boost your morale to overcome addiction over a period of time.</p>
                    
                    
                  
                </div>
                <div class="col-md-4 border p-0 my-auto">
                    <img   src="/img/individual%20therapy%202.jpg"  class="img-fluid" alt="team-img" />
                </div>
            </div>

            <div class="row" style="margin-top:30px">
                <div class="col-md-4  p-0 my-auto">
                    <img  src="/img/12%20step%20program.jpg"  class="img-fluid" alt="team-img" />
                </div>
                <div class="col-md-8 team-text mt-md-0 mt-5">
                    <h4 style="color:#fff">Twelve - Step programme </h4>
                    <p class="my-3" style="color:#fff">The Twelve-Step Programme to de-addiction provides a systematic framework to individuals grappling with addiction, helping them identify and accept their challenges and overcome them by reconnecting with their true selves.</p>
                    <p style="color:#fff">Built around the twelve steps laid down by the Alcoholics Anonymous (AA) and Narcotics Anonymous (NA), the Twelve-Step Programme lists twelve distinct de-addiction processes that revolve around self-acceptance, spirituality, oneness with the almighty, and forgiveness.</p>
                    
                    
                  
                </div>
                
            </div>
            
        </div>
    </section>
    <!-- //blog -->
    <section class="blog_w3ls py-lg-5">
        <div class="container">
            <div class="title-section text-center pb-lg-5">
                <h4></h4>
                <h3 class="w3ls-title text-center text-capitalize">Family Program</h3>
            </div>
            <div class="row mt-5 pb-lg-5">
                
                <div class="col-md-8 team-text mt-md-0 mt-5">
                    
                    <p class="my-3">Dealing with a family member suffering from drugs or alcohol can be overbearing for any family. They too require the help, not just to support the individual but also to deal with their own emotional turmoil. The family goes through a lot of hardship and struggles and this is where our foundation’s support becomes invaluable. Our family outreach program helps in the following way.
</p>
                    
                   <ul class="list-group mt-3">
                        <li class="list-group-item border-0" style="color:#777">
                         1.	 A well-informed family has the capability to provide the emotional support that the individual requires. This is very critical when the person goes back home from the rehabilitation centre.</li>
                        <li class="list-group-item border-0" style="color:#777">
                          2.	Family counselling allows the family to realize the struggles and the challenges of the person going through addiction. This helps develop better bonding among the members.</li>
                      <li class="list-group-item border-0" style="color:#777">
                             3.	 Family sessions prove to be very beneficial. The sessions held by our team of experts help answer any questions and doubts that the family might have.</li>
                    <li class="list-group-item border-0" style="color:#777">
                            4.	Time to time presentations and sessions prove to be eye openers as they bring to light many aspects of addiction and de-addiction programs. This empowers them to get a better grasp of the situation.

                    </li>
                        <li class="list-group-item border-0" style="color:#777">
                           5.	Family sessions also give our team a chance to understand the patient’s background. This proves to be very effective in coming up with the right curated treatment plan for them.

                    </li>
                        <li class="list-group-item border-0" style="color:#777">
                          6.	The family gets a platform to share their grievance and also help them resolve issues with the patients. This helps in building mutual trust and goes a long way in the healing process.

                    </li>
                        </ul>
                </div>
                <div class="col-md-4 border p-0 my-auto">
                    <img  src="/img/family%20program%202.jpg"  class="img-fluid" alt="team-img" />
                </div>
            </div>
            
        </div>
    </section>
    
    <!-- testimonials -->
    
    <!-- //testimonials -->

    
    <!-- footer -->
    <footer class="footer py-md-5 pt-md-3 pb-sm-5">
        
        <div class="container-fluid py-lg-5 mt-sm-5">
            <div class="row p-sm-4 px-3 py-5">
                <div class="col-lg-5 col-md-6 footer-top mt-lg-0 mt-md-5">
                    <h2>
                        <a href="#" class="text-theme text-uppercase">
                            Punarvaas
                        </a>
                    </h2>
                     <p class="mt-2 mb-3">Punarvaas is a nurturing home that provides all the support and help to individuals who are trying to recover and heal from different types of addictions.
                    </p>
                    <a href="https://www.facebook.com/punarvaas/" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a>
<a href="https://instagram.com/punarvaas" class="icon-button instagram"><i class="fa-solid fa-instagram"></i><span></span></a>
<a href="https://www.linkedin.com/company/punarvaas" class="icon-button linkedin"><i class="icon-linkedin"></i><span></span></a>
                </div>
                <div class="col-lg-3  col-md-6 mt-lg-0 mt-5">
                    <div class=".footerv2-w3ls">
                        <h3 class="mb-3 w3f_title">Navigation</h3>
                        <hr />
                        <ul class="list-agileits">
                            <li>
                                <a href="/home">
                                    Home
                                </a>
                            </li>
                            <li class="my-2">
                                <a href="/about">
                                    About Us
                                </a>
                            </li>
                            <li class="my-2">
                                <a href="/drug-rehabilitation">
                                    Who We Help
                                </a>
                            </li>
                             <li class="my-2">
                                <a href="/why-punarvaas">
                                   Why Punarvaas
                                </a>
                            </li>
                            <li class="mb-2">
                                <a href="/how-we-help">
                                    How We Help
                                </a>
                            </li>
                            <li>
                                <a href="/contact">
                                    Contact Us
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-lg-0 mt-5">
                    <div class="footerv2-w3ls">
                        <h3 class="mb-3 w3f_title">Contact Us</h3>
                        <hr />
                        <div class="fv3-contact">
                            <span class="fa fa-envelope-open mr-2"></span>
                            <p>
                                <a href="mailto:info@punarvaas.org ">info@punarvaas.org </a>
                            </p>
                        </div>
                        <div class="fv3-contact">
                            <span class="fa fa-envelope-open mr-2"></span>
                            <p>
                                <a href="mailto:punarvaas.rehab@gmail.com">punarvaas.rehab@gmail.com</a>
                            </p>
                        </div>
                        <div class="fv3-contact my-2">
                            <span class="fa fa-phone-volume mr-2"></span>
                            <p>+91 8822780078</p>
                        </div>
                        <div class="fv3-contact my-2">
                            <span class="fa fa-phone mr-2"></span>
                            <p>+91 3613559478</p>
                        </div>
                        <div class="fv3-contact">
                           <%-- <span class="fa fa-map"></span>--%>
                            <p>House No. 38, Dr. R.P. Road,<br /> Besides BJP Office<br /> Opposite Gopal Boro School, 
                                <br />Ganesguri, Guwahati - 781006 ASSAM</p>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <!-- //footer bottom -->
    </footer>
    <!-- //footer -->
    <!-- quick contact -->
    <div class="container">
        <div class="outer-col">
            <div class="heading">Quick Enquiry</div>
           
                <form action="#" method="post" runat="server">
                   <div class="form-col">
                <div >
                    <asp:TextBox ID="txtname" class="form-control" placeholder="Name" runat="server" required=""></asp:TextBox>

                   
                    <asp:TextBox ID="txtemail" class="form-control"  placeholder="Email" runat="server" required=""></asp:TextBox>
                  <asp:RegularExpressionValidator  ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address" ValidationGroup="abc"/>
                   
                    <asp:TextBox ID="txtmobile" class="form-control " placeholder="phone number" runat="server" required=""></asp:TextBox>
                 
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtmobile"  runat="server" ErrorMessage="Invalid Phone Number" ForeColor="Red" Display="Dynamic" ValidationExpression="[0-9]{10}" ValidationGroup="abc"></asp:RegularExpressionValidator>
                    <textarea placeholder="your message"  runat="server" id="messageform" class="form-control mb-1"></textarea>
                    
                    <input type="submit" value="send"  runat="server" class="btn_apt" onserverclick="Unnamed_ServerClick" ValidationGroup="abc" />
                </div>
            </div>
                </form>
          
        </div>
    </div>
    <!-- //quick contact -->
    <!-- copyright -->
    <div class="cpy-right text-center">
        <p style="text-align: center">© 2022 Punarvaas. All rights reserved | Design by
            <a href="https://www.dexterous.in/Best-mobile-app-development-company-in-Hyderabad"> Dexterous Technology.</a>
        </p>
    </div>
    <!-- //copyright -->
    <div class="wp-icon">
        <a href="https://api.whatsapp.com/send?phone=+918822780078"
          ><img src="/img/whatsapp-icon.png" alt=""/>

        </a>
      </div>
    <!-- js -->
    <script src="/js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- Banner Responsiveslides -->
    <script src="/js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider3").responsiveSlides({
                auto: false,
                pager: true,
                nav: false,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <!-- //banner responsive slides -->
    <!-- Flexslider-js for-testimonials -->
    <script src="/js/jquery.flexisel.js"></script>
    <script>
        $(window).load(function () {
            $("#flexiselDemo1").flexisel({
                visibleItems: 1,
                animationSpeed: 1000,
                autoPlay: false,
                autoPlaySpeed: 3000,
                pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                    portrait: {
                        changePoint: 480,
                        visibleItems: 1
                    },
                    landscape: {
                        changePoint: 640,
                        visibleItems: 1
                    },
                    tablet: {
                        changePoint: 768,
                        visibleItems: 1
                    }
                }
            });

        });
    </script>
    <!-- //Flexslider-js for-testimonials -->
     <script src="/js/counter.js"></script>
    <!-- //fixed quick contact -->
    <script>
        $(function () {
            var hidden = true;
            $(".heading").click(function () {
                if (hidden) {
                    $(this).parent('.outer-col').animate({
                        bottom: "0"
                    }, 1200);
                } else {
                    $(this).parent('.outer-col').animate({
                        bottom: "-305px"
                    }, 1200);
                }
                hidden = !hidden;
            });
        });
    </script>
    <!-- //fixed quick contact -->
    <!-- start-smooth-scrolling -->
    <script src="/js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <script src="/js/SmoothScroll.min.js"></script>
    <!-- //end-smooth-scrolling -->
    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/js/bootstrap.js"></script>

     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
