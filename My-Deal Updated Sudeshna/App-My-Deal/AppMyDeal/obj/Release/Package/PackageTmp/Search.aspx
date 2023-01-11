<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="AppMyDeal.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My-Deal</title>
    <link rel="stylesheet" href="/assets/css/Test.css" />
    <link rel="shortcut icon" href="/Admin/img/mydeal12.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <style>
* {
  box-sizing: border-box;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
}

         /*Cart  Start*/

          .w3l-footer-22 .below-section {
    background: #e13c51;
    padding: 8px 0;
    justify-content: space-between;
    border-radius: 6px;
}
            /*Cart  End*/
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
.img-fluid {
    width: 60%;
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

    .w3l-category-main .grid-sec-2 {
    grid-template-columns: 1fr 1fr 1fr;
    grid-gap: 20px;
    max-width: 545px;
    margin: auto;
    margin-top: 20px;
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
    width: 100%;
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
                            <div class="product-title" style="padding-bottom: 5%;"><a href="/details/<%# Eval("url") %>"><%# Eval("CompanyName") %></a></div>
                            <p class="product-description"><span class="fa fa-phone" aria-hidden="true"></span> &nbsp <%# Eval("Mobile") %></p>
                            <p class="product-description"><span class="fa fa-map-marker" aria-hidden="true"></span> &nbsp <%# Eval("Location") %>	</p>
                            <p class="product-description"><span class="fa fa-angle-double-right" aria-hidden="true"></span> &nbsp <%# Eval("KeyWord") %></p>
                            <p class="product-description"><a href="#"><span class="fa fa-angle-double-right" aria-hidden="true"></span> &nbsp  Open Now</a></p>
                            
                            
                           <%-- <button type="submit" class="btn button-eff checkout">Connect Now</button>--%>
                                 <asp:LinkButton ID="LinkBtnConnectNowTab1" CssClass="btn button-eff checkout" Text="Connect Now" CommandName="Add" CommandArgument='<%# Eval("CompanyId")%>' runat="server"></asp:LinkButton>

                            
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
