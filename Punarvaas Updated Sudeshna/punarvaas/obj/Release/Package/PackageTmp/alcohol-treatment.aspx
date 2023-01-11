<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alcohol-treatment.aspx.cs" Inherits="punarvaas.alcohol_treatment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Punarvaas || Alcohol-Treatment</title>
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
    text-align:left;
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
             border: none !important;
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
   <!-- banner -->
    <div class="inner-banner" id="home">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary pt-3">

                <h1>
                    <a class="navbar-brand text-white" href="/home">
                       <img src="images/punarvaas-logo-ps-whitebg.png" class="img-thumbnail img-fluid imglogo" />
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
                        <li class="nav-item  mr-3 ">
                            <a class="nav-link text-white text-capitalize" href="/how-we-help">How We Help</a>
                        </li>
                        <li class="nav-item dropdown mr-3 active">
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
            <li class="breadcrumb-item active" aria-current="page">Alcohol-Treatment</li>
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
                <h3 class="w3ls-title text-center text-capitalize">Alcohol Treatment</h3>
            </div>

          
            
           
                
                <div class="col-md-12 team-text mt-md-0 mt-5">
                  
                   
                    <p class="my-3">
                        
                        Alcoholism is a combination of cognitive, behavioural, and physiological factors that are manifested due to an urge to consume alcohol the magnitude of which only increases steadily over the period of time.
Being one of the best alcohol treatment centres in Northeast, our mission is to provide excellent services and holistic support to help you and also your loved ones during these challenging times.

                    </p>
                  <p  class="my-3">
                      An alcoholic (or someone who consumes dangerous levels of alcohol) usually begin as a social drinker. However, if the intake remains unchecked, it takes them little time to go beyond the threshold and enter the arena of dysfunctional drinking. Alcoholism is a serious concern in India. In fact, according to a survey by WHO in 2016, approximately 7% of the surveyed men suffered from alcohol dependence, and about 9.1% of men suffered from alcohol-use disorders in India.
                 Our skilled and experienced team has expertise in a wide range of techniques to address your alcohol problems. As each person has a different psychological makeup, our experts adopt a personalized healing approach to tailor the alcohol treatment process to suit the needs of each individual.
                      </p>
             
            <p  class="my-3">
                Apart from individual therapy, self-help meetings, dietary shifts, counselling, we also provide a peaceful environment to help you reconnect with yourself. At Punarvaas, our skilled medical and clinical team is committed to offering you a safe space to heal and regain your health. Our highly trained staff ensures that your detoxification complies with the latest international scientific detoxification protocols.
