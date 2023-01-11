<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HimsIndia.Models.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
    <!-- google font -->
    <link href="//fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"/>
        rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
</head>
<body>
    <form id="form1" runat="server">
        <section class="w3l-aboutblock1 pt-lg-5 pt-2 pb-5" id="about">
        <div class="container py-md-5 py-4">
             <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>
                    <div class="row align-items-center">

                            </HeaderTemplate>

                        <ItemTemplate>
           
                <div class="col-lg-4">
                    <div class="position-relative">
                       
                        <img src="/Admin/Model/<%# Eval("Image1") %>" alt="" class="radius-image img-fluid">
                    </div>
                </div>
                <div class="col-lg-8 ps-lg-5 mt-lg-0 mt-5">
                   

                             <h5 class="title-small mb-1">My Intro</h5>



                    <h3 class="title-style">About Me</h3>
                    <p class="mt-3"> <%# Eval("Skills")%></p>
                    <div class="my-info mt-md-5 mt-4">
                        <ul class="single-info">
                            <li class="name-style">Name</li>
                            <li>:</li>
                            <li>
                                <p> <%# Eval("FirstName")%>  <%# Eval("LastName")%></p>
                            </li>
                        </ul>
                        <ul class="single-info">
                            <li class="name-style">Number</li>
                            <li>:</li>
                            <li>
                                <p><%# Eval("Phone")%></p>
                            </li>
                        </ul>
                <div class="col-lg-4 col-md-6 item">
                        <ul class="single-info">
                            <li class="name-style">Gender</li>
                            <li>:</li>
                            <li>
                               <p><%# Eval("Gender")%></p>

                            </li>
                        </ul>
                   
                </div>

                        <ul class="single-info">
                            <li class="name-style">Email</li>
                            <li>:</li>
                            <li>
                                <p><a href="mailto:maryateer@mail.com"><%# Eval("Email")%></a></p>
                            </li>
                        </ul>
                        <ul class="single-info">
                            <li class="name-style">City</li>
                            <li>:</li>
                            <li>
                                <p><%# Eval("City")%></p>
                            </li>
                        </ul>
                        <ul class="single-info">
                            <li class="name-style">Country</li>
                            <li>:</li>
                            <li>
                                <p><%# Eval("Country")%></p>
                            </li>
                        </ul>
                        <ul class="single-info">
                            <li class="name-style">Address</li>
                            <li>:</li>
                            <li>
                                <p><%# Eval("Address")%> </p>
                            </li>
                        </ul>
                        <br />

                          
                    </div>
                     <a href="#download" class="btn btn-style mt-5">Download CV</a>
                      
                </div>
            

                               </ItemTemplate>
                        <FooterTemplate>
                   
                            </div>
                            </FooterTemplate>
                        </asp:Repeater>
        </div>
    </section>
   
        <section class="w3l-servicesblock1 py-5" id="services">
             <asp:Repeater ID="Repeater2" runat="server">
                 <HeaderTemplate>
        <div class="container py-md-5 py-4">
            </HeaderTemplate>
                 <ItemTemplate>
            <div class="title-heading-w3 text-center mb-sm-5 mb-4">
                <h5 class="title-small mb-1">Know More?</h5>
                <h3 class="title-style">Models Personal Information</h3>
            </div>
            <%-- [Height], [DressSize], [Waist], [ShoeSize], [HairColor], [Weight], [Chest], [Hips], [EyeColor], [SkinColor] FROM [Applications]--%>  
            <div class="w3-services-grids py-lg-4">
                
                <div class="fea-gd-vv row">
                    <div class="col-lg-3 col-md-6">
                        <div class="feature-gd icon-yellow">
                            <div class="icon">
                                <i class="fas fa-laptop"></i>
                            </div>
                            <div class="icon-info">
                                <a href="javascript:void(0)">Height </a>
                                <h5><%# Eval("Height")%></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-md-0 mt-4">
                        <div class="feature-gd icon-vilot">
                            <div class="icon">
                                <i class="fas fa-mobile-alt"></i>
                            </div>
                            <div class="icon-info">
                                <a href="javascript:void(0)">Weight</a>
                                <h5><%# Eval("Weight")%></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-lg-0 mt-md-5 mt-4">
                        <div class="feature-gd icon-blue">
                            <div class="icon">
                                <i class="fab fa-android"></i>
                            </div>
                            <div class="icon-info">
                                <a href="javascript:void(0)">Waist</a>
                                <h5><%# Eval("Waist")%></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-lg-0 mt-md-5 mt-4">
                        <div class="feature-gd icon-red">
                            <div class="icon">
                                <i class="fab fa-php"></i>
                            </div>
                            <div class="icon-info">
                                <a href="javascript:void(0)">Hip</a>
                                <h5><%# Eval("Hips")%></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-md-5 mt-4">
                        <div class="feature-gd icon-light-green">
                            <div class="icon">
                                <i class="fab fa-apple"></i>
                            </div>
                            <div class="icon-info">
                                <a href="javascript:void(0)">Eye-Color </a>
                                <h5><%# Eval("EyeColor")%></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-md-5 mt-4">
                        <div class="feature-gd icon-light-blue">
                            <div class="icon">
                                <i class="fas fa-code"></i>
                            </div>
                            <div class="icon-info">
                                <a href="javascript:void(0)">Hair-Color </a>
                                <h5><%# Eval("HairColor")%></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-md-5 mt-4">
                        <div class="feature-gd icon-dark-green">
                            <div class="icon">
                                <i class="fas fa-link"></i>
                            </div>
                            <div class="icon-info">
                                <a href="javascript:void(0)">Skin-Color</a>
                                <h5><%# Eval("SkinColor")%></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-md-5 mt-4">
                        <div class="feature-gd icon-pink">
                            <div class="icon">
                                <i class="fas fa-code-branch"></i>
                            </div>
                            <div class="icon-info">
                                <a href="javascript:void(0)">Shoe-Size</a>
                                <h5><%# Eval("ShoeSize")%></h5>
                            </div>
                        </div>
                    </div>
                       <div class="col-lg-3 col-md-6 mt-md-5 mt-4">
                        <div class="feature-gd icon-dark-green">
                            <div class="icon">
                                <i class="fas fa-link"></i>
                            </div>
                            <div class="icon-info">
                                <a href="javascript:void(0)">Chest</a>
                                <h5><%# Eval("Chest")%></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-md-5 mt-4">
                        <div class="feature-gd icon-pink">
                            <div class="icon">
                                <i class="fas fa-code-branch"></i>
                            </div>
                            <div class="icon-info">
                                <a href="javascript:void(0)">Dress-Size</a>
                                <h5><%# Eval("Waist")%></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center mt-5">
                <a href="#" class="btn btn-style">Learn More</a>
            </div>
                     </ItemTemplate>
            <FooterTemplate>
        </div>
                </FooterTemplate>
            </asp:Repeater>
    </section>
   
        <section class="w3l-gallery pb-5" id="gallery">
        <div class="container py-md-5 py-4">
            <div class="title-heading-w3 text-center mb-sm-5 mb-4">
                <h5 class="title-small mb-1">Personal-Info</h5>
                <h3 class="title-style">Images</h3>
            </div>
            <asp:Repeater ID="Repeater3" runat="server">
                <HeaderTemplate>
            <div class="row">
                </HeaderTemplate>
                <ItemTemplate>
                <div class="col-lg-4 col-md-6 item">
                    <a href="/Admin/Model/<%# Eval("ALT") %>" data-lightbox="example-set" data-title="Project 1"
                        class="zoom d-block">
                        <img class="card-img-bottom d-block" src="/Admin/Model/<%# Eval("ALT") %>" alt="Card image cap">
                        <span class="overlay__hover"></span>
                        <span class="hover-content">
                            
                        </span>
                    </a>
                </div>
           
                    </ItemTemplate>
                <FooterTemplate>
            </div>
                    </FooterTemplate>
                </asp:Repeater>
        </div>
    </section>
    </form>
</body>
</html>
