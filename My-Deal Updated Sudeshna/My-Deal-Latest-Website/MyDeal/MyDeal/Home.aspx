<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyDeal.Home" %>

<!DOCTYPE html>

<html >
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
                                          
                                          <asp:Label ID="lblClientName" CssClass="toggle toogle-2" runat="server" Text="">
                                              <span class="fa fa-angle-down"
                                                aria-hidden="true"></span>
                                          </asp:Label>
                                       <%-- <label for="drop-4" class="toggle toogle-2">Abc <span class="fa fa-angle-down"
                                                aria-hidden="true"></span></label>--%>
                                        <a href="#" runat="server" class="link-nav dropdown-toggle" id="UserName">
                                            <span class="fa fa-angle-down" aria-hidden="true"></span></a>


     
                                        <input type="checkbox" id="drop-5" />
                                        <ul>
                                            <li> 
												<asp:LinkButton ID="LinkBtnLogout" runat="server" OnClick="LinkBtnLogout_Click"><i class="fa fa-sign-out"></i>Logout

												</asp:LinkButton>
												 </li>
                                            
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
    <!-- banner -->
    <section class="w3l-banner-3-main">
        <div class="banner-3">
            <div class="wrapper">
                <div class="cover-top-center-9">
                    <div class="w3ls_cover_txt-9">
                        <h3 class="title-cover-9">Buy, Sell, Rent & Exchange in one Click</h3>
                        <p class="para-cover-9"> Be a part of our family & get everything in your pocket</p>
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
    <!-- //search form -->

        

    <!-- category section -->
    <section class="w3l-category-main">
        <div class="categories-sec">
            <div class="wrapper">
                <h3 class="title-main">Popular Categories</h3>
                <div class="right-models text-center">
                    <div class="d-grid grid-sec">
                         <asp:Repeater ID="RepeaterPopularCat" runat="server" DataSourceID="SqlDbPopularCat">
                             <ItemTemplate>
                        <a href="/category/<%# Eval("urlc") %>">
                            <div class="card">
                                <div class="card-body">
                                   <%-- <span class="fa fa-bed"></span>--%>
                                   <img src='/upload_category/icon/<%# Eval("CatIConImageID")%>.jpg' alt="service" class="img-fluid" style="border-radius: 100%;" >
                                       <%-- <img src="uploads/23000.jpg" class="img-fluid" style="border-radius: 100%;" />--%>
                                    <h5 class="card-title mt-4"><%# Eval("CategoryName") %> </h5>
                                    
                                    
                                       
                                  <%--  <p class="para-design">6 Ads Posted</p>--%>
                                    

                                </div>
                            </div>
                            
                        </a>
                                 </ItemTemplate>

                             </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDbPopularCat" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                        SelectCommand="SELECT TOP 8 [Catid], [CategoryName], [Priority], [EnableBottom], [urlc], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] ORDER BY CategoryName">
                        
                  </asp:SqlDataSource>
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
                <label class="tabtle" for="tab1">Popular</label>

                <input id="tab2" type="radio" name="tabs">
                <label class="tabtle" for="tab2">Human Resources</label>

                <input id="tab3" type="radio" name="tabs">
                <label class="tabtle" for="tab3">Industries</label>

                <section id="content1" class="tab-content text-left">
                    <div class="d-grid grid-col-3">
                         <asp:Repeater ID="RepeaterCatTab1" runat="server" DataSourceID="SqlDbTab1">
                             <ItemTemplate>
                        <div class="product">
                           
                            <a href="#">
                                <img src='/upload_category/icon/<%# Eval("CatIConImageID")%>.jpg' alt="service" class="img-fluid" >
                               </a>
                            <div class="info-bg">
                                <h5 ><a href="/category/<%# Eval("urlc") %>" style="font-size:17px;"><%# Eval("urlc") %></a></h5>
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
                        SelectCommand="SELECT TOP 6 [Catid], [CategoryName], [Priority], [Enable], [urlc], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] WHERE ([Enable] = @Enable) ORDER BY [Priority], [Catid] DESC, [CategoryName]">
                        
                            <SelectParameters>
                            <asp:Parameter DefaultValue="true" Name="Enable" Type="Boolean" />
                        </SelectParameters>
                  </asp:SqlDataSource>
                       
                    </div>
                </section>

                <section id="content2" class="tab-content text-left">
                    <div class="d-grid grid-col-3">
                        <asp:Repeater ID="RepeaterCatTab2" runat="server" DataSourceID="SqlDbTab2">
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

                        <asp:SqlDataSource ID="SqlDbTab2" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                        SelectCommand="SELECT top(6) [Catid], [CategoryName], [Priority], [EnableBottom], [urlc], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] WHERE ([EnableBottom] = @EnableBottom) ORDER BY [Priority], [Catid] DESC, [CategoryName]">
                        
                            <SelectParameters>
                            <asp:Parameter DefaultValue="true" Name="EnableBottom" Type="Boolean" />
                        </SelectParameters>
                  </asp:SqlDataSource>
                    </div>
                </section>

                <section id="content3" class="tab-content text-left">
                    <div class="d-grid grid-col-3">
                       <asp:Repeater ID="RepeaterCatTab3" runat="server" DataSourceID="SqlDbTab3">
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

                        <asp:SqlDataSource ID="SqlDbTab3" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                        SelectCommand="SELECT top(6) [Catid], [CategoryName], [Priority], [Industries], [urlc], [Industries], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] WHERE ([Industries] = @Industries) ORDER BY [Priority], [Catid] DESC, [CategoryName]">
                        
                            <SelectParameters>
                            <asp:Parameter DefaultValue="true" Name="Industries" Type="Boolean" />
                        </SelectParameters>
                  </asp:SqlDataSource>
                    </div>
                </section>
            </div>
        </div>
    </div>

        </form>
    <!-- //Products4 block -->
    
    <!-- specifications -->
    <%--<section class="w3l-specifications-9">
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
    </section>--%>
   
    <!-- content-11 -->
    <%--<section class="w3l-content-11-main">
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
    </section>--%>
    <!-- //content-11 -->
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
