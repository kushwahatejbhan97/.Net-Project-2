<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="AppMyDeal.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My-Deal</title>
    <link rel="stylesheet" href="assets/css/Test.css" />
    
</head>


<body>
	
<style>
* {
  box-sizing: border-box;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
}

    @media (max-width: 480px) {
        .w3l-category-main .card {
            padding: 1px 0px;
        }
    }
    .w3l-category-main .card {
    /* background: #2d343c; */
    /*padding: 40px;*/
    /* border: 1px solid #e6e6e6; */
    transition: 0.3s all;
    -webkit-transition: 0.3s all;
    -moz-transition: 0.3s all;
    -o-transition: 0.3s all;
    -ms-transition: 0.3s all;
    /* border-radius: 103%; */
}

    @media (max-width: 991px) {


        .w3l-category-main .grid-sec {
            grid-template-columns: 1fr 1fr 1fr 1fr;
        }
    }

    .w3l-category-main .grid-sec {
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-gap: 7px;
}

    @media screen and (max-width: 600px) {
        img {
            width: 100%;
            height: 71%;
        }
    }

    @media (max-width: 480px) {


        .w3l-banner-3-main h3.title-cover-9 {
            font-size: 21px;
            line-height: 35px;
            margin: 0 0 15px;
        }
    }

    .pop{

            display: inline-block;
    font-weight: bold;
    font-size: 17px;
    line-height: 25px;
    font-size: 20px;
    font-weight: 500;

    }

    .popn{
            margin-left: auto;
    margin-right: 1em;
    display: inline-block;
    font-weight: bold;
    font-size: 17px;
    line-height: 25px;
    color: var(--theme-color-2);
}
    
    .movetop{
        display: block;
    /* display: none; */
    /* position: fixed; */
    /* bottom: 0; */
    /* right: 0; */
    z-index: 99;
    font-size: 18px;
    border: none;
    outline: none;
    cursor: pointer;
    color: #fff;
    width: 30px;
    height: 30px;
    background: var(--theme-color-2);
    padding: 0;
    line-height: 25px;
    transition: 0.5s ease-out;
    border-radius: 50%;
    }

    .w3l-specifications-9 .main-w3 {
   
    border-radius: 21px;
}


    .w3l-category-main .grid-sec-2 {
    grid-template-columns: 1fr 1fr 1fr;
    grid-gap: 20px;
    max-width: 545px;
    margin: auto;
    margin-top: 20px;
}





       .footMenu {
   position: fixed;
    bottom: 52px;
    right: 0px;
    background: #f85c70;
    width: 100%;
    height: 19%;
    border-radius: 15px;
    padding: 13px;
    /*margin-bottom: 2%;*/
}

       .navNew{
margin-bottom: 0;
    list-style: none;
        display: flex;
       }

        .navNew>li{
width: 25%;
    display: table-cell;
    text-align: center;
    position: relative;
    padding-top: 0;
    vertical-align: middle;
    line-height: normal;
}
       

        .nav {
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
        display: flow-root;
}
        .nav>li {
    position: relative;
    display: block;
}
        .myLi {
    border-bottom: 1px solid #e8960b;
}
        .nav>li>a {
    position: relative;
    display: block;
    padding: 10px 15px;
}
        .footer {
            position: fixed;
            bottom: 0;
            left: 0;
            z-index: 9;
            width: 100%;
            background-color: #fff;
            height: 55px;
            box-shadow: 0 1px 1px 1px rgb(0 0 0 / 60%);
            will-change: transform;
            background: #fff;
            border-radius: 0px 0px 1px 1px;
        }

        .footer ul {
    padding: 0;
    margin: 0;
    list-style-type: none;
    width: 100%;
    display: table;
    height: 100%;
}

            .footer ul li {
                width: 20%;
                display: table-cell;
                text-align: center;
                position: relative;
                padding-top: 0;
                vertical-align: middle;
                line-height: normal;
            }


            .w3l-footer-22 .below-section {
    background: #e13c51;
    padding: 8px 0;
    justify-content: space-between;
    border-radius: 6px;
}


     /*       .fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-size: 22px;
    color: black;
}*/


     @media (max-width: 667px){

    
.header-middle input[type="search"] {
    padding: 8px 10px;
}
 }

     .header-middle input[type="search"] {
    outline: none;
    border: 1px solid #947f5742 !important;
    width: 83%;
    padding: 9px 10px;
    color: #848484;
    font-size: 16px;
    border: 1px solid #ddd;
    letter-spacing: 1px;
    border-radius: 3px 0 0 3px;
    margin-top: 0px !important;
    line-height: 0px !important;
}

     .header-middle input[type="submit"] {
    background: url(assets/images/search.png) no-repeat -2px -2px #e13c51;
    width: 12%;
    height: 42px;
    border: 1px solid #24506038 !important;
    padding: 0 !important;
    border: none;
    outline: none;
    border-radius: 0 3px 3px 0;
    margin-top: 0px !important;
}

