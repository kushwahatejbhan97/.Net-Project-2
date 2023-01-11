<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Corporate_Training.contact" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>My Website a Personal Portfolio Category Bootstrap Responsive Website Template | Contact :: W3layouts</title>
    <!-- web fonts -->
    <link href="//fonts.googleapis.com/css?family=Nunito:400,600,700,800,900&display=swap" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Hind&display=swap" rel="stylesheet">
    <!-- //web fonts -->
    <!-- Template CSS -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
  </head>
  <body>

<section class="w3l-bootstrap-header">
  <nav class="navbar navbar-expand-lg navbar-light py-lg-3 py-2">
    <div class="container">
      <a class="navbar-brand" href="index.aspx"> My Website</a>
      <!-- if logo is image enable this   
    <a class="navbar-brand" href="#index.html">
        <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
    </a> -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon fa fa-bars"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.aspx">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.aspx">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="corporate.aspx">Corporate Training And Coaching</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="faq.aspx">FAQ</a>
          </li>
        
          <li class="nav-item">
            <a class="nav-link" href="contact.aspx">Contact</a>
          </li>

         
        </ul>
        
      </div>
    </div>
  </nav>
</section>
<section class="w3l-contact-breadcrum">
  <div class="breadcrum-bg">
    <div class="container py-5">
      <p><a href="index.html">Home</a> &nbsp; / &nbsp; Contact</p>
     </div>
  </div>
</section>
<!-- contact -->
<section class="w3l-contacts-12" id="contact">
    <div class="contact-top pt-5">
        <div class="container py-md-3">
            
            <div class="row cont-main-top">
               <!-- contact form -->
               <div class="contacts12-main col-lg-6 ">
                   
                <form  runat="server" class="main-input">
                    <div class="top-inputs d-grid">
                       <%-- <input type="text" placeholder="Name" name="w3lName" id="w3lName" required="">--%>

                       <%-- <label class="form-field" for="w3lName">Name</label>--%>
                                <asp:TextBox ID="txtname" runat="server" placeholder="Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtname" ForeColor="#da291c"></asp:RequiredFieldValidator>
                               <%-- <input type="text" name="w3lName" id="w3lName" placeholder="e.g. Jhon Smith"
                                    class="contact-input" />--%>
                       
                    

                   <%-- <input type="email" name="email" placeholder="Email" id="w3lSender" required="">--%>

                    <asp:TextBox ID="textemail" runat="server" CssClass="contact-input" placeholder="email"></asp:TextBox>
                                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="textemail" ForeColor="#da291c"></asp:RequiredFieldValidator>
                   
                    <%--<textarea placeholder="Message" name="w3lMessage" id="w3lMessage"></textarea>--%>
                    <asp:TextBox ID="textmsg" runat="server" placeholder="Message"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Message cannot be blank" ControlToValidate="txtname" ForeColor="#da291c"></asp:RequiredFieldValidator>
                        </div>
                    <div class="text-right">
                        <button type="submit" class="btn btn-theme2">Submit Now</button>
                    </div>
                </form>
            </div>
            <!-- //contact form -->
                <!-- contact address -->
                <div class="contact col-lg-6 mt-lg-0 mt-5">
                    <div class="cont-subs">
                        <div class="cont-add">
                            <div class="cont-add-lft">
                                <span class="fa fa-map-marker" aria-hidden="true"></span>
                           </div>
                           <div class="cont-add-rgt">
                            <p class="contact-text-sub">Executive Coach
                              Plot no 4, UBI Colony,Road no 3
                              <p>Banjara Hills
                              500034 Hyderabad</p>
                            </p>
                        </div>
                      
                    </div>
                        <div class="cont-add add-2">
                            <div class="cont-add-lft">
                                <span class="fa fa-envelope" aria-hidden="true"></span>
                           </div> 
                           <div class="cont-add-rgt">
                          <a href="mailto:info@meenafonseca.com">
                                <p class="contact-text-sub">info@meenafonseca.com</p>
                            </a>
                        </div>
                       
                    </div>
                        <div class="cont-add">
                            <div class="cont-add-lft">
                                <span class="fa fa-phone" aria-hidden="true"></span>
                           </div>
                            <div class="cont-add-rgt">
                                 <a href="tel:+91 797 846 0091">
                                    <p class="contact-text-sub">+91 797 846 0091</p>
                                 </a>
                            </div>
                        </div>
                        <div class="cont-add add-3">
                            <div class="cont-add-lft">
                                <span class="fa fa-file-pdf-o" aria-hidden="true"></span>
                           </div>
                            <div class="cont-add-rgt">
                                <a href="#">
                                    <p class="contact-text-sub">Download Resume</p>
                                </a>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <!-- //contact address -->
                 
            </div>
        </div>
        <!-- map -->
        <div class="map">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3806.6705337003996!2d78.43373741435376!3d17.427591906232685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb90d37bfae0a3%3A0xdeda410cf1e51890!2s500%2C%20Banjara%20Hills%20Rd%20Number%203%2C%20Venkateshwara%20Nagar%2C%20Sri%20Nagar%20Colony%2C%20Aurora%20Colony%2C%20Banjara%20Hills%2C%20Hyderabad%2C%20Telangana%20500073!5e0!3m2!1sen!2sin!4v1646733828765!5m2!1sen!2sin"
                frameborder="0" style="border:0;" allowfullscreen=""></iframe>
        </div>
        <!-- //map -->
    </div>
</section>
<!-- //contact -->

      <div class="whatsapp_float">
     <a href="https://wa.me/917978460091" target="_blank">
    <img src="assets/images/WhatsappLogo.png" width="50px" class="whatsapp_float_btn"></a></div>
 
 <!-- grids block 5 -->
 <section class="w3l-footer-29-main" id="footer">
  <div class="footer-29 text-center">
      <div class="container">
        
        <div class="main-social-footer-29">
                    
          <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
          <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
          <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
          <a href="#google-plus" class="google-plus"><span class="fa fa-google-plus"></span></a>
          <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
      </div>
      <div class="bottom-copies text-center">
        <p class="copy-footer-29">©Aakar arts. All rights reserved | Designed by <a href="https://www.dexterous.in/">Dexterous Technology</a></p>
         
    </div>
      </div>
  </div>
   <!-- move top -->
  <button onclick="topFunction()" id="movetop" title="Go to top">
              <span class="fa fa-angle-up"></span>
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
<!-- // grids block 5 -->
<script src="assets/js/jquery-3.3.1.min.js"></script>
<!-- //footer-28 block -->
</section>

<script>
    $(function () {
      $('.navbar-toggler').click(function () {
        $('body').toggleClass('noscroll');
      })
    });
</script>
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
  </script>
  
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
  </script>

<!-- Smooth scrolling -->



</body>

</html>