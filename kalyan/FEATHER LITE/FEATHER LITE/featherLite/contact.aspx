<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="featherLite.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/font-awesome.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="w3l-contact-11">
    <div class="contacts-main">
      <div class="contant11-top-bg">
        <div class="wrapper">
          <div class="d-grid contact section-gap">
            <div class="contact-info-left d-grid text-center">
              <div class="contact-info">
                <span class="fa fa-location-arrow" aria-hidden="true"></span>
                <h4>Address</h4>
                <p>6-3-648, Padmaja landmark, Ground floor, Adj Rta office, Somajiguda, Hyderabad, Telangana 500082</p>
              </div>
              <div class="contact-info">
                <span class="fa fa-phone" aria-hidden="true"></span>
                <h4>Phone</h4>
                <p><a href="#">8688022995</a></p>
                  <p><a href="#">040 2337 4045</a></p>
             
              </div>
              <div class="contact-info">
                <span class="fa fa-envelope-open-o" aria-hidden="true"></span>
                <h4>Mail</h4>
                <p><a href="mailto:contact@featherlitehyderabadindia.com" class="email">contact@featherlitehyderabadindia.com</a></p>
                
            </div>
          </div>
        </div>
      </div>
      <div class="form-41-mian section-gap" style="background-color:white">
        <div class="wrapper">
          <h3 class="cont-head">Get in touch with us</h3>
          <div class="d-grid align-form-map">
            <div class="form-inner-cont">
              <div action="https://sendmail.w3layouts.com/submitForm" method="post" class="signin-form">
                <div class="form-input">
                  <label for="w3lName">Name</label>
                  <input type="text" name="w3lName" id="w3lName" placeholder="" />
                </div>
                <div class="form-input">
                  <label for="w3lMessage">Message(Required)*</label>
                  <textarea placeholder="" name="w3lMessage" id="w3lMessage" required=""></textarea>
                </div>
                <div class="form-input">
                  <label for="w3lSender">Email(Required)*</label>
                  <input type="email" name="w3lSender" id="w3lSender" placeholder="" required="" />
                </div>

                <button type="submit" class="btn btn-contact">Submit</button>

              </div>
            </div>
            <div class="map">
                
              <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3806.8811935959307!2d78.45545246418796!3d17.417488306522333!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb976e042634a5%3A0x16e6ff2e944d46c6!2sWorkz%20Office%20Solution%20LLP!5e0!3m2!1sen!2sin!4v1628859511160!5m2!1sen!2sin"
                frameborder="0" allowfullscreen=""></iframe>
                
            </div>
          </div>
        </div>
      </div>

          </div>
        </div>
  </section>
</asp:Content>