#w3lDemoBar.w3l-demo-bar {
  top: 0;
  right: 0;
  bottom: 0;
  z-index: 9999;
  padding: 40px 5px;
  padding-top:70px;
  margin-bottom: 70px;
  background: #0D1326;
  border-top-left-radius: 9px;
  border-bottom-left-radius: 9px;
}

#w3lDemoBar.w3l-demo-bar a {
  display: block;
  color: #e6ebff;
  text-decoration: none;
  line-height: 24px;
  opacity: .6;
  margin-bottom: 20px;
  text-align: center;
}

#w3lDemoBar.w3l-demo-bar span.w3l-icon {
  display: block;
}

#w3lDemoBar.w3l-demo-bar a:hover {
  opacity: 1;
}

#w3lDemoBar.w3l-demo-bar .w3l-icon svg {
  color: #e6ebff;
}
#w3lDemoBar.w3l-demo-bar .responsive-icons {
  margin-top: 30px;
  border-top: 1px solid #41414d;
  padding-top: 40px;
}
#w3lDemoBar.w3l-demo-bar .demo-btns {
  border-top: 1px solid #41414d;
  padding-top: 30px;
}
#w3lDemoBar.w3l-demo-bar .responsive-icons a span.fa {
  font-size: 26px;
}
#w3lDemoBar.w3l-demo-bar .no-margin-bottom{
  margin-bottom:0;
}
.toggle-right-sidebar span {
  background: #0D1326;
  width: 50px;
  height: 50px;
  line-height: 50px;
  text-align: center;
  color: #e6ebff;
  border-radius: 50px;
  font-size: 26px;
  cursor: pointer;
  opacity: .5;
}
.pull-right {
  float: right;
  position: fixed;
  right: 0px;
  top: 70px;
  width: 90px;
  z-index: 99999;
  text-align: center;
}
/* ============================================================
RIGHT SIDEBAR SECTION
============================================================ */

#right-sidebar {
  width: 90px;
  position: fixed;
  height: 100%;
  z-index: 1000;
  right: 0px;
  top: 0;
  margin-top: 60px;
  -webkit-transition: all .5s ease-in-out;
  -moz-transition: all .5s ease-in-out;
  -o-transition: all .5s ease-in-out;
  transition: all .5s ease-in-out;
  overflow-y: auto;
}

/* ============================================================
RIGHT SIDEBAR TOGGLE SECTION
============================================================ */

.hide-right-bar-notifications {
  margin-right: -300px !important;
  -webkit-transition: all .3s ease-in-out;
  -moz-transition: all .3s ease-in-out;
  -o-transition: all .3s ease-in-out;
  transition: all .3s ease-in-out;
}



