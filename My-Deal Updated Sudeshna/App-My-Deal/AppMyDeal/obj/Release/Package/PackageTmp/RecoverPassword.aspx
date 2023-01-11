<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="AppMyDeal.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My-Deal</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/animate.min.css" />
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/meanmenu.min.css" />
    <link rel="stylesheet" href="assets/css/select2.min.css" />
    <link rel="stylesheet" href="assets/css/Style.css" />
    <link rel="shortcut icon" href="/Admin/img/mydeal12.png" />

    <link rel="stylesheet" href="assets/css/style-freedom.css" />
</head>

<body>
	
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
    
        .fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

          .center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
  margin-top: 10%;
}

</style>



    <!-- Forms23 block -->
    <section class="s-space-bottom-full bg-accent-shadow-body">
        <form runat="server">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="gradient-wrapper">
                            <div class="input-layout1 gradient-padding post-ad-page">
                                <div id="post-add-form">
                                    <div class="container-fluid">
                                        <div class="section-title-left-dark border-bottom d-flex">
                                            <h3><a href="/"> <img src="assets/images/finaldeal1.png" alt="Paris" class="center"></a>Recover Password</h3>
                                        </div>
                                        <div class="row"  id="loginmain" runat="server">
                                            <div class="col-sm-3 col-12">
                                                <label class="control-label" for="seller-name">Mobile<span> *</span></label>
                                            </div>
                                            <div class="col-sm-9 col-12">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtmobile" class="form-control validate" runat="server" Placeholder="Enter Mobile" ValidationGroup="CheckAc"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtmobile" runat="server" ErrorMessage="Enter Mobile!" Display="Dynamic" ForeColor="Red" ValidationGroup="CheckAc"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="Reg2" runat="server"   ControlToValidate="txtmobile" ErrorMessage="Enter correct phone no."  ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" ValidationGroup="CheckAc"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                              <div class="col-sm-9 col-12">
                                                <div class="form-group">
                                                  <center><asp:Button ID="btnSu" runat="server" class="cp-search-btn" Text="Submit" onclick="btncheckEmail_Click" ValidationGroup="CheckAc"></asp:Button></center>  
                                                </div>
                                              </div>
                                        </div>

                                        <div class="row"  id="VeryfyOtp" runat="server" visible="false">
                                            <div class="col-sm-3 col-12">
                                                <label class="control-label" for="seller-name">Enter OTP<span> *</span></label>
                                            </div>
                                            <div class="col-sm-9 col-12">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtotp" class="form-control validate" runat="server" Placeholder="Enter OTP" ValidationGroup="CheckOTP"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtotp" runat="server" ErrorMessage="Enter Mobile!" Display="Dynamic" ForeColor="Red" ValidationGroup="CheckOTP"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                              <div class="col-sm-9 col-12">
                                                <div class="form-group">
                                                  <center><asp:Button ID="Button1" runat="server" class="cp-search-btn" Text="Submit OTP" onclick="btnVeryOTP_Click" ValidationGroup="CheckOTP"></asp:Button></center>  
                                                </div>
                                              </div>
                                        </div>

                                        <div class="row"   id="ChangPass" runat="server" visible="false">
                                            <div class="col-sm-12 col-12">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"  class="form-control validate" placeholder="Password" ValidationGroup="forgotpassChangePass"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtpass" runat="server" ErrorMessage="Enter your Password!" Display="Dynamic" ForeColor ="Red" ValidationGroup="forgotpassChangePass"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="col-sm-12 col-12">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtconpass" runat="server" TextMode="Password"  class="form-control validate" placeholder="Confirm password" ValidationGroup="forgotpassChangePass"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtconpass" runat="server" ErrorMessage="Enter your Confirm password!" Display="Dynamic" ForeColor="Red" ValidationGroup="forgotpassChangePass"></asp:RequiredFieldValidator>
                                                    <asp:CompareValidator runat="server" id="cmppassword" controltovalidate="txtpass" controltocompare="txtconpass" operator="Equal" type="String" errormessage="password mismatch." ForeColor ="Red" Display="Dynamic" ValidationGroup="forgotpassChangePass" />
                                                </div>
                                            </div>

                                              <div class="col-sm-9 col-12">
                                                <div class="form-group">
                                                  <center><asp:Button ID="Button2" runat="server" class="cp-search-btn" Text="Submit OTP" onclick="btnChangePass_Click" ValidationGroup="forgotpassChangePass"></asp:Button></center>  
                                                </div>
                                              </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        </section>
    <!-- Forms23 block -->

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
