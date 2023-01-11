<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryOld.aspx.cs" Inherits="MyDeal.CategoryOld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My-Deal</title>
    <link rel="stylesheet" href="assets/css/style-freedom.css" />

    <link href="assets/css/Default.css" rel="stylesheet" />
    
    <link rel="shortcut icon" href="/Admin/img/mydeal12.png" />
  
</head>


<body>
	
<style>
* {
  box-sizing: border-box;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
}

button, input, select {
    -webkit-appearance: checkbox;
    outline: none;
    cursor: pointer;
   
}

label{
    padding-left: 11px;
    text-transform: lowercase;
    line-height: 27px;
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


    <form runat="server">
    <!-- header -->
    <div class="w3l-headers-9">
        <header>
            <div class="wrapper">
                <div class="header">
                    <div class="right-img-9">
                        <h1>
                           <%-- <a href="index.html" class="logo"><span class="fa fa-bullhorn"
                                    aria-hidden="true"></span>Classify</a>--%>
                            
          <a class="logo" href="/">
              
            <img src="assets/images/finaldeal1.png" alt="Your logo" title="Your logo" style="margin-top: 4%;" />
          </a> 
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
									<li><a href='/category/<%# Eval("CategoryName") %>'><%# Eval("CategoryName") %></a></li>
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
                                            <li><a href="/login">Log In</a></li>
                                            <li><a href="/user-signup">Sign Up</a></li>
                                            
                                        </ul>
                                    </li>
                                    <li><a href="#" class="link-nav">Contact</a></li>
                                    <li class="nav-right-sty">
                                        <a href="/listing-regs" class="btn button-eff button-eff-2">Free Listing</a>
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
    <!-- inner banner about -->
    <section class="w3l-inner-banner-main">
        <div class="about-inner inner2">
            <div class="wrapper seen-w3">
                <ul class="breadcrumbs-custom-path">
                    <li><a href="/">Home</a></li>
                    <li><span class="fa fa-angle-right" aria-hidden="true"></span></li>
                    <li runat="server" id="HeadsubTitle" class="active">All Ads</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner about -->

     <!-- search form -->
    <section class="w3l-search-form-3-main">
        <div class="search-form-3">
            <div class="wrapper">
                <div class="section-width">
                     <form class="search-3-gd">
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

    <!-- Blog -->
    <section class="w3l-products-page w3l-blog-single w3l-products-4">
        <div class="single blog">
            <div class="wrapper">
               
                <div class="d-grid grid-colunm-2 grid-colunm">
                    <!-- right side bar -->
                    <div class="right-side-bar">
                        <aside>
                           
                            <div class="form-inline search-form" >
                                <input class="form-control" type="search" placeholder="Search here..."
                                    aria-label="email" required="">
                                <button class="btn search" type="submit"><span class="fa fa-search"></span></button>
                                <button class="btn reset" type="reset" title="Reset Search"></button>
                            </div>
                        </aside>

                        <aside class="posts p-4 border single-left-inner">
                            <h3 class="aside-title">Category</h3>
                            <div class="brand-equal ">
                                <asp:RadioButtonList ID="RadioButtonListCat" CssClass="radio-input" runat="server" AutoPostBack="True" DataSourceID="SqlDbRadioCat" DataTextField="CategoryName" DataValueField="CatId" OnSelectedIndexChanged="FilterChange">

                                </asp:RadioButtonList>
                                <asp:SqlDataSource ID="SqlDbRadioCat" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                    SelectCommand="SELECT [CatId], [CategoryName] FROM [NewListing_Website_category_tbl] ORDER BY [CategoryName]"></asp:SqlDataSource>
                                <%--<input type="radio" name="radio" class="radio-input" checked>
                                <label class="brand-name">All</label>--%>
                            </div>
                            
                        </aside>


                        


                        <%--<aside class="posts p-4 border">
                            <h3 class="aside-title">Premium Ads</h3>
                            <div class="posts-grid">
                                <a href="blog-single.html">
                                    <img src="assets/images/b1.jpg" alt=" " class="img-responsive img-thumbnail">
                                </a>
                                <a href="blog-single.html">
                                    <img src="assets/images/b2.jpg" alt=" " class="img-responsive img-thumbnail">
                                </a>
                                <a href="blog-single.html">
                                    <img src="assets/images/b3.jpg" alt=" " class="img-responsive img-thumbnail">
                                </a>
                            </div>
                        </aside>--%>
                        
                        
                    </div>
                    <!-- //right side bar -->
                    <!-- left side blog post content -->
                    <div class="tab-content text-left">
                        <aside class="top-border d-flex">
                            
                            <div class="input-group-btn">
                                <select class="btn btn-default" name="ext" required="">
                                    <option selected="">Sort By Date</option>
                                    <option>Sort By Expire</option>
                                    <option>Sort By Popularity</option>
                                    <option>Sort By Price - Ascending</option>
                                    <option>Sort By Price - Descending</option>
                                </select>
                            </div>
                        </aside>

                        <div class="d-grid grid-col-2">
                         <asp:Repeater ID="RepeaterCatTab1" runat="server" DataSourceID="SqlDbTab1">
                             <ItemTemplate>
                        <div class="product">
                           
                            <a href="#">
                                <img src='/upload_category/icon/<%# Eval("CatIConImageID")%>.jpg' alt="service" class="img-fluid" >
                               </a>
                            <div class="info-bg">
                                <h5 ><a href="#" style="font-size:17px;"><%# Eval("CategoryName") %></a></h5>
                                <asp:Repeater ID="RepeaterCatTab1" runat="server" DataSourceID="SqlDbTags">
                                    <ItemTemplate>
                                <ol style="list-style-type: none; line-height: 28px;">
                                   <a href="/tag/<%# Eval("Tags") %>" <li> <%# Eval("Tags") %></li> </a>
                                    
                                    
                                </ol>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                <asp:SqlDataSource ID="SqlDbTags" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>"
                                
                                ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString.ProviderName %>"
                                SelectCommand="SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl]  WHERE ([Catid] = @Catid) ORDER BY TagId DESC" 
                                >
                                
                                
                                
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hfCatId" PropertyName="Value" DefaultValue="0" Name="Catid" Type="Int32" />
                            
                        </SelectParameters>
                                
                            </asp:SqlDataSource>
                                <asp:HiddenField ID="hfCatId" runat="server" Value='<%# Eval("Catid") %>' />

                                <ul class="d-flex">
                                    <%--<li class="nav-right-sty">
                                        <a href="#" class="btn button-eff button-eff-2">Go</a>
                                    </li>--%>
                                    <li><span class="fa fa-arrow-circle-right"></span> </li>
                                    <li class="margin-effe"><a href="#fav" title="Add this to Favorite"><span
                                                class="fa fa-heart-o"></span></a></li>
                                    <li><a href="#sahre" title="Share"><span class="fa fa-share"></span></a></li>
                                </ul>
                            </div>
                        </div>
                                 </ItemTemplate>
                             </asp:Repeater>

                        <asp:SqlDataSource ID="SqlDbTab1" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                        SelectCommand="SELECT top(6) [Catid], [CategoryName], [Priority], [Enable], [urlc], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] WHERE ([Enable] = @Enable) ORDER BY [Priority], [Catid] DESC, [CategoryName]">
                        
                            <SelectParameters>
                            <asp:Parameter DefaultValue="true" Name="Enable" Type="Boolean" />
                        </SelectParameters>
                  </asp:SqlDataSource>
                       
                    </div>


                        
                        <!-- pagination -->
                        <div class="pagination">
                            <ul>
                                <li> <a href="#none" class="not-allowed" disabled>
                                        <span class="fa fa-angle-double-left" aria-hidden="true"></span>
                                    </a>
                                </li>
                                <li><a class="active" href="#page">1</a></li>
                                <li>
                                    <a href="#page">2</a>
                                </li>
                                <li>
                                    <a href="#page">3</a>
                                </li>
                                <li>
                                    <a href="#page"><span class="fa fa-angle-double-right" aria-hidden="true"></span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- left side blog post content -->
                </div>
            </div>
        </div>
    </section>
    </form>
    <!-- //blog -->
        </form>
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



	</body>
</html>