We assure you of the full benefit of our centre by developing a collaborative and personal healing atmosphere. Our highly compassionate addiction treatment environments provide you with the ideal setting to address your challenges and achieve full and sustainable recovery.

            </p>
            
            
       
    </div>
          
        </div>
    </div>
    <!-- //about -->

       <!-----------------------TABS------------------------>

        <section class="py-5 w3l-features" style="background:#2b3d5c;">
            <div class="container mainsectin">
                <h3 class="w3ls-title text-center text-capitalize"style="color:#fff">Why choose alcohol rehab?</h3>
                <ul class="nav nav-pills mb-3 justify-space-evenly" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tabcolor  active " id="pills-Personalized-tab" data-bs-toggle="pill" data-bs-target="#pills-Personalized" type="button" role="tab" aria-controls="pills-Personalized" aria-selected="true">The Early Phase</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tabcolor" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">The Middle Phase</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tabcolor" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">The Chronic Phase</button>
                    </li>
                   <%-- <li class="nav-item" role="presentation">
                        <button class="nav-link tabcolor" id="pills-Accessible-tab" data-bs-toggle="pill" data-bs-target="#pills-Accessible" type="button" role="tab" aria-controls="pills-Accessible" aria-selected="false">Easily  Accessible</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tabcolor" id="pills-Experienced -tab" data-bs-toggle="pill" data-bs-target="#pills-Experienced" type="button" role="tab" aria-controls="pills-Experienced" aria-selected="false">Experienced and Knowledgeable Team</button>
                    </li>--%>

                </ul>
                <div class="tab-content w3l-features" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-Personalized" role="tabpanel" aria-labelledby="pills-Personalized-tab">
                        <div class="row main-cont-wthree-2 align-items-center bgcolor m-4 p-2 ">
                            <div class="col-lg-6 left-wthree-img pr-lg-5">
                                <div class="position-relative">
                                  
                                    <img src="/img/alcohol%20rehab%20first%20phase.jpg"  alt="" class="img-fluid radius-image" />
                                </div>
                            </div>
                            <div class="col-lg-6 mt-lg-0 mt-5 about-right-faq align-self">
                                <h5 class="title-subw3hny mb-1"></h5>
                                <%--<h3 class="title-w3l">Personalized Treatment and Care</h3>--%>
                                <p class="mt-1 text-justify" style="color:#fff">
                                 <span class="headspan">High Tolerance:</span> <br /><br />One of the first warning signs of addiction is the development of tolerance. It usually begins when you start consuming a drink or two socially with friends or family. Soon you realize that you need to increase the amount you drink to give a similar effect. 
                               
                                    </p>
                                <br />
                              <p class="mt-1 text-justify" style="color:#fff">
                                 <span class="headspan"> Blackout:</span> <br /><br />Excessive drinking can cause total or partial blackouts. Blackout is a phase when you have no recollection of the events that occurred during a specific period due to over-drinking. The influence of alcohol is so strong that the brain is unable to form memories, making it a form of amnesia.
                              </p>
                                <br />

                                <p class="mt-1 text-justify" style="color:#fff">
                                <span class="headspan">  Having the Drink on Your Mind:</span> <br /><br />As consumption of alcohol develops into a habit, it starts to dominate your thoughts. The preoccupation with alcohol becomes so strong that when you are not drinking, all you can think about are your plans for your next drinking session.
                                </p>
                                <br />
                                <p class="mt-1 text-justify" style="color:#fff">
                                  <span class="headspan"> Avoid the talk:</span> <br /><br />You feel in total control and do not feel the urge to share or talk about your drink cravings. In this phase, you start to avoid talking about your capacity or how frequently you drink.
                                </p>

                               
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                        <div class="row main-cont-wthree-2 align-items-center bgcolor m-4 p-2">
                            <div class="col-lg-6 left-wthree-img pr-lg-5">
                                <h5 class="title-subw3hny mb-1"></h5>
                              <%--  <h3 class="title-w3l">Best Facilities</h3>--%>
                                <p class="mt-4 text-justify" style="color:#fff">
                                 <span class="headspan"> Losing Control:</span><br /><br /> You begin losing control over the amount of alcohol intake and place of consumption. Your craving surpasses societal norms and forces you to start drinking at inappropriate places like your workplace and at any time of the day or night.
                                
                                </p>
                                <br />
                                 <p class="mt-1 text-justify" style="color:#fff">
                                <span class="headspan"> Justifications:</span><br /><br /> You begin justifying your drinking habits to others. you cite various reasons such as stress and unhappiness for reaching for the bottle. You often feel guilty, but you are unable to stop.
                                </p>
                                <br />
                                 <p class="mt-1 text-justify" style="color:#fff">
                                 <span class="headspan">Temporary Abstinence:</span><br /><br /> You realize that your drinking is causing a problem, and you decide to quit only to be defeated by your cravings. Even though you abstain, you are unable to sustain.
                                </p>
                                <br />
                                 <p class="mt-1 text-justify" style="color:#fff">
                                <span class="headspan">Shift in Pattern:</span><br /><br />In this phase, you might even develop an “Addictive logic”. You feel convinced that your behaviour is rational and find ways to justify your self-destructive behaviour. There might be shifts in your drink preferences or the place or time of drinking. You may also project your problems as caused due to the consumption of a particular brand of alcohol.
                                </p>
                            </div>
                            <div class="col-lg-6 mt-lg-0 mt-5 about-right-faq align-self">
                                <div class="position-relative">
                                    
                                    <img src="/img/alcohol%20rehab%20second%20phase.jpg" alt="" class="img-fluid radius-image" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                        <div class="row main-cont-wthree-2 align-items-center bgcolor m-4 p-2">
                            <div class="col-lg-6 left-wthree-img pr-lg-5">
                                <div class="position-relative">
                                    <img src="/img/alcohol%20rehab%20third%20phase.jpg"  alt="" class="img-fluid radius-image" />
                                </div>
                               
                               
                            </div>
                            <div class="col-lg-6 mt-lg-0 mt-5 about-right-faq align-self">
                                <h5 class="title-subw3hny mb-1"></h5>
                               <%-- <h3 class="title-w3l">Conducive Environment</h3>--%>
                                <p class="mt-1 text-justify"style="color:#fff">
                                   <span class="headspan">Binge Drinking:</span><br /><br /> You begin drinking continuously for days without engaging in any other activity. After a binge episode, you experience feelings of guilt and often promise yourself or your family not to touch the bottle again. But you forget this promise as soon as you see any chance of drinking.
                                </p>
                                <br />
                                <p class="mt-1 text-justify"style="color:#fff">
                                 <span class="headspan">Breakdown of Ethics:</span><br /><br /> You don’t care about the source of your drink. You might resort to unethical and often criminal behaviour. You resort to begging, borrowing, or stealing; to keep the supply of alcohol flowing. Your ethical lines are blurred, and your only mission is to drink.
                                </p>
                               <br />
                                 <p class="mt-1 text-justify"style="color:#fff">
                                 <span class="headspan">Paranoia and Hallucinations:</span><br /><br /> In the chronic stage, you may also start showing signs of paranoia. You begin to doubt the people around you continually. You develop deep distrust and might feel people are after your wealth or your life. You might even start to hear voices or see and feel things that do not exist.
                                </p>
                                <br />
                                 <p class="mt-1 text-justify" style="color:#fff">
                               <span class="headspan"> Loss of Motor Skills:</span> Your hangovers are getting worse. Your body shakes and your hands tremble when you’re not drinking, and the only way to stabilize yourself is to reach out for another drink. Drinking is not a choice anymore; it becomes a need to avoid pain and maintain stability.
                                </p>

                                 <p class="mt-1 text-justify" style="color:#fff">
                                <span class="headspan"> Denial:</span> Denial is when you either entirely or partially disregard the existence of your problem. You begin to show the following signs of Denial to avoid addressing the problem:
                                </p>
                                <ul>
                                    <li style="color:#fff">
                                       Avoidance- “I’ll talk about anything but the problem!”
                                    </li>
                                     <li style="color:#fff">
                                      Absolute Denial- “No, not me!”.
                                    </li>
                                     <li style="color:#fff">
                                      Minimizing- “It’s Not That Bad!”.
                                    </li>
                                     <li style="color:#fff">
                                    Rationalizing- “I Have a Good Reason!”.
                                    </li>
                                    <li style="color:#fff">
                                   Blaming- “It’s Not My Fault!”.
                                    </li>
                                </ul>
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
                <h3 class="w3ls-title text-center text-capitalize">Personalized Alcohol Detox Programs at Punarvaas</h3>
            </div>
            <div class="row mt-5 pb-lg-5">
                <div class="col-md-4 border p-0 my-auto">
                    <img  src="img/Personalized%20Alcohol%20Detox%20Programs%20At%20Punarvaas.jpeg"  class="img-fluid" alt="team-img" />
                </div>
                <div class="col-md-8 team-text mt-md-0 mt-5">
                    
                    <p class="my-3">
                        At Punarvaas, we believe that addiction and its treatment differ from one patient to another.  You will have a team of devoted counsellors, physicians, managers, and support workers at every step of your progress. Using their knowledge and expertise, the team will carefully design a detailed alcohol treatment plan to help you overcome addiction. Your mental and physical wellbeing will be our responsibility.
                       
