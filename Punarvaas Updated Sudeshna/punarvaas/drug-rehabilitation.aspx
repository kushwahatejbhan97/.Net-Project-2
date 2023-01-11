<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="drug-rehabilitation.aspx.cs" Inherits="punarvaas.drug_rehabilitation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Punarvaas || Drug-Treatment</title>
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
            margin-left: 20px;
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
            <li class="breadcrumb-item active" aria-current="page">Drug-Rehabilitation</li>
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
                <h3 class="w3ls-title text-center text-capitalize">Drug Rehabilitation</h3>
            </div>

          
            
           
                
                <div class="col-md-12 team-text mt-md-0 mt-5">
                  
                   
                    <p class="my-3">
                        
                        Contrary to the belief, addiction is not a bad habit or an indulgence but often a medical condition that the patient has no control to stay away from drugs and substance abuse.
                    </p>
                  <p  class="my-3">
                     An addict is a person that requires intervention and professional help to recover. Drug abuse can lead to a host of devastating and irreversible problems in the person’s life. It not only can have a detrimental impact on a person’s physical and mental being but can also severely affect their ability to function daily. It impairs their relationships, depletes their work performance, and tarnishes their quality of life.
                      </p>
             
            <p  class="my-3">
               We at Punarvaas take pride in providing state-of-art facilities and services that are highly personalized to your needs. We understand that fighting addiction can seem like an impossible task but we will enable you physically and mentally so that you are able to overcome the problem. We firmly believe that recovery is possible for everyone. We devote ourselves to offering each person the best chance of leading a fulfilling and exciting life of sobriety.
            </p>
            
            
       
    </div>
          
        </div>
    </div>
    <!-- //about -->

      
    <!-- blog -->
    
    <section class="blog_w3ls py-lg-5" style="background: #2b3d5c;">
        <div class="container">
            <div class="title-section text-center pb-lg-5">
                <h4></h4>
                <h3 class="w3ls-title text-center text-capitalize text-white">Why choose drug rehabilitations</h3>
            </div>
            <div class="row mt-5 pb-lg-5">
                <div class="col-md-4 border p-0 my-auto">
                    <img  src="/img/why%20choose%20drug%20rehab.jpg"   class="img-fluid" alt="team-img" />
                </div>
                <div class="col-md-8 team-text mt-md-0 mt-5">
                    <h4 class="text-white">Sourcing of the drugs </h4>
                    <p class="my-3 text-white">
                       An addict rarely cares about the source of drugs. They might resort to all sorts of immoral behaviour to ensure a steady supply of drugs. Ethical lines are blurred and they are only concerned about getting their next fix.
</p>
                   <h4 class="text-white">Paranoia and Hallucinations </h4>
                    <p class="my-3 text-white"">
                     Addicts can show signs of paranoia and hallucinations. They often develop irrational distrust towards people. In more severe cases, addicts start hearing and seeing things that do not exist.
</p>
                     <h4 class="text-white">Loss of Motor Skills </h4>
                    <p class="my-3 text-white">
                      Owing to the long periods of drug abuse, the addict starts showing loss of motor like trembling of hands when they are not under the influence of drugs. At this point consuming drugs is no longer a choice but an escape from physical and mental discomfort.
</p>
                   
                </div>
                
            </div>
            
        </div>
    </section>
    <!-- //blog -->
    <section class="blog_w3ls py-lg-5">
        <div class="container">
            <div class="title-section text-center pb-lg-5">
                <h4></h4>
                <h3 class="w3ls-title text-center text-capitalize">Signs of drug addictions</h3>
            </div>
            <div class="row mt-5 pb-lg-5">
                
                <div class="col-md-8 team-text mt-md-0 mt-5">
                    <h4>Drug tolerance:</h4>
                    <p class="my-3">The individual needs to use more of the drug to experience the same effects they used to attain with smaller quantities and less frequent consumptions. 
</p>
                    <h4>Using to avoid or relieve withdrawal symptoms:</h4>
                     <p class="my-3">The individual needs to use more of the drug to experience the same effects they used to attain with smaller quantities and less frequent consumptions. 
</p>
                     <h4>Loss of control over drug use:</h4>
                     <p class="my-3">Even when individuals understand the ill effect of drugs, they are unable to control the urge.
</p>
                    <h4>Life revolves around drug use: </h4>
                     <p class="my-3">The individual spends a lot of time using and thinking about drugs, figuring out how to get them, or recovering from the drug’s effects. They are no longer interested in any kind of social and family activities.