@media (max-width: 992px) {
  #w3lDemoBar.w3l-demo-bar a.desktop-mode{
      display: none;

  }
}
@media (max-width: 767px) {
  #w3lDemoBar.w3l-demo-bar a.tablet-mode{
      display: none;

  }
}
@media (max-width: 568px) {
  #w3lDemoBar.w3l-demo-bar a.mobile-mode{
      display: none;
  }
  #w3lDemoBar.w3l-demo-bar .responsive-icons {
      margin-top: 0px;
      border-top: none;
      padding-top: 0px;
  }
  #right-sidebar,.pull-right {
      width: 90px;
  }
  #w3lDemoBar.w3l-demo-bar .no-margin-bottom-mobile{
      margin-bottom: 0;
  }
}

  .center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 35%;
  margin-top: 3%;



}


  @media (max-width: 991px)
  {
    .w3l-headers-9 .bottom-menu-content label.menu-bar {
        width: 50px;
        position: absolute;
        top: 10px;
        right: 0;
        cursor: pointer;
        z-index: 99;
        height: 50px;
         background-image: url("assets/images/user.png");

    }
}
</style>

    <form runat="server">

        

         
    <!-- header -->

       <%--  <img src="assets/images/finaldeal1.png" alt="Paris" class="center">--%>
    
    <!-- banner -->

    <div class="w3l-headers-9">
        <header>
            <div class="wrapper">
                <div class="header">
                    <div class="right-img-9">
                        <h1>
                           
          <a class="logo" href="/">
            <img src="assets/images/finaldeal1.png" alt="Your logo" title="Your logo" style="margin-top: 5%" />
          </a> 
                        </h1>
                    </div>

               
                    
                    <div class="bottom-menu-content">
                        <input type="checkbox" id="nav" />
                        <label for="nav" class="menu-bar"></label>
                        <nav>
                            <div class="wrapper">
                                <ul class="menu">
                                     <li><a href="#" class="link-nav">Hi! Sudeshna</a></li>
                                    <li class="nav-right-sty">
                                        <a href="/listing-regs" class="btn button-eff button-eff-2">Free Listing</a>
                                    </li>
                                   
                                    <li><a href="#" class="link-nav">What's New</a></li>
                                     <li><a href="#" class="link-nav">Advertise</a></li>
                                     <%--<li><a href="#" class="link-nav">Contact</a></li>--%>
                                   
                                    <li>
                                        <label for="drop-2" class="toggle toogle-2">Category <span class="fa fa-angle-down"
                                                aria-hidden="true"></span></label>
                                        <a href="#" class="link-nav dropdown-toggle">Category <span
                                                class="fa fa-angle-down" aria-hidden="true"></span></a>
                                        <input type="checkbox" id="drop-2" />
                                        <asp:Repeater ID="Repeater2" DataSourceID="SqlDbNavCat" runat="server">
										  <HeaderTemplate><ul class="first-dropdwon"></HeaderTemplate>
										  <ItemTemplate>
									<li><a href='/category/<%# Eval("urlc") %>'><%# Eval("CategoryName") %></a></li>
										  </ItemTemplate>
										  <FooterTemplate></ul></FooterTemplate>
										   </asp:Repeater>




                                        <%--<ul>

                                            <li><a href="#">Ecommerce</a></li>
                                            <li><a href="#">Ecommerce Single</a></li>
                                            <li><a href="#">Ecommerce Cart</a></li>
                                        </ul>--%>
                                        <asp:SqlDataSource ID="SqlDbNavCat" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                            
                                            SelectCommand="SELECT [CatId], [CategoryName], [urlc] FROM [NewListing_Website_category_tbl] ORDER BY CategoryName" 
                                            >
                                           
                                        </asp:SqlDataSource>
                                    </li>
                                    
                                   
                                  

                                     
                                   
									
                                    
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- //header -->
        <script src="assets/js/jquery-3.3.1.min.js"></script>
        <script>
            $('#nav').change(function () {
                if ($('#nav').is(":checked")) {
                    $('body').css('overflow', 'hidden');
                } else {
                    $('body').css('overflow', 'auto');
                }
            });
        </script>
    </div>
   

    <!-- //banner -->
    <!-- search form -->
    <div class="col-md-7 header-middle" style="padding-top:20px; width: 100%; padding: 15px;text-align: center;
    display: flex;
    flex-direction: row;">
			
					
			
			<asp:TextBox ID="txtsearch" TextMode="Search" runat="server" placeholder="Search here..."></asp:TextBox>
			
			<asp:Button ID="btnsearch" OnClick="btnsearch_Click" runat="server" Text="" style="width:13%;"/>
					
				<div class="clearfix"></div>
			
		</div>
    <!-- //search form -->

    <section class="w3l-banner-3-main" style="padding:13px;">
        <div class="banner-3">
            <div class="wrapper">
                <div class="cover-top-center-9">
                    <div class="w3ls_cover_txt-9" style="margin-bottom:80%;">
                         <h3 class="title-cover-9">Buy, Sell, Rent & Exchange in one Click</h3>
                       <div class="buy-button">
                                    <a class="popup btn button-eff" href="login.html">Shop Now</a>
                                </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- category section -->
    <section class="w3l-category-main">
        <div class="categories-sec">
            <div class="wrapper">
                <%--<h3 class="title-main">Popular Categories</h3>--%>
                <div class="right-models text-center">
                    <div class="d-grid grid-sec">

                         <asp:Repeater ID="RepeaterPopularCat" runat="server" DataSourceID="SqlDbPopularCat">
                             <ItemTemplate>
                        <a href="/category/<%# Eval("urlc") %>">
                            <div class="card">
                                <div class="card-body">
                                    <img src='/upload_category/icon/<%# Eval("CatIConImageID")%>.jpg' />
                                    <%--<span class="fa fa-bed"></span>--%>
                                   <%-- <h5 class="card-title mt-4">Furniture </h5>--%>
                                  <%--  <p class="para-design">6 Ads Posted</p>--%>
                                </div>
                            </div>
                        </a>
                      </ItemTemplate>
                        </asp:Repeater>


                        <asp:SqlDataSource ID="SqlDbPopularCat" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                        SelectCommand="SELECT TOP 4 [Catid], [CategoryName], [Priority], [EnableBottom], [urlc], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] ORDER BY CategoryName">
                        
                  </asp:SqlDataSource>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- //category section -->


    <div >
                    <div >
                        <a href="blog-single.html"><img src="assets/images/images%20(3).jpg" alt="" style="padding:13px; border-radius: 21px;"></a>
                        
                    </div>
                   
                </div>


    <!-- category section -->
    <section class="w3l-category-main">
        <div class="categories-sec">
            <div class="wrapper">

                <ul class="d-flex" style="margin-bottom:5%;">
                                    <li class="pop">Popular Categories</li>
                                    <li class="popn"><a href="#fav" title="Add this to Favorite"></a></li>
                                    <button class="movetop" title="Go to top" style="display: block;">
                <span class="fa fa-angle-double-right mr-2" aria-hidden="true"></span>
            </button>
                                </ul>
                <%--<h3 class="title-main" style="font-size:20px;">Popular Categories</h3>--%>
                <div class="right-models text-center">
                    <div class="d-grid grid-sec">

                        <asp:Repeater ID="RepeaterPopularCat2" runat="server" DataSourceID="SqlDbPopularCat2">
                             <ItemTemplate>
                        <a href="/category/<%# Eval("urlc") %>">
                            <div class="card">
                                <div class="card-body">
                                    <img src='/upload_category/icon/<%# Eval("CatIConImageID")%>.jpg' />
                                    <%--<span class="fa fa-bed"></span>--%>
                                   <%-- <h5 class="card-title mt-4">Furniture </h5>--%>
                                  <%--  <p class="para-design">6 Ads Posted</p>--%>
                                </div>
                            </div>
                        </a>
                      </ItemTemplate>
                        </asp:Repeater>


                        <asp:SqlDataSource ID="SqlDbPopularCat2" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                        SelectCommand="SELECT TOP 4 [Catid], [CategoryName], [Priority], [EnableBottom], [urlc], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] ORDER BY CategoryName">
                        
                  </asp:SqlDataSource>
                      
                        
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- //category section -->


    <section class="w3l-specifications-9" style="
    padding: 13px;
