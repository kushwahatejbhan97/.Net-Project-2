<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="FreeListingRegs.aspx.cs" Inherits="MyDeal.FreeListingRegs" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My-Deal</title>
    <link rel="stylesheet" href="assets/css/style-freedom.css" />
    <link rel="shortcut icon" href="/Admin/img/mydeal12.png" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        input[type=checkbox], input[type=radio] {
    box-sizing: border-box;
    padding: 0;
    appearance: checkbox !important;
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
                                        <a href="/listing-login" class="btn button-eff button-eff-2">Log In</a>
                                    </li>
                                    <li class="nav-right-sty">
                                        <a href="/listing-regs" class="btn button-eff button-eff-2">Sign Up</a>
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
 
    <!-- faq page -->
    <div class="w3l-post-sec-main">
        <div class="post-se sec-padding">
            <div class="wrapper">
                <h3 class="title-main">Post Your Ad</h3>
                 <form id="form1" runat="server">
                <div class="post-cont">
                    <div class="heading-sec">
                        <h5>Company Information</h5>
                        <p><span class="fa fa-gift" aria-hidden="true"></span>Post ad to earn <b>Cash Back</b> in your
                            account</p>
                    </div>
                    <div class="about-right-faq">
                       
                            <div class="d-grid grid">
                                

                                 <div class="ele-9its_grid">
                                     <asp:DropDownList ID="DropDownList2" runat="server" class="form-control"  DataTextField="CategoryName" DataValueField="CatId" AppendDataBoundItems="true" DataSourceID="SqlDataSourceCate" AutoPostBack="true" ValidationGroup="NewListing">
                                                    <asp:ListItem Value="0">Select Category</asp:ListItem>
                                                </asp:DropDownList>
                                     <asp:RequiredFieldValidator ControlToValidate="DropDownList2" ID="RequiredFieldValidator1"
                                    ValidationGroup="NewListing" ForeColor="Red" ErrorMessage="*Please Select Category"
                                    InitialValue="0" runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                                                     <asp:SqlDataSource ID="SqlDataSourceCate" runat="server" 
                                                         ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                                         SelectCommand="SELECT [CatId], [CategoryName] FROM [NewListing_Website_category_tbl] ORDER BY CategoryName">
    </asp:SqlDataSource>
                                </div>

                                
                            </div>
                            
                            <div class="d-grid grid-col-2">
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtcompanyname" CssClass="form-control" placeholder="Company Name OR Title" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" BorderStyle="None" ControlToValidate="txtcompanyname" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Company Name OR Title"></asp:RequiredFieldValidator>
                                   <%-- <input class="form-control" placeholder="Company Name OR Title" name="name" type="text"
                                        required="">--%>
                                </div>
                                <div class="ele-9its_grid">
                                    <%--<h5>Enter Your Price</h5>--%>
                                    <asp:TextBox ID="txtemailid" CssClass="form-control" placeholder="Email Id" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" BorderStyle="None" ControlToValidate="txtemailid" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Email"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="d-grid grid-col-2">
                                 <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtmobileNo" runat="server" class="form-control" placeholder="Phone Number" data-error="Landline Number field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtmobileNo" runat="server" ErrorMessage="Enter Mobile" ValidationGroup="NewListing" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                                 <asp:RegularExpressionValidator ID="Reg2" runat="server"   ControlToValidate="txtmobileNo" ErrorMessage="Enter correct phone no."  ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" ValidationGroup="NewListing"></asp:RegularExpressionValidator>
                                  <asp:Label ID="lblerror" ForeColor="Red" runat="server"></asp:Label>
                                </div>
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtLandlineno" runat="server" class="form-control" placeholder="Landline Number" data-error="Landline Number field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                  
                                </div>
                            </div>
                             <div class="d-grid grid-col-2">
                                <div class="ele-9its_grid">
                                   <asp:TextBox ID="txtYearstablis" runat="server" class="form-control" placeholder="Year Established*" data-error="Year Established field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" BorderStyle="None" ControlToValidate="txtYearstablis" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Year Established"></asp:RequiredFieldValidator>

                                </div>

                                 <div class="ele-9its_grid">
                                   <asp:TextBox ID="txtwebsite" runat="server" class="form-control" placeholder="Website (ex: www.example.com)" data-error="Year Established field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                
                                 </div>
                            </div>


                            <div class="d-grid grid-col-2">
                                <div class="ele-9its_grid">
                                   <asp:TextBox ID="txtownername" runat="server" class="form-control" placeholder="Owner Name" data-error="OwnerName field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" BorderStyle="None" ControlToValidate="txtownername" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Owner Name"></asp:RequiredFieldValidator>

                                </div>

                                 <div class="ele-9its_grid">
                                     <asp:DropDownList ID="ddlcity" runat="server" class="form-control" 
                                                        AppendDataBoundItems="True" ValidationGroup="NewListing" 
                                                        DataSourceID="SqlDataSourceCityName" DataTextField="CityName" 
                                                        DataValueField="CityName">
                                                  <asp:ListItem Value="0">Choose City</asp:ListItem>
                                            
                                                </asp:DropDownList>

                                      <asp:RequiredFieldValidator ControlToValidate="ddlcity" ID="RequiredFieldValidator9"
                                    ValidationGroup="NewListing" ForeColor="Red" ErrorMessage="*Please Choose City"
                                    InitialValue="0" runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <asp:SqlDataSource ID="SqlDataSourceCityName" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                                        SelectCommand="SELECT [ID], [CityName] FROM [Updated_State_City_List] ORDER BY [CityName]">
                                                    </asp:SqlDataSource>
                                </div>
                            </div>


                            <div class="d-grid grid">
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtlocation" runat="server" class="form-control" placeholder="Location*"  data-error="Area field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" BorderStyle="None" ControlToValidate="txtlocation" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Location"></asp:RequiredFieldValidator>
                                </div>

                                
                                 
                            </div>


                            <div class="d-grid grid">
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtfulladdress"  runat="server" class="form-control" placeholder="Address*"  data-error="Area field is required"  ValidationGroup="NewListing"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" BorderStyle="None" ControlToValidate="txtfulladdress" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Address"></asp:RequiredFieldValidator>
                                  
                                </div>

                                 
                            </div>


                        <div class="d-grid grid-col-2">
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtDes"  runat="server" class="form-control" placeholder="Description *"    ValidationGroup="NewListing"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" BorderStyle="None" ControlToValidate="txtDes" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Description"></asp:RequiredFieldValidator>
                                </div>

                                 <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtMap"  runat="server" class="form-control" placeholder="Map*"   ValidationGroup="NewListing"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" BorderStyle="None" ControlToValidate="txtMap" ValidationGroup="NewListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Map"></asp:RequiredFieldValidator>
                                </div>
                            </div>


                        <div class="d-grid grid">
                                <div class="ele-9its_grid">
                                   
                                <asp:FileUpload ID="FUpBanner" placeholder="Product Desktop Image*" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="FUpBanner" ValidationGroup="NewListing" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*Upload Desktop Image"></asp:RequiredFieldValidator>
                                <p class="help-block">* The image width and height should be 253px * 253px</p>

                                </div>

                                 
                            </div>


                            <%--<div class="d-grid grid-col-2">
                                 <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtlatitude" runat="server"  class="form-control" placeholder="Enter Latitude"  ValidationGroup="NewListing"></asp:TextBox>
                                  
                                </div>
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="txtlongitude" runat="server"   class="form-control" placeholder="Enter Longitude"  ValidationGroup="NewListing"></asp:TextBox>
                                  
                                </div>
                            </div>--%>

                            <div class="d-grid grid-col-2">
                                 <div class="ele-9its_grid">
                                   <asp:CheckBoxList ID="CheckBoxList1"  runat="server" DataSourceID="SqlDataSourceTagsName" DataTextField="Tags" RepeatDirection="Horizontal" RepeatColumns="5"  DataValueField="TagId" ValidationGroup="NewListing">
                                        </asp:CheckBoxList>

                                    <asp:SqlDataSource ID="SqlDataSourceTagsName" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" SelectCommand="SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl] WHERE ([Catid] = @Catid) ORDER BY Tags">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                                  
                                  
                                </div>
                                <div class="ele-9its_grid">
                                      
                                   <asp:CheckBoxList ID="CheckBoxList2" runat="server" Class="form-control" DataSourceID="SqlDataSourceCatKeywordname" DataTextField="Keywords" RepeatDirection="Horizontal" RepeatColumns="5" CssClass="myCheck" DataValueField="KeywordId" ValidationGroup="NewListing">
                                        </asp:CheckBoxList>

                                    <asp:SqlDataSource ID="SqlDataSourceCatKeywordname" runat="server" ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                        SelectCommand="SELECT [KeywordId], [CatId], [Keywords] FROM [NewListing_Website_Cat_Keyword_tbl] WHERE ([Catid] = @Catid) ORDER BY Keywords">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                                  
                                </div>
                            </div>
                            
                      <asp:Button ID="BtnSignUP" ValidationGroup="NewListing" class="btn button-eff" runat="server" Text="Post Ad" OnClick="BtnSignUP_Click" />
                    </div>
                </div>




                

                </form>
            </div>
        </div>
    </div>
    <!-- //faq -->
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
