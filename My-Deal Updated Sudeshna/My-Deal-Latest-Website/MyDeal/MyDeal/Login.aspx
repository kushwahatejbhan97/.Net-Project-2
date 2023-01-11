<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyDeal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My-Deal</title>
    <link rel="stylesheet" href="assets/css/style-freedom.css" />
    <link rel="shortcut icon" href="/Admin/img/mydeal12.png" />
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
</style>



    <!-- Forms23 block -->
    <section class="w3l-forms-23">
        <div class="forms23-block">
            <div class="wrapper">
                <h1>
                    
                     <a class="logo" href="/">
              
            <img src="assets/images/finaldeal1.png" alt="Your logo" title="Your logo" style="margin-top: 4%;" />
          </a> 
                
                </h1>
                <div class="d-grid forms23-grids">
                    <div class="form23">
                        <h6>Login to your account</h6>
                        <form action="#" runat="server">
                            <asp:TextBox ID="username_txt" class="input-form" runat="server" Placeholder="Enter Mobile" ValidationGroup="LoginAc"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="username_txt" runat="server" ErrorMessage="Enter Mobile!" Display="Dynamic" ForeColor="Red" ValidationGroup="LoginAc"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="Reg2" runat="server"   ControlToValidate="username_txt" ErrorMessage="Enter correct phone no."  ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" ValidationGroup="LoginAc"></asp:RegularExpressionValidator>
                            

                            <asp:TextBox ID="pwd_txt" class="input-form" runat="server" Placeholder="Enter password" TextMode="Password" ValidationGroup="LoginAc"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="pwd_txt" runat="server" ErrorMessage="Enter Password!" Display="Dynamic" ForeColor="Red" ValidationGroup="LoginAc"></asp:RequiredFieldValidator>

                            <asp:Button ID="btnlogin" runat="server" class="btn button-eff" Text="Login" OnClick="btnlogin_Click" ValidationGroup="LoginAc"></asp:Button>
                            
                        </form>
                        <div style="display:flex;">
                        <p>Not a member yet? <a href="/user-signup">Sign Up</a></p>
                         <p style="padding-left: 5%;"><a href="/recover-password"><u>Recover Password</u></a></p>
                            </div>
                    </div>
                    <div class="form23-text">
                        <h3>Buy, Sell, Rent & Exchange in one Click</h3>
                        <p>Classified ads best theme relies on fast and intuitive way of promoting your ads login now
                        </p>
                        <a href="/" class="btn button-eff button-eff-2"><span class="fa fa-hand-o-left"
                                aria-hidden="true"></span>
                            Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Forms23 block -->



	</body>
</html>
