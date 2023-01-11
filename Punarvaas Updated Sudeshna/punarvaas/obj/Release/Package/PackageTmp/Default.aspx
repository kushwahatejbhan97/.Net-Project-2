<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="punarvaas.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Punarvaas || Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/line-awesome/1.3.0/line-awesome/css/line-awesome.min.css" integrity="sha512-vebUliqxrVkBy3gucMhClmyQP9On/HAWQdKDXRaAlb/FKuTbxkjPKUyqVOxAcGwFDka79eTF+YXwfke1h3/wfg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/line-awesome/1.3.0/font-awesome-line-awesome/css/all.min.css" integrity="sha512-dC0G5HMA6hLr/E1TM623RN6qK+sL8sz5vB+Uc68J7cBon68bMfKcvbkg6OqlfGHo1nMmcCxO5AinnRTDhWbWsA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" />
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
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
    

    
 

    <!-- Font awesome CDN -->
    <style>
        .faqdropdown{
            background: none !important;
    border: none !important;
    font-size: 18px !important;
    cursor: pointer !important;
    outline:none;
    text-align: left;
    color: #fff;
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
             border: none !important; header
              outline:none !important;
        }
        .tabcolor:focus{
             border: none !important;
            outline:none !important;
        }
        .list{
            list-style: circle;
        }
    </style>
    <!-- Google tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-239967065-1">
</script>

</head>

<body>
    <form runat="server">

  
    <!-- banner -->
    <div class="banner" id="home">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary pt-3">

                <h1>
                    <a class="navbar-brand text-white" href="/home">
                       <img src="images/punarvaas-logo-ps-whitebg.png" class="img-thumbnail img-fluid imglogo"  />
                       <span class="headpunarvas"> Punarvaas</span>
                    </a>
                </h1>
                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-lg-auto text-center">
                        <li class="nav-item  mr-3 active">
                            <a class="nav-link text-white active" href="/home">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item  mr-3">
                            <a class="nav-link text-white text-capitalize" href="/about">about</a>
                        </li>
                        <li class="nav-item  mr-3 ">
                            <a class="nav-link text-white text-capitalize" href="/why-punarvaas">Why Punarvaas</a>
                        </li>
                        <li class="nav-item  mr-3 ">
                            <a class="nav-link text-white text-capitalize" href="/how-we-help">How We Help</a>
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
        <div class="container">
            <!-- banner-text -->
            <div class="banner-text">
                <div class="callbacks_container">
                    <ul class="rslides" id="slider3">
                        <li>
                            <div class="slider-info">
                                <span class="">Your Recovery</span>
                                <h3>Fight any addiction</h3>
                                <a class="btn btn-primary mt-3" href="/how-we-help" role="button">View Details</a>
                            </div>
                        </li>
                        <li>
                            <div class="slider-info">
                                <span class="">providing total</span>
                                <h3>Alcohol Treatment</h3>
                                <a class="btn btn-primary mt-3" href="/alcohol-treatment" role="button">View Details</a>
                            </div>
                        </li>
                        <li>
                            <div class="slider-info">
                                <span class="">providing total</span>
                                <h3>Drug Rehabilitation</h3>
                                <a class="btn btn-primary mt-3" href="/drug-rehabilitation" role="button">View Details</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //container -->
    </div>
    <!-- //banner -->
   

   
    <!-- about -->
    <div class="agileits-about py-md-5 py-5" id="services">
        <div class="container py-lg-5">
            <div class="title-section text-center pb-md-5">
                <span style="color:#00aea5;font-size:30px;font-weight: 900;">Punar</span><span style="color:#606165;font-size:30px;font-weight: 900;">vaas</span>
                <h3 class="w3ls-title text-center text-capitalize">Rehabilitation that you can trust</h3>
            </div>

            <div class="row d-flex align-center" >
                
                <div class="col-md-6 p-md-0">
                    <section class="blog_w3ls ">
        <div class="container">
            <div class="title-section text-center ">
                
                <h3 class="w3ls-title text-center text-capitalize"></h3>
            </div>
            <div class="row  ">
               
                <div class="col-md-12  mt-md-0 ">
                   <video  controls="controls" width="100%" height="auto">
  <source src="videos/v.mp4"  type="video/mp4" />
                      
 