">
        <div class="main-w3">
            <div class="overlay">
                <div class="wrapper">
                    <div class="d-flex main-cont-wthree-fea text-center">
                        <div class="grids-speci">
                            <div class="stats-icon">
                                <span class="fa fa-bullhorn" aria-hidden="true"></span>
                            </div>
                            <div>
                                <h3 class="title-spe">5000+</h3>
                                <p>Published Ads</p>
                            </div>
                        </div>
                        <div class="grids-speci">
                            <div class="stats-icon">
                                <span class="fa fa-users" aria-hidden="true"></span>
                            </div>
                            <div>
                                <h3 class="title-spe">3266+</h3>
                                <p>Register User</p>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- //specifications -->
    </section>




    <section class="w3l-category-main">
        <div class="categories-sec">
            <div class="wrapper">

                <ul class="d-flex" style="margin-bottom:5%;">
                                    <li class="pop">More Categories</li>
                                    <li class="popn"><a href="#fav" title="Add this to Favorite"></a></li>
                                    <button class="movetop" title="Go to top" style="display: block;">
                <span class="fa fa-angle-double-right mr-2" aria-hidden="true"></span>
            </button>
                                </ul>
               
                <div class="right-models text-center">
                    
                    <div class="d-grid grid-sec-2">
                        

                        <asp:Repeater ID="RepeaterPopularCat3" runat="server" DataSourceID="SqlDbPopularCat3">
                             <ItemTemplate>
                        <a href="/category/<%# Eval("urlc") %>">
                            <div class="card">
                                <div class="card-body">
                                    <img src='http://m.my-deal.co.in//upload_category/icon/<%# Eval("CatIConImageID")%>.jpg' alt="service" class="img-fluid" style="border-radius: 100%;" />

                                      <p class="para-design"> <%# Eval("CategoryName") %> </p>
                                
                                </div>
                            </div>
                        </a>
                      </ItemTemplate>
                        </asp:Repeater>


                        <asp:SqlDataSource ID="SqlDbPopularCat3" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                        SelectCommand="SELECT TOP 15 [Catid], [CategoryName], [Priority], [EnableBottom], [urlc], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] ORDER BY CategoryName">
                        
                  </asp:SqlDataSource>

                            <%--<div class="card">
                                <div class="card-body">
                                  
                                   
                                   <img src="assets/images/restaurant.jpg" alt="service" class="img-fluid" style="border-radius: 100%;">
                                       
                                   

                                    <p class="para-design"> Resturent </p>
                                    
                                    
                                       
                                   
                                    

                                </div>
                            </div>--%>
                       
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Products4 block -->
    
    <!-- //Products4 block -->
        </form>
    <footer class="w3l-footer-22" style="padding: 13px;">
        <section class="fotter-sub">
            
            <div class="below-section">
                <div class="wrapper">
                    <div class="copyright-footer">
                        
                        <ul class="text-right">
                            <li><a href="#payment"><img src="assets/images/payment1.jpg" alt=""
                                        class="img-responsive"></a>
                            </li>
                            <li><a href="#payment"><img src="assets/images/payment2.jpg" alt=""
                                        class="img-responsive"></a>
                            </li>
                            <li><a href="#payment"><img src="assets/images/payment3.jpg" alt=""
                                        class="img-responsive"></a>
                            </li>
                            <li><a href="#payment"><img src="assets/images/payment4.jpg" alt=""
                                        class="img-responsive"></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- copyright -->
            <!-- move top -->
            
            <!-- /move top -->
        </section>
    </footer>
    
    <!-- // grids block 5 -->
    <!-- footer-22 -->
    <footer class="w3l-footer-22" style="background: #fff;" >
        <section class="fotter-sub">
            
            <div class="below-section">
                <div class="wrapper">
                    <div class="copyright-footer">
                        
                        <ul class="text-right">
                            <li><a href="#payment"><img src="assets/images/payment1.jpg" alt=""
                                        class="img-responsive"></a>
                            </li>
                            <li><a href="#payment"><img src="assets/images/payment2.jpg" alt=""
                                        class="img-responsive"></a>
                            </li>
                            <li><a href="#payment"><img src="assets/images/payment3.jpg" alt=""
                                        class="img-responsive"></a>
                            </li>
                            <li><a href="#payment"><img src="assets/images/payment4.jpg" alt=""
                                        class="img-responsive"></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- copyright -->
            <!-- move top -->
            
            <!-- /move top -->
        </section>
    </footer>
    <!-- //footer-22 -->
    <!-- // grids block 5 -->
    <div class="footMenu" id="MyFootMenu" style="display:none;">
    <div class="nav">
     <a onclick="closeNav()" style="padding: 2px 9px 4px 9px; font-size: 18px; color: white;">X</a>
      <ul class="navNew">

           <li>
      <a href="/"><span><i class="fa fa-commenting-o" style="font-size: 22px; color: #fff;" ></i></span>
     <span class="txt" style="font-size: 17px; font-weight: 500;" ></span></a> 
    </li>
    <li>
        <a href="#"><span><i class="fa fa-map-marker" style="font-size: 22px; color: #fff;" ></i></span>
        <span class="txt" style="font-size: 17px; font-weight: 500;" ></span></a>
    </li>
           <li>
        <a href="#"><span><i class="fa fa-user-circle" style="font-size: 22px; color: #fff;" ></i></span>
        <span class="txt" style="font-size: 17px; font-weight: 500;" ></span></a>
    </li>

            <li>
        <a href="#"><span><i class="fa fa-credit-card-alt" style="font-size: 22px; color: #fff;" ></i></span>
        <span class="txt" style="font-size: 17px; font-weight: 500;" ></span></a>
    </li>

       <%-- <li id="Compname" runat="server" visible="false" class="myLi nav-item"><a href="#" class="Mya"><asp:Label ID="lblcompname" runat="server" style="color:White;"></asp:Label></a></li>
       
        <li class="myLi nav-item" id="UserRegister" visible="true" runat="server"><a href="/user-signup" class="Mya" style="color:White;">Register</a></li>
        <li class="myLi nav-item" id="Userlogin" visible="true" runat="server"><a href="/login" class="Mya" style="color:White;">Login</a></li>
        <li class="myLi nav-item" id="Managecomp" runat="server" visible="false"><a href="/Account/Dashboard.aspx" class="Mya" style="color:White;">Manage Listing</a></li>--%>
      </ul>


        <%--<nav>
                            <div class="wrapper">
                                <ul class="menu">
                                    <li class="nav-right-sty">
                                        <a href="/listing-regs" class="btn button-eff button-eff-2">Free Listing</a>
                                    </li>
                                   
                                    <li><a href="#" class="link-nav">What's New</a></li>
                                     <li><a href="#" class="link-nav">Advertise</a></li>
                                     <li><a href="#" class="link-nav">Contact</a></li>
                                   
                                    <li>
                                        <label for="drop-4" class="toggle toogle-2">Category <span class="fa fa-angle-down" aria-hidden="true"></span></label>
                                        <a href="#" class="link-nav dropdown-toggle">Category <span class="fa fa-angle-down" aria-hidden="true"></span></a>
                                        <input type="checkbox" id="drop-2">
                                        <ul class="first-dropdwon">
									<li><a href="/category/AUTOMOBILES--TWO-WHEELERS	">AUTOMOBILES &amp; TWO WHEELERS	</a></li>
									
										  </ul>




                                        
                                        
                                    </li>
                                    
                                  
                                  

                                     
                                   
									
                                    
                                </ul>
                            </div>
                        </nav>--%>
    </div>
 </div>


 <footer id="footerBottom" class="footer headroomft headroom headroom--not-bottom headroom--pinned headroom--top" style="display: block;">
 <ul>
    <li>
      <a href="/" style="display:grid;"><span><i class="fa fa-home" style="font-size: 22px; color: black;" ></i></span>
     <span class="txt" style="font-size: 17px; font-weight: 500;" >Home</span></a> 
    </li>
    <li>
        <a href="#" style="display:grid;"><span><i class="fa fa-facebook-official" style="font-size: 22px; color: black;" ></i></span>
        <span class="txt" style="font-size: 17px; font-weight: 500;" >Social</span></a>
    </li>
    <li> 
      <a style="display:grid;" onclick="openNav()"> <span><i class="fa fa-list-ul" style="font-size: 22px; color: black;" ></i></span>
      <span class="txt" style="font-size: 17px; font-weight: 500;" >Menu</span></a>
    </li>
</ul>
</footer>

    <script>
        function openNav() {
            document.getElementById("MyFootMenu").style.display = "";
        }

        function closeNav() {
            document.getElementById("MyFootMenu").style.display = "none";
        }

    </script>


	</body>
</html>