</p>
                    <p class="my-3">
                        We are aware that in most cases alcohol dependence starts as an escape mechanism from extreme stress and anxiety. Our counsellors and therapists relentlessly work with you throughout the alcohol dependence treatment to overcome and effectively resolve the emotional triggers thereby putting an end to the vicious cycle.
                       
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
                <h3 class="w3ls-title text-center text-capitalize" style="color:#fff">Find Alcohol Withdrawal Treatment today!</h3>
            </div>
            <div class="row mt-5 pb-lg-5">
                
                <div class="col-md-8 team-text mt-md-0 mt-5">
                    
                    <p class="my-3" style="color:#fff">Prolonged consumption of alcohol has disastrous effects not only on the physical well-being but also on the mental health of the person. Long abuse of alcohol has a destructive effect on their relationships and their workplace performance. In many cases, we have also seen that it often leads to the beginning of other types of substance abuse like drugs.  So, seeking alcohol withdrawal treatment from professionals is imperative to live a healthy and fulfilling life. Reach out to us at Punarvaas today and let us help you overcome your addiction with maximum ease.
</p>
                    
                   
                </div>
                <div class="col-md-4  p-0 my-auto">
                    <img   src="/img/alcohol%20withdrawal.jpg"  class="img-fluid" alt="team-img" />
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

                            <div class="accordion accordion-flush" id="accordionFlushExample">
                                <div class=" ">
                                    <h2 class="accordion-header" id="flush-headingOne">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                           1.What is alcohol addiction?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Alcohol addiction or alcoholism is a serious condition that rises by excess consumption of alcohol. It poses significant risks to the individual’s physical and mental health. Addiction to alcohol is difficult to overcome due to its psychological and physical effects. It is extremely difficult for a person suffering from alcoholism to overcome the condition on their own. So, we encourage you to connect with centres like ours that will help you overcome alcoholism.</div>
                                    </div>
                                </div>
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingTwo">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                         2.What are the most common signs and symptoms of alcohol addiction?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Some of the most common symptoms of alcohol abuse are:
                                            <ul>
                                                <li class="list">
                                                    Drinking alone or in secrecy
                                                </li>
                                                 <li class="list">
                                                     Experiencing temporary blackouts or short-term memory loss
                                                </li>
                                                 <li class="list">
                                                     Feeling hungover when not drinking
                                                </li>
                                                 <li class="list">
                                                     Exhibiting signs of irritability and extreme mood swings
                                                </li>
                                                 <li class="list">
                                                     Making excuses to drink such as needing to relax or to deal with stress. 
                                                </li>
                                                 <li class="list">
                                                     Choosing to isolate from friends and families.
                                                </li>
                                                 <li class="list">
                                                    Changing appearance and group of acquaintances you hang out with.
                                                </li>
                                            </ul>
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
                <h3 class="w3ls-title text-center text-capitalize">patient's words..</h3>
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