</video>
                   
                </div>
                
            </div>
            
        </div>
    </section>
                </div>
                <div class="col-md-6 p-md-0">
                    

                    <div class="col-md-12  mt-md-0 mt-5">
                  
                   
                    <p class="my-3">Punarvaas is a nurturing home that provides all the support and help to individuals who are trying to recover and heal from different types of addictions.
                        Punarvaas is conveniently located in the middle of the city of Guwahati, making it very easy to access. 
                    </p>
                    <p class="my-4">As one of the foremost rehabilitation centres in Assam, we at Punarvaas offer personalized, innovative programs that will help you or your dear ones on the path to sobriety. Our Internationally acclaimed program offers a holistic approach that will heal your body, mind, and soul. We will work with you and help you turn around your attitude and behaviour and assure you of a more fulfilling future. </p>
             
            
            
            
       
    </div>
                </div>
            </div>


            

          
            
           
                
                
          
        </div>
    </div>
    <!-- //about -->
        
       <!-----------------------TABS------------------------>

        <section class="py-5 w3l-features" style="background: #2b3d5c;">
            <div class="container mainsectin">
                <h3 class="w3ls-title text-center text-capitalize" style="color:#fff">Our Premier Services</h3>
                <ul class="nav nav-pills mb-3 justify-space-evenly" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tabcolor  active " id="pills-Personalized-tab" data-bs-toggle="pill" data-bs-target="#pills-Personalized" type="button" role="tab" aria-controls="pills-Personalized" aria-selected="true">Personalized Treatment</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tabcolor" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Best Facilities</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tabcolor" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Conducive Environment</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tabcolor" id="pills-Accessible-tab" data-bs-toggle="pill" data-bs-target="#pills-Accessible" type="button" role="tab" aria-controls="pills-Accessible" aria-selected="false">Easily  Accessible</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tabcolor" id="pills-Experienced -tab" data-bs-toggle="pill" data-bs-target="#pills-Experienced" type="button" role="tab" aria-controls="pills-Experienced" aria-selected="false">Experienced and Knowledgeable Team</button>
                    </li>

                </ul>
                <div class="tab-content w3l-features" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-Personalized" role="tabpanel" aria-labelledby="pills-Personalized-tab">
                        <div class="row main-cont-wthree-2 align-items-center bgcolor m-4 p-2 ">
                            <div class="col-lg-6 left-wthree-img pr-lg-5">
                                <div class="position-relative">
                                    <img src="/img/Personalizedtreatment1.jpg"   alt="Personalizedtreatment1" class="img-fluid radius-image" />
                                </div>
                            </div>
                            <div class="col-lg-6 mt-lg-0 mt-5 about-right-faq align-self">
                                <h5 class="title-subw3hny mb-1"></h5>
                                <h3 class="title-w3l" style="color:#fff">Personalized Treatment and Care</h3>
                                <p class="mt-4 text-justify" style="color:#fff">
                                    Punarvaas provides tailor-made treatment plans catering to each patient’s
                                    specific needs and concerns. Customized treatment 
                                    respects the individuality of each patient giving them the emotional space to
                                    recover at their own pace. This leads to a lifetime of positive change for the 
                                    patient.
                                </p>
                              

                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                        <div class="row main-cont-wthree-2 align-items-center bgcolor m-4 p-2">
                            <div class="col-lg-6 left-wthree-img pr-lg-5">
                                <h5 class="title-subw3hny mb-1"></h5>
                                <h3 class="title-w3l" style="color:#fff">Best Facilities</h3>
                                <p class="mt-4 text-justify" style="color:#fff">
                                   At Punarvaas, we offer the best facilities under one roof so that our patients can exclusively focus on recovery. We provide nutritious food with consideration of dietary restrictions. Our state-of-the-art facility provides well-lit and hygienic living spaces.
                                </p>

                            </div>
                            <div class="col-lg-6 mt-lg-0 mt-5 about-right-faq align-self">
                                <div class="position-relative">
                                    <img src="/img/Best%20facilities%201.jpg" alt="20facilities" class="img-fluid radius-image" />
                                </div>
                               
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                        <div class="row main-cont-wthree-2 align-items-center bgcolor m-4 p-2">
                            <div class="col-lg-6 left-wthree-img pr-lg-5">
                                <div class="position-relative">
                                    <img src="/img/conducive%20environment%201.jpg" alt="environment" class="img-fluid radius-image" />
                                </div>
                                
                            </div>
                            <div class="col-lg-6 mt-lg-0 mt-5 about-right-faq align-self">
                                <h5 class="title-subw3hny mb-1"></h5>
                                <h3 class="title-w3l" style="color:#fff">Conducive Environment</h3>
                                <p class="mt-4 text-justify" style="color:#fff">
                                   The aura and backdrop of Punarvaas exude peace and tranquillity, making it incredibly conducive to healing. Situated at the heart of the Guwahati City, Punarvaas strikes the perfect balance between nature and nurture. The peaceful atmosphere is also conducive to various activities such as yoga and meditation. It provides patients with a secure haven for self-reflection, introspection, and expression.
                                </p>
                               

                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="pills-Accessible" role="tabpanel" aria-labelledby="pills-Accessible-tab">
                        <div class="row main-cont-wthree-2 align-items-center bgcolor m-4 p-2">
                            <div class="col-lg-6 left-wthree-img pr-lg-5">
                                <h5 class="title-subw3hny mb-1"></h5>
                                <h3 class="title-w3l" style="color:#fff">Easily Accessible</h3>
                                <p class="mt-4 text-justify" style="color:#fff">
                                   Located in Ganeshguri, Guwahati, Punarvaas is well-connected by roads, railways, and airways.
                                </p>

                            </div>
                            <div class="col-lg-6 mt-lg-0 mt-5 about-right-faq align-self">
                                <div class="position-relative">
                                   
                                    <img src="/img/easily%20accesible.png"  alt="accesible" class="img-fluid radius-image" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-Experienced" role="tabpanel" aria-labelledby="pills-Experienced-tab">
                        <div class="row main-cont-wthree-2 align-items-center bgcolor m-4 p-2">
                            <div class="col-lg-6 left-wthree-img pr-lg-5">
                                <div class="position-relative">
                                   
                                    <img src="/img/knowledgable%20team.jpg"  alt="" class="img-fluid radius-image" />
                                </div>
                               
                            </div>
                            <div class="col-lg-6 mt-lg-0 mt-5 about-right-faq align-self">
                                <h5 class="title-subw3hny mb-1"></h5>
                                <h3 class="title-w3l" style="color:#fff">Experienced and Knowledgeable Team</h3>
                                <p class="mt-4 text-justify" style="color:#fff">
                                   Our team of expert mental health specialists have extensive experience in the field of helping patients overcome addictions. They are empathetic listeners and can provide the patients with a haven to help them open up and connect. This emotional support that the patient gets goes a long way in the path of recovery.
                                </p>
                               

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-----------------------TABS end------------------------>
    <!-- blog -->
    <section class="blog_w3ls py-lg-5">
        <div class="container">
            <div class="title-section text-center pb-lg-5">
                <h4></h4>
                <h3 class="w3ls-title text-center text-capitalize"></h3>
            </div>
            <div class="row mt-5 pb-lg-5">
                <div class="col-md-4  p-0 my-auto">
                    <img  src="/img/our-mission-vision.png" class="img-fluid" alt="team-img" />
                   
                </div>
                <div class="col-md-8 team-text mt-md-0 mt-5">
                     <h4>Our Mission</h4>
                    <p class="my-3">Punarvaas was established with the mission to help individuals recover from substance abuse and addiction problems and guide them to the path of good health and emotional well-being.
 Our mission is to train each & every one of them to live a life filled with happiness and contentment. Our program motivates our brothers to rebuild their lives and carry out their duties towards their families and society with utmost sincerity.
