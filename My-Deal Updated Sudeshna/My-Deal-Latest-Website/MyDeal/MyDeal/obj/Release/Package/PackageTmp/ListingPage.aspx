<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListingPage.aspx.cs" Inherits="MyDeal.ListingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My-Deal</title>
    <link rel="stylesheet" href="assets/css/style-freedom.css" />
    <link rel="shortcut icon" href="/Admin/img/mydeal12.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

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

 .w3l-ecom-cart .product-image {
    float: left;
    width: 25%;
    margin-right: 4em;
}
  .w3l-ecom-cart .product-details {
    float: left;
    /*width: 30%;*/
}
  .w3l-ecom-cart .product-quantity {
    float: left;
   /* width: 20%;*/
    text-align: center;
    padding-bottom: 36px;
}
</style>

</head>

<body>
	
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
                                    <li class="nav-right-sty">
                                        <a href="/listing-regs" class="btn button-eff button-eff-2">Free Listing</a>
                                    </li>
                                   <%-- <li><a href="#" class="link-nav">Home</a></li>--%>
                                    <li><a href="#" class="link-nav">What's New</a></li>
                                     <li><a href="#" class="link-nav">Advertise</a></li>
                                     <li><a href="#" class="link-nav">Contact</a></li>
                                   
                                    <li>
                                        <label for="drop-4" class="toggle toogle-2">Category <span class="fa fa-angle-down"
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
                                    
                                   <li>
                                        <label for="drop-4" class="toggle toogle-2">Account <span class="fa fa-angle-down"
                                                aria-hidden="true"></span></label>
                                        <a href="#" class="link-nav dropdown-toggle">Account </a>
                                        <input type="checkbox" id="drop-4" />
                                        <ul>
                                            <li><a href="/login">Log In</a></li>
                                            <li><a href="/user-signup">Sign Up</a></li>
                                            
                                        </ul>
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
                    <li><a href="#">Home</a></li>
                    <li><span class="fa fa-angle-right" aria-hidden="true"></span></li>
                    <li class="active">Search Result Page</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner about -->
    <!-- search results 1 -->
    <section class="w3l-search-form-3-main">
        <div class="search-form-3">
            <div class="wrapper">
                <div class="section-width">
                     <form class="search-3-gd">
                        <div class="d-flex grids-icon">
                            <span class="fa fa-text-height" aria-hidden="true"></span>
                           <%-- <input type="search" name="text" placeholder="Enter Keywords here.." required>--%>
                            <asp:TextBox ID="txtsearch" TextMode="Search" runat="server" placeholder="Enter Keywords here.."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtsearch" ValidationGroup="SearchForm" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Keywords"></asp:RequiredFieldValidator>
                        </div>
                        <div class="d-flex grids-icon grids-icon-2">
                            <span class="fa fa-tags" aria-hidden="true"></span>
                            <div class="input-group-btn">

                                 <asp:DropDownList ID="DropDownList2" runat="server" class="btn btn-default" DataTextField="CategoryName" DataValueField="urlc" AppendDataBoundItems="true" DataSourceID="SqlDataSourceCate" AutoPostBack="true" ValidationGroup="SearchForm">
                                                    <asp:ListItem Value="0">Select Category</asp:ListItem>
                                                </asp:DropDownList>
                                                     <asp:SqlDataSource ID="SqlDataSourceCate" runat="server" 
                                                         ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                                         SelectCommand="SELECT [CatId], [CategoryName], [urlc] FROM [NewListing_Website_category_tbl] ORDER BY CategoryName">
    </asp:SqlDataSource>

                                 <asp:RequiredFieldValidator ControlToValidate="DropDownList2" ID="RequiredFieldValidator2"
                                    ValidationGroup="SearchForm" ForeColor="Red" ErrorMessage="*Please Select Category"
                                    InitialValue="0" runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="d-flex grids-icon grids-icon-2">
                            <span class="fa fa-map-marker" aria-hidden="true"></span>
                            <div class="input-group-btn">
                                <asp:DropDownList ID="ddlcity" runat="server" class="btn btn-default" 
                                                        AppendDataBoundItems="True" ValidationGroup="SearchForm" 
                                                        DataSourceID="SqlDataSourceCityName" DataTextField="CityName" 
                                                        DataValueField="CityName">
                                                  <asp:ListItem Value="0">Choose City</asp:ListItem>
                                                </asp:DropDownList>

                                <asp:RequiredFieldValidator ControlToValidate="ddlcity" ID="RequiredFieldValidator1"
                                    ValidationGroup="SearchForm" ForeColor="Red" ErrorMessage="*Please Choose City"
                                    InitialValue="0" runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <asp:SqlDataSource ID="SqlDataSourceCityName" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                                        SelectCommand="SELECT [ID], [CityName] FROM [Updated_State_City_List] ORDER BY [CityName]">
                                                    </asp:SqlDataSource>
                                
                            </div>
                        </div>

                         <asp:Button ID="btnsearch" CssClass="btn button-eff" runat="server" ValidationGroup="SearchForm"  Text="Search" OnClick="btnsearch_Click" />

                        <%--<button type="submit" class="btn button-eff"><span class="fa fa-search"
                                aria-hidden="true"></span>Search</button>--%>
                         </form>
                </div>
            </div>
        </div>
    </section>
    <!-- search results 1 -->

        <!-- //inner banner about -->
    <section class="w3l-ecom-cart">
        <div class="covers-main">
            <div class="wrapper">
               <%-- <h1>Shopping Cart</h1>--%>
                <div class="shopping-cart">
                    
                    
                    
                    <asp:Repeater ID="RepeaterPopularCat" runat="server" OnItemCommand="RepeaterPopularCat_ItemCommand" >
                       
                    <ItemTemplate>
                        <div class="product">
                        <div class="product-image">
                            <a href="ecommerce-single.html">
                                <img src="/uploads/comp-img/<%# Eval("ListingImageID")%>.jpg" alt=""
                                    class="img-responsive" style="border-radius: 15px; width: 90%;"></a>
                        </div>
                        <div class="product-details">
                            <div class="product-title" style="padding-bottom: 5%;"><a href="#"><%# Eval("CompanyName") %></a></div>
                            <p class="product-description"><span class="fa fa-phone" aria-hidden="true"></span> &nbsp <%# Eval("Mobile") %></p>
                            <p class="product-description"><span class="fa fa-map-marker" aria-hidden="true"></span> &nbsp <%# Eval("Location") %>	</p>
                            <p class="product-description"><span class="fa fa-angle-double-right" aria-hidden="true"></span> &nbsp North Indian Restaurants,</p>
                            <p class="product-description"><a href="#"><span class="fa fa-angle-double-right" aria-hidden="true"></span> &nbsp  Open Now</a></p>
                            

                            
                        </div>
                     
                        <div class="product-quantity">
                           <%-- <input type="number" value="1" min="1">--%>
                            <asp:LinkButton ID="LinkBtnConnectNowTab1" CssClass="btn button-eff checkout" Text="Connect Now" CommandName="Add" CommandArgument='<%# Eval("CompanyId")%>' runat="server"></asp:LinkButton>
                            <%--<button type="submit" class="btn button-eff checkout">Connect Now--%>
                                <%--<span class="fa fa-arrow-circle-right" aria-hidden="true"></span><--%></button>
                        </div>
                        
                        </div>
                        </ItemTemplate>
                        </asp:Repeater>
                    
                    <asp:SqlDataSource ID="SqlDblistingData" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                        
                        ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString.ProviderName %>" 
                        SelectCommand="SELECT [CompanyId], [CompanyName], [Mobile], [Password], [VerMobile], [CatId], [OwnerName], [YearEstablish], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Latitude], [Longitude], [url], [ListingType], [Priority], [Tags], [ListingImageID] FROM [NewListing_Website_listing_tbl] WHERE ([Tags] LIKE  %@Tags%)" >
                        
                     <SelectParameters>
                                        <asp:QueryStringParameter DefaultValue="0" Name="Tags" QueryStringField="TagName" Type="String" />
                                    </SelectParameters>
                    </asp:SqlDataSource>
                    
                   
                </div>
            </div>
        </div>
    </section>

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
                            <p>@2019 Classify. All rights reserved | Design by <a href="#">Dexterous</a>
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
