<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewDefault.aspx.cs" Inherits="MyDeal.NewDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Classify a Classifieds Ads Category Responsive Web Template - Home </title>
    <link rel="stylesheet" href="assets/css/style-freedom.css">

    <style>
* {
  box-sizing: border-box;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
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
</style>

</head>


<body>
	

    
    

    <!-- header -->
    <div class="w3l-headers-9">
        <header>
            <div class="wrapper">
                <div class="header">
                    <div class="right-img-9">
                        <h1>
                            <a href="index.html" class="logo"><span class="fa fa-bullhorn"
                                    aria-hidden="true"></span>Classify</a>
                            <!-- if logo is image enable this   
          <a class="logo" href="index.html">
            <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
          </a> -->
                        </h1>
                    </div>
                    <div class="bottom-menu-content">
                        <input type="checkbox" id="nav" />
                        <label for="nav" class="menu-bar"></label>
                        <nav>
                            <div class="wrapper">
                                <ul class="menu">
                                    <li><a href="#" class="link-nav">Home</a></li>
                                    <li><a href="#" class="link-nav">What's New</a></li>
                                     <li><a href="#" class="link-nav">Advertise</a></li>
                                   
                                   
                                    <li>
                                        <label for="drop-4" class="toggle toogle-2">Category <span class="fa fa-angle-down"
                                                aria-hidden="true"></span></label>
                                        <a href="#" class="link-nav dropdown-toggle">Category <span
                                                class="fa fa-angle-down" aria-hidden="true"></span></a>
                                        <input type="checkbox" id="drop-4" />
                                        <asp:Repeater ID="Repeater2" DataSourceID="SqlDbNavCat" runat="server">
										  <HeaderTemplate><ul></HeaderTemplate>
										  <ItemTemplate>
									<li><a href='/Category.aspx/<%# Eval("CategoryName") %>'><%# Eval("CategoryName") %></a></li>
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
                                    
                                   <li>
                                        <label for="drop-4" class="toggle toogle-2">Account <span class="fa fa-angle-down"
                                                aria-hidden="true"></span></label>
                                        <a href="#" class="link-nav dropdown-toggle">Account <span
                                                class="fa fa-angle-down" aria-hidden="true"></span></a>
                                        <input type="checkbox" id="drop-4" />
                                        <ul>
                                            <li><a href="/Login.aspx">Log In</a></li>
                                            <li><a href="/UserSignUp.aspx">Sign Up</a></li>
                                            
                                        </ul>
                                    </li>
                                    <li><a href="#" class="link-nav">Contact</a></li>
                                    <li class="nav-right-sty">
                                        <a href="/FreeListingRegs.aspx" class="btn button-eff button-eff-2">Free Listing</a>
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
    <!-- banner -->
    <section class="w3l-banner-3-main">
        <div class="banner-3">
            <div class="wrapper">
                <div class="cover-top-center-9">
                    <div class="w3ls_cover_txt-9">
                        <h3 class="title-cover-9">Buy, Sell, Rent & Exchange in one Click</h3>
                        <p class="para-cover-9">Once aute irure dolor in reprehenderit in voluptate velit
                            esse cillum dolore eu fugiat nulla pariatur consectetur adipiscing elit.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //banner -->
    <!-- search form -->
    
    <section class="w3l-search-form-3-main">
        <div class="search-form-3">
            <div class="wrapper">
                <div class="section-width">
                     <form id="form1" class="search-3-gd" runat="server">
                        <div class="d-flex grids-icon">
                            <span class="fa fa-text-height" aria-hidden="true"></span>
                            <input type="search" name="text" placeholder="Enter Keywords here.." required>
                        </div>
                        <div class="d-flex grids-icon grids-icon-2">
                            <span class="fa fa-tags" aria-hidden="true"></span>
                            <div class="input-group-btn">

                                 <asp:DropDownList ID="DropDownList2" runat="server" class="btn btn-default" DataTextField="CategoryName" DataValueField="CatId" AppendDataBoundItems="true" DataSourceID="SqlDataSourceCate" AutoPostBack="true" ValidationGroup="NewListing">
                                                    <asp:ListItem Value="0">Select Category</asp:ListItem>
                                                </asp:DropDownList>
                                                     <asp:SqlDataSource ID="SqlDataSourceCate" runat="server" 
                                                         ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                                         SelectCommand="SELECT [CatId], [CategoryName] FROM [NewListing_Website_category_tbl] ORDER BY CategoryName">
    </asp:SqlDataSource>

                                
                            </div>
                        </div>
                        <div class="d-flex grids-icon grids-icon-2">
                            <span class="fa fa-map-marker" aria-hidden="true"></span>
                            <div class="input-group-btn">
                                <asp:DropDownList ID="ddlcity" runat="server" class="btn btn-default" 
                                                        AppendDataBoundItems="True" ValidationGroup="NewListing" 
                                                        DataSourceID="SqlDataSourceCityName" DataTextField="CityName" 
                                                        DataValueField="CityName">
                                                  <asp:ListItem Value="select">Choose City</asp:ListItem>
                                                </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSourceCityName" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                                        SelectCommand="SELECT [ID], [CityName] FROM [Updated_State_City_List] ORDER BY [CityName]">
                                                    </asp:SqlDataSource>
                                
                            </div>
                        </div>
                        <button type="submit" class="btn button-eff"><span class="fa fa-search"
                                aria-hidden="true"></span>Search</button>
                         </form>
                </div>
            </div>
        </div>
    </section>
         
    <!-- //search form -->
    <!-- category section -->
    <section class="w3l-category-main">
        <div class="categories-sec">
            <div class="wrapper">
                <h3 class="title-main">Popular Categories</h3>
                <div class="right-models text-center">
                    <div class="d-grid grid-sec">
                        <a href="product-2.html">
                            <div class="card">
                                <div class="card-body">
                                    <span class="fa fa-bed"></span>
                                    <h5 class="card-title mt-4">Furniture </h5>
                                    <p class="para-design">6 Ads Posted</p>
                                </div>
                            </div>
                        </a>
                        <a href="product-3.html">
                            <div class="card">
                                <div class="card-body">
                                    <span class="fa fa-briefcase"></span>
                                    <h5 class="card-title mt-4">Jobs</h5>
                                    <p class="para-design">5 Ads Posted</p>
                                </div>
                            </div>

                        </a>
                        <a href="product-5.html">
                            <div class="card">
                                <div class="card-body">
                                    <span class="fa fa-futbol-o"></span>
                                    <h5 class="card-title mt-4">Sports</h5>
                                    <p class="para-design">6 Ads Posted</p>
                                </div>
                            </div>
                        </a>
                        <a href="product-4.html">
                            <div class="card">
                                <div class="card-body">
                                    <span class="fa fa-home"></span>
                                    <h5 class="card-title mt-4">Real Estate</h5>
                                    <p class="para-design">6 Ads</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="d-grid grid-sec-2">
                        <a href="product-1.html">
                            <div class="card">
                                <div class="card-body">
                                    <span class="fa fa-laptop"></span>
                                    <h5 class="card-title mt-4">Electronics</h5>
                                    <p class="para-design">6 Ads</p>
                                </div>
                            </div>
                        </a>
                        <a href="product-6.html">
                            <div class="card">
                                <div class="card-body">
                                    <span class="fa fa-heart"></span>
                                    <h5 class="card-title mt-4">Health & Beauty</h5>
                                    <p class="para-design">5 Ads Posted</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //category section -->
    <!-- Products4 block -->
    <div class="w3l-products-4">
        <div id="products4-block" class="text-center">
            <div class="wrapper">
                <input id="tab1" type="radio" name="tabs" checked>
                <label class="tabtle" for="tab1">Latest Ads</label>

                <input id="tab2" type="radio" name="tabs">
                <label class="tabtle" for="tab2">Featured Ads</label>

                <input id="tab3" type="radio" name="tabs">
                <label class="tabtle" for="tab3">Ending Soon</label>

                <section id="content1" class="tab-content text-left">
                    <div class="d-grid grid-col-3">
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/c1.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Sed ut perspiciatis unde omnis iste natus</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 1200</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/c2.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Eaque ipsa quae ab illo inventore veritatis</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 299</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/c3.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Quasi architecto beatae vitae dicta sunt</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 499</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/pf3.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Nemo enim ipsam quia voluptas sit et</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 800</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/c5.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Ut enim ad minima veniam, quis nostrum</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 1300</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/pb1.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Sed ut perspiciatis unde omnis rerum est</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 2,500</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>

                <section id="content2" class="tab-content text-left">
                    <div class="d-grid grid-col-3">
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/c4.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Sed ut perspiciatis unde omnis iste natus</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 1200</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/c6.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Eaque ipsa quae ab illo inventore veritatis</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 299</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/pr4.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Quasi architecto beatae vitae dicta sunt</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 499</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/ps4.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Nemo enim ipsam quia voluptas sit et expedita</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 800</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/c3.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Quasi architecto beatae vitae dicta sunt</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 499</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>

                <section id="content3" class="tab-content text-left">
                    <div class="d-grid grid-col-3">
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/ps6.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Sed ut perspiciatis unde omnis iste natus</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 1200</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/pr6.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Eaque ipsa quae ab illo inventore veritatis</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 299</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/pj4.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Quasi architecto beatae vitae dicta sunt</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 499</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product">
                            <a href="product-single.html"><img src="assets/images/c5.jpg" class="img-responsive"
                                    alt="" /></a>
                            <div class="info-bg">
                                <h5><a href="product-single.html">Ut enim ad minima veniam, quis nostrum</a></h5>
                                <p>Nulla ex nunc</p>
                                <ul class="d-flex">
                                    <li><span class="fa fa-usd"></span> 1300</li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <!-- //Products4 block -->
    <!-- grid -->
    <section class="w3l-grids-9-main">
        <div class="grid-top-9">
            <div class="wrapper">
                <h3 class="title-main">Popular Locations</h3>
                <div class="d-grid grid-col-3 grid-element-9 margin-bottom">
                    <div class="left-grid-ele-9 grid-bg3">
                        <div class="sub-wid-grid-9">
                            <h4 class="text-grid-9"><a href="product-single.html">London</a></h4>
                            <p class="sub-para">Sed ut perspi</p>
                        </div>
                    </div>
                    <div class="left-grid-ele-9 grid-bg4">
                        <div class="sub-wid-grid-9">
                            <h4 class="text-grid-9"><a href="product-single.html">Japan</a></h4>
                            <p class="sub-para">Sed ut perspi</p>
                        </div>
                    </div>
                    <div class="left-grid-ele-9 grid-bg5">
                        <div class="sub-wid-grid-9">
                            <h4 class="text-grid-9"><a href="product-single.html">France</a></h4>
                            <p class="sub-para">Sed ut perspi</p>
                        </div>
                    </div>
                </div>
                <div class="d-grid grid-col-2 grid-element-9">
                    <div class="left-grid-ele-9 grid-bg1">
                        <div class="sub-wid-grid-9">
                            <h4 class="text-grid-9"><a href="product-single.html">New Jersy</a></h4>
                            <p class="sub-para">Sed ut perspi</p>
                        </div>
                    </div>
                    <div class="left-grid-ele-9 grid-bg2">
                        <div class="sub-wid-grid-9">
                            <h4 class="text-grid-9"><a href="product-single.html">Paris</a></h4>
                            <p class="sub-para">Sed ut perspi</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //grid -->
    <!-- specifications -->
    <section class="w3l-specifications-9">
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
                        <div class="grids-speci">
                            <div class="stats-icon">
                                <span class="fa fa-thumbs-o-up" aria-hidden="true"></span>
                            </div>
                            <div>
                                <h3 class="title-spe">2240+</h3>
                                <p>Verified Users</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //specifications -->
    </section>
    <!-- pricing-7 -->
    <section class="w3l-pricing-7-main" id="bottom">
        <div class="pricing-7-sec">
            <div class="wrapper">
                <h3 class="title-main">Pricing Packages</h3>
                <div class="pricing-sec-7">
                    <div class="pricing-gd-left pric-7-1">
                        <div class="w3l-pricing-7">
                            <div class="w3l-pricing-7-top">
                                <h6 class="one-light">Basic Plan</h6>
                                <h4><label>$</label>19<span>/month</span></h4>
                            </div>
                            <div class="w3l-pricing-7-bottom">
                                <div class="w3l-pricing-7-bottom-bottom">
                                    <ul class="links">
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">3 Regular Ads</p>

                                        </li>
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">1 Top Ad</p>

                                        </li>
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">1 Featured Ad</p>

                                        </li>
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">Basic Support</p>

                                        </li>

                                    </ul>
                                </div>
                                <div class="buy-button">
                                    <a class="popup btn button-eff" href="login.html">Purchase Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-gd-left pric-7 active">
                        <div class="w3l-pricing-7">
                            <div class="w3l-pricing-7-top">
                                <h5>Popular</h5>
                                <h6>Silver Plan</h6>
                                <h4><label>$</label>39<span>/month</span></h4>
                            </div>
                            <div class="w3l-pricing-7-bottom">
                                <div class="w3l-pricing-7-bottom-bottom">
                                    <ul class="links">
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">5 Regular Ads</p>

                                        </li>
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">3 Top Ads</p>

                                        </li>
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">2 Featured Ads</p>

                                        </li>
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">Basic Support</p>

                                        </li>
                                    </ul>
                                </div>
                                <div class="buy-button">
                                    <a class="popup btn button-eff" href="login.html">Purchase Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-gd-left pric-7-2">
                        <div class="w3l-pricing-7">
                            <div class="w3l-pricing-7-top">
                                <h6 class="one-light">Gold Plan</h6>
                                <h4><label>$</label>59<span>/month</span></h4>
                            </div>
                            <div class="w3l-pricing-7-bottom">
                                <div class="w3l-pricing-7-bottom-bottom">
                                    <ul class="links">
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">Unlimited Regular Ads</p>

                                        </li>
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">10 Top Ads</p>

                                        </li>
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">5 Featured Ads</p>

                                        </li>
                                        <li>
                                            <div class="tick-mark"><span class="fa fa-check" aria-hidden="true"></span>
                                            </div>
                                            <p class="tick-info">Priority Support</p>

                                        </li>
                                    </ul>
                                </div>
                                <div class="buy-button">
                                    <a class="popup btn button-eff" href="login.html">Purchase Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //pricing-7 -->
    <!-- content-11 -->
    <section class="w3l-content-11-main">
        <div class="content-design-11">
            <div class="wrapper">
                <h3 class="title-main">Why Choose Us?</h3>
                <div class="content-sec-11 column content-text">
                    <div class="columns">
                        <div class="icon-eff">
                            <span class="fa fa-book" aria-hidden="true"></span>
                        </div>
                        <div class="right-side">
                            <h4>Full Documented</h4>
                            <p> Fusce faucibus ante vitae justo efficitur elementum. Donec ipsum faucibus.</p>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="icon-eff">
                            <span class="fa fa-newspaper-o" aria-hidden="true"></span>
                        </div>
                        <div class="right-side">
                            <h4>Awesome Layout</h4>
                            <p> Fusce faucibus ante vitae justo efficitur elementum. Donec sed faucibus.</p>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="icon-eff">
                            <span class="fa fa-paper-plane" aria-hidden="true"></span>
                        </div>
                        <div class="right-side">
                            <h4>Clean & Modern Design</h4>
                            <p> Suspendisse condimentum eget ligula a posuere. Duis ipsum et gravida.</p>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="icon-eff">
                            <span class="fa fa-thumbs-up" aria-hidden="true"></span>
                        </div>
                        <div class="right-side">
                            <h4>Super Support</h4>
                            <p> Suspendisse condimentum eget ligula a posuere. Duis ipsum etarcu dffdut.
                            </p>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="icon-eff">
                            <span class="fa fa-magic" aria-hidden="true"></span>
                        </div>
                        <div class="right-side">
                            <h4>Great Features</h4>
                            <p> Suspendisse condimentum eget ligula a posuere. Duis ipsum et rcu fdsut.</p>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="icon-eff">
                            <span class="fa fa-handshake-o" aria-hidden="true"></span>
                        </div>
                        <div class="right-side">
                            <h4>User Friendly</h4>
                            <p> Fusce faucibus ante vitae justo efficitur elementum. Donec sed faucibus.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //content-11 -->
    <div class="w3l-new-block-6">
        <!-- grids block 5 -->
        <section id="grids5-block">
            <div class="wrapper">
                <h3 class="title-main">Our latest news</h3>
                <div class="d-grid">
                    <div class="grids5-info">
                        <a href="blog-single.html"><img src="assets/images/b1.jpg" alt="" /></a>
                        <h4><a href="blog-single.html">News Post title</a></h4>
                        <ul class=" admin-list">
                            <li><a href="blog-single.html"><span class=" fa fa-user" aria-hidden="true"></span>by
                                    Admin</a></li>
                            <li><a href="blog-single.html"><span class=" fa fa-comments-o" aria-hidden="true"></span>9
                                    Comments</a></li>
                        </ul>
                        <p>It is a long established fact that a reader will be distracted by the readable content of
                            a page when looking at its layout</p>
                    </div>
                    <div class="grids5-info">
                        <a href="blog-single.html"><img src="assets/images/b2.jpg" alt="" /></a>
                        <h4><a href="blog-single.html">News Post title</a></h4>
                        <ul class=" admin-list">
                            <li><a href="blog-single.html"><span class=" fa fa-user" aria-hidden="true"></span>by
                                    Admin</a></li>
                            <li><a href="blog-single.html"><span class=" fa fa-comments-o" aria-hidden="true"></span>5
                                    Comments</a></li>
                        </ul>
                        <p>It is a long established fact that a reader will be distracted by the readable content of
                            a page when looking at its layout</p>
                    </div>
                    <div class="grids5-info">
                        <a href="blog-single.html"><img src="assets/images/b4.jpg" alt="" /></a>
                        <h4><a href="blog-single.html">News Post title</a></h4>
                        <ul class=" admin-list">
                            <li><a href="blog-single.html"><span class=" fa fa-user" aria-hidden="true"></span>by
                                    Admin</a></li>
                            <li><a href="blog-single.html"><span class=" fa fa-comments-o" aria-hidden="true"></span>12
                                    Comments</a></li>
                        </ul>
                        <p>It is a long established fact that a reader will be distracted by the readable content of
                            a page when looking at its layout</p>
                    </div>
                    <div class="grids5-info">
                        <a href="blog-single.html"><img src="assets/images/b3.jpg" alt="" /></a>
                        <h4><a href="blog-single.html">News Post title</a></h4>
                        <ul class=" admin-list">
                            <li><a href="blog-single.html"><span class=" fa fa-user" aria-hidden="true"></span>by
                                    Admin</a></li>
                            <li><a href="blog-single.html"><span class=" fa fa-comments-o" aria-hidden="true"></span>23
                                    Comments</a></li>
                        </ul>
                        <p>It is a long established fact that a reader will be distracted by the readable content of
                            a page when looking at its layout</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- // grids block 5 -->
 
    <!-- footer-22 -->
    <footer class="w3l-footer-22">
        <section class="fotter-sub">
            <div class="footer">
                <div class="wrapper">
                    <div class="text-txt">
                        <div class="right-side">
                            <h4>Create Your Classified Website Today!</h4>
                            <p class="para-sep">The Best Classified Ads Theme in the World <a href="#download">Download
                                    Now</a></p>
                            <div class="sub-columns">
                                <div class="sub-one-left">
                                    <h6>About </h6>
                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
                                        doloremque
                                        laudantium, totam rem aperiam, eaque ipsa quae ab.</p>
                                    <div class="columns-2">
                                        <ul class="social">
                                            <li><a href="#facebook"><span class="fa fa-facebook"
                                                        aria-hidden="true"></span></a>
                                            </li>
                                            <li><a href="#linkedin"><span class="fa fa-linkedin"
                                                        aria-hidden="true"></span></a>
                                            </li>
                                            <li><a href="#twitter"><span class="fa fa-twitter"
                                                        aria-hidden="true"></span></a>
                                            </li>
                                            <li><a href="#google"><span class="fa fa-google-plus"
                                                        aria-hidden="true"></span></a>
                                            </li>
                                            <li><a href="#github"><span class="fa fa-github"
                                                        aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="sub-two-right">
                                    <h6>Quick links</h6>
                                    <ul>
                                        <li><a href="index.html"><span
                                                    class="fa fa-angle-double-right mr-2"></span>Home</a>
                                        </li>
                                        <li><a href="about.html"><span
                                                    class="fa fa-angle-double-right mr-2"></span>About</a>
                                        </li>
                                        <li><a href="services.html"><span
                                                    class="fa fa-angle-double-right mr-2"></span>Services</a></li>
                                        <li><a href="contact.html"><span
                                                    class="fa fa-angle-double-right mr-2"></span>Contact</a></li>
                                    </ul>
                                </div>
                                <div class="sub-two-right">
                                    <h6>Help & Support</h6>
                                    <ul>
                                        <li><a href="index.html"><span class="fa fa-angle-double-right mr-2"></span>Live
                                                Chart</a></li>
                                        <li><a href="faq.html"><span
                                                    class="fa fa-angle-double-right mr-2"></span>Faq</a>
                                        </li>
                                        <li><a href="#support"><span
                                                    class="fa fa-angle-double-right mr-2"></span>Support</a></li>
                                        <li><a href="#terms"><span class="fa fa-angle-double-right mr-2"></span>Terms
                                                of Services</a></li>
                                    </ul>
                                </div>
                                <div class="sub-one-left">
                                    <h6>Contact </h6>
                                    <div class="column2">
                                        <div class="href1"><span class="fa fa-envelope-o" aria-hidden="true"></span><a
                                                href="mailto:info@example.com">info@example.com</a>
                                        </div>
                                        <div class="href2"><span class="fa fa-phone" aria-hidden="true"></span><a
                                                href="tel:+44-000-888-999">+44-000-888-999</a>
                                        </div>
                                        <div>
                                            <p class="contact-para"><span class="fa fa-map-marker"
                                                    aria-hidden="true"></span>London, 235 Terry, 10001</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="below-section">
                <div class="wrapper">
                    <div class="copyright-footer">
                        <div class="columns text-left">
                            <p>@2019 Classify. All rights reserved | Design by <a href="https://w3layouts.com/">W3Layouts</a>
                            </p>
                        </div>
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
            <button onclick="topFunction()" id="movetop" title="Go to top">
                <span class="fa fa-arrow-up" aria-hidden="true"></span>
            </button>
            <script>
                // When the user scrolls down 20px from the top of the document, show the button
                window.onscroll = function () {
                    scrollFunction()
                };

                function scrollFunction() {
                    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                        document.getElementById("movetop").style.display = "block";
                    } else {
                        document.getElementById("movetop").style.display = "none";
                    }
                }

                // When the user clicks on the button, scroll to the top of the document
                function topFunction() {
                    document.body.scrollTop = 0;
                    document.documentElement.scrollTop = 0;
                }
            </script>
            <!-- /move top -->
        </section>
    </footer>
    <!-- //footer-22 -->


<div id = "v-w3layouts"></div><script>(function(v,d,o,ai){ai=d.createElement('script');ai.defer=true;ai.async=true;ai.src=v.location.protocol+o;d.head.appendChild(ai);})(window, document, '../../../../../../../a.vdo.ai/core/v-w3layouts/vdo.ai.js');</script>
	</body>
</html>
