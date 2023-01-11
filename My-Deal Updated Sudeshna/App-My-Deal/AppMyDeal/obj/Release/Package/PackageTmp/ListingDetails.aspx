<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListingDetails.aspx.cs" Inherits="AppMyDeal.ListingDetails" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
     <title>My-Deal</title>
    <link rel="stylesheet" href="/assets/css/Test.css" />
    <link rel="shortcut icon" href="/Admin/img/mydeal12.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>


<body>

<style>
* {
  box-sizing: border-box;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
}
    /*Search Start*/
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
    background: url(/assets/images/search.png) no-repeat -2px -2px #e13c51;
    width: 12%;
    height: 42px;
    border: 1px solid #24506038 !important;
    padding: 0 !important;
    border: none;
    outline: none;
    border-radius: 0 3px 3px 0;
    margin-top: 0px !important;
}
       /*Search  end*/

        /*TopNav Start*/

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
         background-image: url("/assets/images/user.png");

    }
}


       /*TopNav End*/


       /*Footer Start*/

       .footMenu {
   position: fixed;
    bottom: 52px;
    right: 0px;
    background: #f85c70;
    width: 100%;
    height: 19%;
    border-radius: 15px;
    padding: 13px;
    
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


        /*Footer  End*/


         /*Cart  Start*/

          .w3l-footer-22 .below-section {
    background: #e13c51;
    padding: 8px 0;
    justify-content: space-between;
    border-radius: 6px;
}
            /*Cart  End*/



.button-eff {
    
    width: 100%;
}
.d-grid {
    display: block;
}

.row {
  display: flex;
}

.column {
  flex: 33.33%;
  padding: 5px;
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
                           
          <a class="logo" href="/">
            <img src="/assets/images/finaldeal1.png" alt="Your logo" title="Your logo" style="margin-top: 5%" />
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
        <!--// header -->

  <!-- search form -->
    <div class="col-md-7 header-middle" style="padding-top:20px; width: 100%; padding: 15px;text-align: center;
    display: flex;
    flex-direction: row;">
			
					
			
			<asp:TextBox ID="txtsearch" TextMode="Search" runat="server" placeholder="Search here..."></asp:TextBox>
			
			<asp:Button ID="btnsearch" OnClick="btnsearch_Click" runat="server" Text="" style="width:13%;"/>
					
				<div class="clearfix"></div>
			
		</div>
    <!-- //search form -->
   
    <!-- Blog -->
    <section class="w3l-products-page w3l-blog-single w3l-products-4">
        <div class="single blog">
            <div class="wrapper">
               
                <div class="grid-colunm-2 d-flex">
                    <!-- left side blog post content -->
                  
                       <asp:Repeater ID="RepeaterComDt2" runat="server" OnItemCommand="RepeaterComDt2_ItemCommand">
                        <HeaderTemplate><div class="tab-content text-left single-left-content left-product-sing"></HeaderTemplate>
                    <ItemTemplate>
                    
                        <h3 class="aside-title single-prt"><%# Eval("CompanyName") %></h3>
                        <span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
                        
                        <!-- image -->
                        

                        <div class="row" style="margin-top: 2%;">
  <div class="column">
     
    <img src="/uploads/comp-img/<%# Eval("ListingImageID")%>.jpg" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="/uploads/comp-img/<%# Eval("ListingImageID")%>.jpg" alt="Forest" style="width:100%">
  </div>
  <div class="column">
    <img src="/uploads/comp-img/<%# Eval("ListingImageID")%>.jpg" alt="Mountains" style="width:100%">
  </div>
</div>
                        <!-- //image -->
                        
                            <div class="top-sing-sec">
                       
                            <h3 class="aside-title">Ad Details</h3>
                            
                               
                            <p><%# Eval("Describtion") %></p>
                                   
                            
                            
                            <%--<h3 class="aside-title top-sec-space">KeyWord</h3>
                            <div class="d-grid list-styles">
                                <ul class="ad-lists">
                                    <li><span class="fa fa-check-circle" aria-hidden="true"></span><%# Eval("KeyWord") %>
                                        
                                    </li>
                                 
                                </ul>
                                
                            </div>--%>
                            <div class="map-single product-details-top">
                                <div class="d-grid some-text-spe">
                                    <div class="left-cont">
                                        <h4><span class="w3layouts-agileinfo">Name </span> : <p><%# Eval("CompanyName") %></p>
                                        </h4>
                                        <h4><span class="w3layouts-agileinfo">Mobile </span> : <p><%# Eval("Mobile") %></p>
                                        </h4>
                                        <h4><span class="w3layouts-agileinfo">Owner Name </span> : <p><%# Eval("OwnerName") %></p>
                                        </h4>
                                        <h4><span class="w3layouts-agileinfo">Year Establish </span> : <p><%# Eval("YearEstablish") %></p>
                                        </h4>
                                        
                                           <h4><span class="w3layouts-agileinfo">Email </span> : <p><%# Eval("Email") %></p>
                                        </h4>
                                        <h4><span class="w3layouts-agileinfo">City </span> : <p><%# Eval("City") %></p>
                                        </h4>
                                        <h4><span class="w3layouts-agileinfo">Total Review </span> : <p><%# Eval("TotalReview") %></p>
                                        </h4>

                                        <h4><span class="w3layouts-agileinfo">Map </span> : <p><%# Eval("NewMap") %></p>
                                        </h4>
                                        
                                        <h4><span class="w3layouts-agileinfo">Listing Type </span> : <p><%# Eval("ListingType") %></p>
                                        </h4>
                                       
                                    </div>
                                    
                                    
                                </div>
                            </div>
                                 
                          
                            </div>
                       
                         </ItemTemplate>
                           <FooterTemplate> </div></FooterTemplate>
                   
                        </asp:Repeater>
                   
                        
                    <!-- //left side blog post content -->
                    <!-- right side bar -->
                    
                    
                        <div class="right-side-bar single-right-content product-right-sin">
                   
                        <aside class="bg-effe">
                            <h3 class="aside-title margin-b-3">Company Information </h3>
                            <span class="pos-icon">
                                <span class="fa fa-laptop"></span>
                            </span>
                        </aside>
                        <asp:Repeater ID="RepeaterComDtl" runat="server" OnItemCommand="RepeaterComDt2_ItemCommand">
                            <HeaderTemplate>  <aside class="posts p-4 border"></HeaderTemplate>
                      <ItemTemplate>
                           
                            <ul class="category product-page">
                                <li class="user-text"><span class="fa fa-user yelp"></span><%# Eval("CompanyName") %></li>
                                <li><span class="fa fa-map-marker"></span><%# Eval("Location") %>
                                </li>
                                <li><span class="fa fa-phone"></span><%# Eval("Mobile") %>
                                </li>
                                <li><span class="fa fa-globe"></span><%# Eval("Website") %>
                                </li>
                                <li><span class="fa fa-clock-o"></span> Open Now 
                                </li>
                                <%--<li><a href="product-1.html" class="colors"><span
                                            class="fa fa-shopping-basket"></span>View
                                        Now</a>
                                </li>--%>
                            </ul>
                            </ItemTemplate>
                            <FooterTemplate></aside></FooterTemplate>
                        
                         </asp:Repeater>
                        <aside class="posts p-4 border">
                            <h3 class="aside-title">Contact</h3>
                           
                                <div class="form-group">
                                    <input type="email" name="Email" class="form-control" placeholder="Your Email"
                                        required="">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="Name" class="form-control" placeholder="Your Name"
                                        required="">
                                </div>
                                <div class="form-group">
                                    <textarea name="Message" class="form-control" placeholder="Your reply..."
                                        required=""></textarea>
                                </div>
                                <div class="submit">
                                    <button type="submit" class="btn button-eff">Send</button>
                                </div>
                           
                        </aside>
                        
                        
                       
                        </div>
                    
                       

                    <asp:SqlDataSource ID="SqlDBComDtl" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                        
                        ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString.ProviderName %>" 
                        SelectCommand="SELECT [CompanyId], [CompanyName], [Mobile], [Password], [VerMobile], [CatId], [OwnerName], [YearEstablish], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Latitude], [Longitude], [url], [ListingType], [Priority], [Tags], [ListingImageID], [ListingIConImageID], [TagId], [Describtion], [NewMap] FROM [NewListing_Website_listing_tbl]" 
                        >
                        
                        
                    </asp:SqlDataSource>

                    <!-- //right side bar -->
                </div>
            </div>
        </div>

        <!-- javascript -->
        <script src="assets/js/jquery-3.3.1.min.js"></script>
        <script src="assets/js/owl.carousel.js"></script>
        <script>
            $(document).ready(function () {
                var owl = $('.owl-carousel');
                owl.owlCarousel({
                    stagePadding: 50,
                    margin: 10,
                    nav: false,
                    loop: false,
                    responsive: {
                        0: {
                            items: 1
                        },
                        600: {
                            items: 1
                        },
                        1000: {
                            items: 1
                        }
                    }
                })
            })
        </script>
    </section>




        </form>
       
    <footer class="w3l-footer-22" style="padding: 13px;">
        <section class="fotter-sub">
            
            <div class="below-section">
                <div class="wrapper">
                    <div class="copyright-footer">
                        
                        <ul class="text-right">
                            <li><a href="#payment"><img src="/assets/images/payment1.jpg" alt=""
                                        class="img-responsive"></a>
                            </li>
                            <li><a href="#payment"><img src="/assets/images/payment2.jpg" alt=""
                                        class="img-responsive"></a>
                            </li>
                            <li><a href="#payment"><img src="/assets/images/payment3.jpg" alt=""
                                        class="img-responsive"></a>
                            </li>
                            <li><a href="#payment"><img src="/assets/images/payment4.jpg" alt=""
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
