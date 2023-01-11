<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FreeListingLogin.aspx.cs" Inherits="AppMyDeal.FreeListingLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My-Deal</title>
    <link rel="stylesheet" href="assets/css/style-freedom.css" />
    <link rel="shortcut icon" href="/Admin/img/mydeal12.png" />
    <style>
        .button-eff{
            width:100%;
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
               
                 <form action="#" runat="server">
                <div class="post-cont">
                    <div class="heading-sec">
                        <h5>Login Account</h5>
                        
                    </div>
                    <div class="about-right-faq">
                       
                            
                            
                            <div class="d-grid grid-col-2">
                                <div class="ele-9its_grid">
                                    <asp:TextBox ID="username_txt" class="form-control validate" runat="server" Placeholder="Enter Mobile" ValidationGroup="LoginAc"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="username_txt" runat="server" ErrorMessage="Enter Mobile!" Display="Dynamic" ForeColor="Red" ValidationGroup="LoginAc"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="Reg2" runat="server"   ControlToValidate="username_txt" ErrorMessage="Enter correct phone no."  ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" ValidationGroup="LoginAc"></asp:RegularExpressionValidator>
                                    
                                </div>
                                <div class="ele-9its_grid">
                                   <asp:TextBox ID="pwd_txt" class="form-control validate" runat="server" Placeholder="Enter password" TextMode="Password" ValidationGroup="LoginAc"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="pwd_txt" runat="server" ErrorMessage="Enter Password!" Display="Dynamic" ForeColor="Red" ValidationGroup="LoginAc"></asp:RequiredFieldValidator>
                                  
                                </div>
                            </div>
                            

                         
                            <div class="heading-sec">
                                <asp:Label ID="lblError" style="text-align:center" ForeColor="Red" runat="server"></asp:Label>
                                <asp:Button ID="BtnListingLogin" CssClass="btn button-eff" runat="server" Text="Log In" ValidationGroup="LoginAc" OnClick="BtnListingLogin_Click" />
                        
                        <a href="/recover-password"><p><span class="fa fa-key" aria-hidden="true"></span>Forgot <b>Password?</b> 
                        </p></a>
                    </div>
                      
                    </div>
                </div>




                

                </form>
            </div>
        </div>
    </div>
    <!-- //faq -->
    <!-- footer-22 -->
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
     <span class="txt" style="font-size: 17px; font-weight: 500; color: black" >Home</span></a> 
    </li>
    <li>
        <a href="#" style="display:grid;"><span><i class="fa fa-facebook-official" style="font-size: 22px; color: black;" ></i></span>
        <span class="txt" style="font-size: 17px; font-weight: 500; color: black" >Social</span></a>
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
    <!-- //footer-22 -->



	</body>
</html>
