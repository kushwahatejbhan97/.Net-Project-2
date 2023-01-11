<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="AppMyDeal._default" %>

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
    <style>
        .partitioned {
    padding-left: 15px;
    letter-spacing: 42px;
    border: 0;
    background-image: linear-gradient(to left, black 70%, rgba(255, 255, 255, 0) 0%);
    background-position: bottom;
    background-size: 50px 1px;
    background-repeat: repeat-x;
    background-position-x: 35px;
    width: 220px !important;
    min-width: 220px;
    border: none !important;
    box-shadow: none !important;
}

        #divOuter {
    width: 190px;
    overflow: hidden;
}

        #divInner {
    left: 0;
    position: sticky;
}
        .center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
  margin-top: 10%;
}
        .w3l-banner-3-main .banner-3 {
            /*background: url(../images/36.jpg) no-repeat center;*/
            background-size: cover;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            -ms-background-size: cover;
            position: relative;
            background-repeat: repeat-x;
            animation: slideleft 10000s infinite linear;
            -webkit-animation: slideleft 10000s infinite linear;
            z-index: 0;
            height: 200px;
        }

        .w3l-headers-9 .header {
            display: grid;
        }
 input.form-control {
    color: #222222;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    -ms-border-radius: 2px;
    -o-border-radius: 2px;
    border-radius: 7px;
    border: 1px solid #1210105c;
    width: 100%;
    padding: 16px;
    font-size: 18px;
    font-weight: 400;
}
        .cp-search-btn {
    border: 1px solid #060e1f;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    font-size: 14px;
    font-weight: 700;
    font-family: 'Roboto', sans-serif;
    padding: 9px 38px;
    text-decoration: none;
    display: inline-block;
    text-transform: uppercase;
    color: #ffffff;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#383838), to(#282828));
    background-image: -webkit-linear-gradient(top, #383838, #282828);
    background-image: -moz-linear-gradient(top, #383838, #282828);
    background-image: -ms-linear-gradient(top, #383838, #282828);
    background-image: -o-linear-gradient(top, #383838, #282828);
    background-image: linear-gradient(to bottom, #060e1f,#060e1f);
    -webkit-transition: all 1s ease-out;
    -moz-transition: all 1s ease-out;
    -ms-transition: all 1s ease-out;
    -o-transition: all 1s ease-out;
    transition: all 1s ease-out;
    width:100%;
}
        .w3l-footer-22 .below-section {
    /*background: #fff;*/
    padding: 15px 0px;
    justify-content: space-between;
    position: absolute;
    bottom: 0px;
    width: 100%;
}

        .w3l-footer-22 .footer {
    
    background: #fff;
}
    </style>
  
</head>


<body>
	

    <form runat="server">


    <!-- header -->
    
    <!-- banner -->
    <section class="w3l-banner-3-main">
        <div class="banner-3">
            <div class="wrapper">
                <div class="cover-top-center-9">
                    <div class="w3ls_cover_txt-9">
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //banner -->
   <img src="assets/images/finaldeal1.png" alt="Paris" class="center">

        

    <!-- category section -->
    
    <!-- //category section -->
    <!-- Products4 block -->
    

      
    <!-- //Products4 block -->
    
    
    <!-- // grids block 5 -->
    <!-- footer-22 -->
    <footer class="w3l-footer-22">
        <section class="fotter-sub">
            <div class="footer"  id="CheckMobile" runat="server" style="margin-top: 17%;">
                <div class="wrapper">
                    <div class="text-txt">
                        <div class="right-side">
                            
                            <p class="para-sep"> <a href="#" style="color: black; font-size: 19px; font-weight: 700;">SEND OTP
                                    </a></p>
                            <div class="sub-columns">
                                <div class="sub-one-left">
                                    <div class="form-group">
                                                    <asp:TextBox ID="TxtContactNo" class="form-control validate" runat="server" Placeholder="+91 | Mobile Number (10 Digit)" ValidationGroup="CheckAc"></asp:TextBox>
                                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtmobile" runat="server" ErrorMessage="Enter Mobile!" Display="Dynamic" ForeColor="Red" ValidationGroup="CheckAc"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="Reg2" runat="server"   ControlToValidate="txtmobile" ErrorMessage="Enter correct phone no."  ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" ValidationGroup="CheckAc"></asp:RegularExpressionValidator>--%>
                                                </div>


                                    
                                   
                                    
                                </div>
                                
                                
                                
                            </div>
                        </div>
                    </div>
                </div>

                <div class="below-section">
                <div class="wrapper">
                    <div class="copyright-footer">

                        <div class="form-group">
                                                  <center><asp:Button ID="btnChkMobile" runat="server" class="cp-search-btn" Text="Send OTP" onclick="btnChkMobile_Click"></asp:Button></center>  
                                                </div>
                        
                        
                    </div>
                </div>
            </div>

                

            </div>

             <div class="footer" visible="false" id="CheckOtp" runat="server" style="margin-top: 17%;">
                 <div class="wrapper">
                    <div class="text-txt" style="padding-left: 100px;">
                        <div class="right-side">

                            <asp:LinkButton ID="LinkButton1" OnClick="ChangeMobile_Click" style="color: black; font-size: 19px; font-weight: 700;" runat="server">Change Mobile Number</asp:LinkButton>
										   <p class="para-sep" style="text-align: left;">Enter 4 digit OTP </p> 
                            
                         <%--   <p class="para-sep"> <a href="#" style="color: black; font-size: 19px; font-weight: 700;">SEND OTP
                                    </a></p>--%>
                            <div class="sub-columns">
                                <div class="sub-one-left">
                                    <div class="form-group" id="divOuter">
                                          <div class="form-group" id="divInner">
                                                    <asp:TextBox ID="txtOTP" class="partitioned" maxlength="4" runat="server"></asp:TextBox>
                                                   
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

                        <div class="form-group">
                                                  <center><asp:Button ID="Button5" runat="server" class="cp-search-btn" Text="Send" onclick="OPtConfirm_Click"></asp:Button></center>  
                                                </div>
                        
                        
                    </div>
                </div>
            </div>
                 </div>


            <div class="footer"  visible="false" id="Register" runat="server" style="margin-top: 17%;">

                <div class="wrapper">
                    <div class="text-txt">
                        <div class="right-side">
                            
                            <p class="para-sep"> <a href="#" style="color: black; font-size: 19px; font-weight: 700;">New Registration
                                    </a></p>
                            <div class="sub-columns">
                                <div class="sub-one-left">
                                    <div class="form-group">
                                                    <asp:TextBox ID="txtname" class="form-control validate" runat="server" Placeholder="Enter Name"></asp:TextBox>
                                        <br />
                                        <br />
                                        

                                        <asp:TextBox ID="txtEmail" class="form-control validate" runat="server" Placeholder="Enter Email"></asp:TextBox>
                                                  
                                                </div>


                                    
                                   
                                    
                                </div>
                                
                                
                                
                            </div>
                        </div>
                    </div>
                </div>

                <div class="below-section">
                <div class="wrapper">
                    <div class="copyright-footer">

                        <div class="form-group">
                                                  <center><asp:Button ID="Button4" runat="server" class="cp-search-btn" Text="Register" onclick="btnreg_Click"></asp:Button></center>  
                                                </div>
                        
                        
                    </div>
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
          </form>
    <!-- //footer-22 -->



	
	</body>
</html>
