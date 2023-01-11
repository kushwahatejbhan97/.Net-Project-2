<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="MyDeal.RecoverPassword" %>

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
                                            <h3><a href="/"><img src="assets/images/finaldeal1.png" alt="post-add" class="img-fluid" /></a>Recover Password</h3>
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



	</body>
</html>