</p>
                   
                </div>
                <div class="col-md-4 border p-0 my-auto">
                    <img  src="/img/drug-addiction-signs.jpg" class="img-fluid" alt="team-img" />
                </div>
            </div>
            
        </div>
    </section>

    <section class="blog_w3ls py-lg-5" style="background: #2b3d5c;">
        <div class="container">
            <div class="title-section text-center pb-lg-5">
                <h4></h4>
                <h3 class="w3ls-title text-center text-capitalize"style="color:#fff">Treatment Process</h3>
            </div>
            <div class="row mt-5 pb-lg-5">
                
                <div class="col-md-12 team-text mt-md-0 mt-5">
                  
                    <p class="my-3"style="color:#fff">We follow the internationally acclaimed Twelve- Step program that will help in intensive reflection, mindful learning, clean living that will include regular exercise and meditations. All these will ensure that you are able to live a life free of dependency on drugs. The Twelve-Step Program framework is based on a secular belief and accommodates all types of religion and beliefs.
</p>
                   
                    
                     <p class="my-3"style="color:#fff">Our treatment is based on the understanding that each individual is unique and we know that two addictions are the same.  We curate specific treatment plans based on your individualistic requirements giving you the best chance to recover and lead a meaningful life without the desire to consume drugs. You will have a dedicated group of counsellors, physicians, managers, care workers who will be there with you at every step of the recovery. They will leave no stone unturned to ensure that you get the best out of the program, heal completely and also be able to sustain in the long run.
</p>
                    <h4 style="color:#fff">Focus on mental health</h4>
                     <p class="my-3" style="color:#fff">Drugs have an adverse effect on the mental health of the person. Our team of experts takes special care to work on your mental health. Our rehabilitation approach has various types of interventions, like group discussions, one-on-one therapy, etc. Our ultimate goal is to uplift your mental health so that you can develop the strength to sustain yourself emotionally without being dependent on any kind of substance.
</p>
                   
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
                        <h3 class="title-w3l text-center text-white">Frequently asked questions ?</h3>
                        <div class=" mt-lg-5 mt-4 text-justify">

                            <div class="accordion accordion-flush" id="accordionFlushExample">
                                <div class=" ">
                                    <h2 class="accordion-header" id="flush-headingOne">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                           1.	What is drug addiction?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Drug addiction is a psychological condition where a person is no longer able to control the urge to consume drugs. They become dependent and have a compulsive need to take drugs no matter the effect that it has on their physical or mental well-being. Their relationships are strained as they only care about getting their next fix.</div>
                                    </div>
                                </div>
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingTwo">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                      2.	What types of drugs are treated in Punarvaas?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">We treat almost all kinds of drug abuse here. Please contact us so that we can give you further information.
                                            
 </div>
                                    </div>
                                </div>
                                
                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                       3. What causes drug abuse?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Although the reasons for drug abuse may be different in each individual research have loosely narrowed it down to 3 main reasons:
                                            <ul>
                                                <li class="list">
                                                  Peer pressure - Many times it is seen that a person tries out drugs as a way to ‘experiment’ or ‘to fit in’ or ‘be cool’ and before they know it, they are dependent.
                                                </li>
                                                 <li class="list">
                                                   Trauma - It is often seen that people often resort to drugs to escape unpleasant physical or mental trauma. They find drugs to give them the temporary euphoria that they consider ‘happiness’.  Soon the quantity they require to get this feeling increases and before they know it, they are already addicts.
                                                </li>
                                                 <li class="list">
                                                   Low Income - Surveys have revealed that the frustration and the daily struggle of the people who are unable to create financial stability for themselves often tend to find solace in drugs.  
                                                </li>
                                                
                                            </ul>
 </div>
                                    </div>
                                </div>
                             
                                  <div class="">
                                    <h2 class="accordion-header" id="flush-headingFour">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                                            4. What are the ways to deal with the initial stages of drug addiction?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFour" class="accordion-collapse collapse " aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">Medical intervention and step-by-step rehabilitation have proven to be the most effective treatment for drug abuse. Both voluntary and involuntary admission to the rehab centre and spending the required hours there gives positive results. An individual-specific treatment plan that we have at the Punarvaas, looks into all the aspects of health and gives you the highest chance to recover.</div>
                                    </div>
                                </div>

                                <div class="">
                                    <h2 class="accordion-header" id="flush-headingFive">
                                        <button class="accordion-button headingFAQ collapsed faqdropdown" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                                            5. Can drug addiction be cured?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body mb-2 faqanswers">With the right kind of intervention and help, drug addiction can be cured. We at Punarvaas will create a plan that will provide you with the mental and physical strength to overcome the urge. Our dedicated and individual treatment plan will help you slowly reverse all the effects of drug abuse from your body.</div>
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
</body></html>