</p>
                      <h4>Our Vision</h4>
                    <p class="my-3">Our vision is that everyone in our care finds a better way of life – free from addictions of any kind. Punarvaas is the go-to rehab centre in Guwahati, Assam where individuals and families put their trust to bring about positive constructive changes in the lives of their loved ones.
</p>
                   
                </div>
                
            </div>
            
        </div>
    </section>
    <!-- //blog -->
    <section class="blog_w3ls py-lg-5" style="background: #2b3d5c;">
        <div class="container">
            <div class="title-section text-center pb-lg-5">
                <h4></h4>
                <h3 class="w3ls-title text-center text-capitalize" style="color:#fff">Why Place Your Recovery in Our Hands?</h3>
            </div>
            <div class="row mt-5 pb-lg-5">
                
                <div class="col-md-8 team-text mt-md-0 mt-5">
                    
                    <p class="my-3" style="color:#fff">Fighting any form of addiction requires dedication and determination. Expert care and adequate facilities are very important to make the process convenient and effective.

Our knowledge in the fields of mental health and rehabilitation has made us stand out. We understand that the healing process is not the same for all individuals and so we strive to provide focused, exclusive facilities and personalized treatment that cater to every individual’s requirement. Our integrated yoga and meditation also add to the success of the program.
</p>
                    
                   
                </div>
                <div class="col-md-4  p-0 my-auto">
                   <img  src="/img/why-us-png-3.png" class="img-fluid whyimage" alt="team-img" />
                </div>
            </div>
            
        </div>
    </section>


   <!--gallery-->
    <div class="gallery  py-5" id="gallery">
        <div class="container py-md-5">
            <div class="title-section text-center pb-5">
               
                <h3 class="w3ls-title text-center text-capitalize">Team Punarvaas</h3>
            </div>
            <div class="row w3ls_gallery_grids">
                <div class="row w3_agile_gallery_grid pt-lg-5">

                    <div class="col-sm-4 agile_gallery_grid" style="height:480px">
                        <a title="Start Improving Your Business Today." href="/team/IMG_2804.JPG">
                            <div class="agile_gallery_grid1">
                                <img src="/team/IMG_2804.JPG" alt=" " class="img-fluid teamimg" />
                                
                            </div>
                        </a>
                         <h5 class="w3ls-title text-capitalize">
                           vikas Goenka
                        </h5>
                        <span>
                           Project director
                        </span>
                    </div>

                    <div class="col-sm-4 agile_gallery_grid" style="height:480px">
                        <a title="Start Improving Your Business Today." href="team/new.png">

                            <div class="agile_gallery_grid1">
                                <img src="team/newgirl.jpg" alt=" " class="img-fluid teamimg" />
                                
                               
                                
                            </div>
                        </a>
                         <h5 class="w3ls-title text-capitalize">
                          Shaswati Phukan
                        </h5>
                        <span>
                          Counsellor
                        </span>
                    </div>
                    <div class="col-sm-4 agile_gallery_grid" style="height:480px">
                        <a title="Start Improving Your Business Today." href="/team/20220211130257_IMG_3813-01.jpeg">
                            <div class="agile_gallery_grid1">
                                <img src="/team/20220211130257_IMG_3813-01.jpeg"  alt=" " class="img-fluid teamimg" />
                                
                            </div>
                        </a>
                        <h5 class="w3ls-title text-capitalize">
                            Dhiraj Kalita
                        </h5>
                        <span>
                            Centre in charge
                        </span>
                    </div>
                    
                    
                    
                </div>
                <div class="row w3_agile_gallery_grid">
                    <div class="col-sm-4 agile_gallery_grid" style="height:480px">
                        <a title="Start Improving Your Business Today." href="/team/IMG_20220211_125158.jpg">
                            <div class="agile_gallery_grid1">
                                <img src="team/dr.jpg" alt=" " class="img-fluid " />
                               
                            </div>
                        </a>
                         <h5 class="w3ls-title text-capitalize">
                          Dr Jyotirmoy Das 
                        </h5>
                        <span>
                          Doctor
                        </span>
                    </div>
                    
                    <div class="col-sm-4  agile_gallery_grid" style="height:480px">
                        <a title="Start Improving Your Business Today." href="/team/20220211130608_IMG_3828-01.jpeg">
                            <div class="agile_gallery_grid1">
                                <img src="/team/20220211130608_IMG_3828-01.jpeg" alt=" " class="img-fluid "  />
                                
                            </div>
                        </a>
                         <h5 class="w3ls-title text-capitalize">
                          Lima Bora
                        </h5>
                        <span>
                        Admin
                        </span>
                    </div>


                    <div class="col-sm-4  agile_gallery_grid" style="height:480px">
                        <a title="Start Improving Your Business Today." href="/team/20220211130608_IMG_3828-01.jpeg">
                            <div class="agile_gallery_grid1">
                                <img src="team/sole.jpg" alt=" " class="img-fluid "  />
                                
                            </div>
                        </a>
                         <h5 class="w3ls-title text-capitalize">
                          Bao Sale
                        </h5>
                        <span>
                        Advisor
                        </span>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <!--//gallery-->


        
    <section class="w3l-features y-5" style="background: #2b3d5c">
            <div class="w3l-servicesblock2" id="services">
                <section id="grids5-block" class="py-5">
                    <div class="container py-lg-5 py-md-4 py-2">
                        <h5 class="title-subw3hny text-center"></h5>
                        <h3 class="title-w3l text-center" style="color:#fff">Frequently asked questions ?</h3>
                        <div class=" mt-lg-5 mt-4 text-justify">

                            <div class="row accordion accordion-flush" id="accordionFlushExample">

                            <div class="col-md-6">

                                <div class=" ">
                                    <h2 class="accordion-header" id="flush-headingOne">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                            1. What are the benefits of residential rehabilitation ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Rehabilitation is a systematic process that requires consistency and determination. A residential rehabilitation program can help individuals stay focused throughout the process, following a disciplined lifestyle, and substituting the addictive behaviors with productive ones. Moreover, a rehab center like Punarvaas helps its patients make major lifestyle changes by incorporating various daily activities such as one-on-one therapy sessions, Yoga, meditation, educational lectures, self-reflection, workbook completion, group discussions, etc. We also closely monitor patients’ physical, mental, and emotional wellbeing and suggest necessary interventions.</div>
                                    </div>
                                </div>
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingTwo">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                            2. Is family therapy effective ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Recovery and rehabilitation are possible only when one has a strong support system. A person’s family is the first social circle one typically interacts with; consequently, family support plays a key role in a person’s emotional and social wellbeing. Having said that, the rehabilitation journey can be just as arduous for the patient’s family members. In such situations, the family also requires as much support and guidance as the affected individual. Punarvaas provides comprehensive family support, therapy, and counseling, helping the patient’s loved ones understand his needs, requirements, state of mind and practice empathy. </div>
                                    </div>
                                </div>
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                            3. Do you incorporate food restrictions into the patient’s meal plans ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Yes, we are dedicated to providing wholesome, nutritious meals with due consideration of specific food requirements and dietary restrictions. Our expert cook prepares the recipes for every patient based on his/her dietary specifications. We also incorporate religious restrictions into our daily meal plans.</div>
                                    </div>
                                </div>

                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingFour">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                                            4. What detox process do you follow ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFour" class="accordion-collapse collapse " aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Detoxing is the primary and one of the most crucial steps in overcoming addiction. We at Punarvaas offer the emotional and medical intervention required to the tenets to help them achieve this important milestone. The process involves breaking the cycle of addiction and encouraging the patients to choose a healthier lifestyle.</div>
                                    </div>
                                </div>

                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingFive">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                                            5. What is the Twelve-Step Programme ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">The Twelve-Step Programme is one of the most renowned interventions for rehabilitation and de-addiction. Built upon the Twelve Steps by Alcoholics Anonymous (AA) and Narcotics Anonymous (NA), this program primarily focuses on personal reflection, exercise, study, clean living and exercise. Psychological research suggests that the Twelve-Step Programme can provide individuals with emotional support during the most turbulent phases of their rehabilitation period. It also involves meditation and introspection, facilitating the individual’s spiritual journey. Typically, a patient’s day begins with yoga and meditation and ends with meditation and self-reflection. Such a comprehensive program helps them to befriend themselves and become more conscious of their thoughts and behaviors.</div>
                                    </div>
                                </div>
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingSix">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
                                            6.  How do you integrate different religious beliefs and ideologies into the rigid principles of the Twelve-Step Programme ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">While the Twelve-Step Program incorporates a religious outlook towards healing and consciousness. Our programs are curated to include people of different religious standings. We believe that spirituality is not synonymous with religion and spiritual awakening may be attained even when one does not believe in God and religion.</div>
                                    </div>
                                </div>
                            </div>

                                  <div class="col-md-6">

                                    
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingNINE">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseNINE" aria-expanded="false" aria-controls="flush-collapseNINE">
                                            9. What other conditions do you treat besides addiction ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseNINE" class="accordion-collapse collapse" aria-labelledby="flush-headingNINE" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">While Punarvaas exclusively deals with alcohol and substance abuse we understand that these behaviors may stem from or trigger other underlying and co-existing conditions such as anxiety, depression, trauma, anger management issues, etc. Our qualified and experienced psychiatrists, psychologists, and counselors identify these conditions and provide unconditional acceptance to the patients and their family members. As part of their rehabilitation plans, they incorporate remedial actions to these behaviors and help patients overcome the same gradually and systematically.</div>
                                    </div>
                                </div>
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingTEN">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTEN" aria-expanded="false" aria-controls="flush-collapseTEN">
                                            10. What belongings should I carry with me to Punarvaas ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTEN" class="accordion-collapse collapse" aria-labelledby="flush-headingTEN" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Before you visit Punarvaas, we guide you with the belongings you would need to carry with you. Broadly, one would need to carry comfortable clothes and footwear. We provide all the other essentials, including toiletries, stationery, towels, bed linen, etc. However, you may carry these belongings if you would like to use products manufactured by specific brands.</div>
                                    </div>
                                </div>
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingEleven">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEleven" aria-expanded="false" aria-controls="flush-collapseEleven">
                                            11. Does it have a peaceful environment ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseEleven" class="accordion-collapse collapse" aria-labelledby="flush-headingEleven" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Situated at the heart of Guwahati City, the place provides the perfect backdrop for recovery and healing. Our infrastructure is built to create a perfect place for one to practice yoga or meditate in peace. Apart from that our rooms are well ventilated to create a perfect haven for you to heal.</div>
                                    </div>
                                </div>
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingTWL">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTWL" aria-expanded="false" aria-controls="flush-collapseTWL">
                                            12. How and when should I make the payment ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTWL" class="accordion-collapse collapse" aria-labelledby="flush-headingTWL" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Patients can pay the fees through any of the different payment modes, including cash, net banking, credit/debit cards, and cheques. Our administration panel provides all the required assistance during the payment process. Patients must complete the transaction procedure before checking into the center.</div>
                                    </div>
                                </div>
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingTWN">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTWN" aria-expanded="false" aria-controls="flush-collapseTWN">
                                            13. How do I reach Punarvaas ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTWN" class="accordion-collapse collapse" aria-labelledby="flush-headingTWN" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">
                                            Punarvaas is located within the heart of Guwahati City.
 House No: 38, Dr. RP Road, Opp. Gopal Boro School, Ganeshguri, Guwahati – 781006
 We are well-connected to Guwahati via railways and airways. We offer all assistance to ensure that you reach Purnavaas without any hassles 
                                        </div>
                                    </div>
                                </div>
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingFNT">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFNT" aria-expanded="false" aria-controls="flush-collapseFNT">
                                            14. How do I get in touch with Punarvaas ?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFNT" class="accordion-collapse collapse" aria-labelledby="flush-headingFNT" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Give us a call and we are there for you.  When individuals contact us for the first time, we make sure to hear them out and understand their state of mind. Based on the severity of the situation, our mental-health professionals provide immediate support if required, even as we prepare extensive rehabilitation plans to help you during your residential or outpatient treatment. You can reach out to us anytime via phone, email, or the message section in our contact us section.</div>
                                    </div>
                                </div>
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingFIFTEN">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFIFTEN" aria-expanded="false" aria-controls="flush-collapseFIFTEN">
                                            15. Do you provide post-treatment care and help prevent relapse ? 
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFIFTEN" class="accordion-collapse collapse" aria-labelledby="flush-headingFIFTEN" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Yes. Even after you successfully complete the rehabilitation program with us, we continue staying in contact with you and making regular updates. If required, we provide plans to help you integrate yourself with your schedule while continuing to abstain from the stimulant. Towards the end of the treatment, we also ensure relapse prevention, helping you continue on the path of abstinence and healing.</div>
                                    </div>
                                </div>
                                  </div>
                               
                            </div>

                        </div>
                    </div>
                </section>
            </div>
        </section>

      


    <!-- testimonials -->
    <div class="testimonials section" id="testimonials">
        <div class="container-fluid p-0">
            <div class="wthree_testimonials_grid_main title-section text-center pb-lg-5">
                <h4>Testimonials</h4>
                <%--<h3 class="w3ls-title text-center text-capitalize">patient's words..</h3>--%>
                <ul id="flexiselDemo1" class="pt-lg-0 pt-5">
                    <li>
                        <div class="wthree_testimonials_grid_main">
                            <div class="row">
                                <div class="col-lg-6 wthree_testimonials_grid">
                                    <p>
                                       "The people who take care of the  patients were already suffered from Alcoholism that's the best part of Punarvaas."
                                    </p>
                                    <div class="wthree_testimonials_grid_pos">
                                        <div class="row">
                                            <div class="col-3 grid-test-w3l">
                                                <img src="img/user-circle-icon.png" alt=" " class="img-fluid" />
                                            </div>
                                            <div class="col-9 wthree_testimonials_grid1">
                                                <h5>Ujjwal Agrwal</h5>
                                                <%--<p>lacinia</p>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6  wthree_testimonials_grid mt-lg-0 mt-5">
                                    <p>
                                       "We are having a very good experience with them. The people who take care of the patients Sir Bao is a great man."

                                    </p>
                                    <div class="wthree_testimonials_grid_pos">
                                        <div class="row">
                                            <div class="col-3 grid-test-w3l">
                                                <img src="img/user-circle-icon.png" alt=" " class="img-fluid" />
                                            </div>
                                            <div class="col-9 wthree_testimonials_grid1">
                                                <h5>Somali Kalita</h5>
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="wthree_testimonials_grid_main">
                            <div class="row">
                                <div class="col-lg-6 wthree_testimonials_grid">
                                    <p>
                                       "Best rehabilitation center 🙏 thanks to all .
Had a good time with all 😇..........patients overcome their problems easily."
                                    </p>
                                    <div class="wthree_testimonials_grid_pos">
                                        <div class="row">
                                            <div class="col-3 grid-test-w3l">
                                                <img src="img/user-circle-icon.png" alt=" " class="img-fluid" />
                                            </div>
                                            <div class="col-9 wthree_testimonials_grid1">
                                                <h5>Dip Kalita</h5>
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6  wthree_testimonials_grid mt-lg-0 mt-5">
                                    <p>
                                      "This place is the best place for someone who wants to live life fully and I recommend punarvaas to people for learning how to face their problems."
                                    </p>
                                    <div class="wthree_testimonials_grid_pos">
                                        <div class="row">
                                            <div class="col-3 grid-test-w3l">
                                                <img src="img/user-circle-icon.png" alt=" " class="img-fluid" />
                                            </div>
                                            <div class="col-9 wthree_testimonials_grid1">
                                                <h5>R.Saraf</h5>
                                               
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                   
                </ul>
            </div>
        </div>
    </div>
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

     <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script> 
        <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
      
  </form>
</body>
</html>
