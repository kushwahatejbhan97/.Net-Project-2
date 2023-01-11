<%@ Page Title="Contact  Mittal Ispat LTD" Language="C#" MasterPageFile="~/MIL.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MIL.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- short -->
    <div class="using-border py-3">
      <div class="inner_breadcrumb  ml-4">
        <ul class="short_ls">
          <li>
            <a href="/Home">Home</a>
            <span>/ </span>
          </li>
          <li>Contact</li>
        </ul>
      </div>
    </div>
    <!-- //short-->
    <!--contact -->
    <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
      <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2">Contact Us</h3>
        <div class="title-wls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
          <p>We are redefining career development by reducing barriers to employment through our industry-leading virtual employability programs</p>

            <div class="mb-1 pt-lg-5 pt-md-4 pt-3 footer-address" >
                                <ul>
                                    <li>
                                        <h4>Our Branches</h4>
                                    </li>
                                    <br />
                                    <li  >
                                        <p style="color:black;padding-top: 24px;">73/A Sdf,Seepz,Andheri,East Mumbai,<br />Maharastra-400096.</p>
                                    </li>
                                    <hr />
                                   <li>
                                       <p style="color:black">No.32,Sanganakal Rd,KHB Colony,<br />Basaveshwar Nagar,Ballari,Karnataka-583103.</p>
                                   </li>
                                    <hr />
                                    <li>
                                        <p style="color:black">Vostak Building,Salt Lake Sector-III,<br />Near Amri Hospital,Kolkata-700106</p>
                                    </li>
                                </ul>
                            </div>

        </div>
        
        <div class="row w3pvt-info-para pt-lg-5 pt-md-4 pt-3"  style="background-color:rgb(251 251 228)">
          <!--contact-map -->
          <div class="col-lg-6 col-md-6">
            <div  method="post">
              <div class="w3pvt-wls-contact-mid">
                <div class="form-group contact-forms">
                  <%--<input type="text" class="form-control" placeholder="Name" required="">--%>
                    <asp:TextBox ID="txtName" class="form-control" placeholder="Name" required="" runat="server"></asp:TextBox>


                </div>
                <div class="form-group contact-forms">
                  <%--<input type="email" class="form-control" placeholder="Email" required="">--%>
                      <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" required="" runat="server"></asp:TextBox>
                </div>
                <div class="form-group contact-forms">
                  <%--<input type="text" class="form-control" placeholder="Phone" required="">--%> 
                      <asp:TextBox ID="TextPhone" class="form-control" placeholder="Phone" required="" runat="server"></asp:TextBox>
                </div>
                <div class="form-group contact-forms">
                  <%--<textarea class="form-control" placeholder="Message" rows="3" required=""></textarea>--%>
                    <asp:TextBox ID="txtMessage" class="form-control" placeholder="Message" required="" runat="server"></asp:TextBox>

                </div>
                <%--<button type="submit" class="btn sent-butnn">Send</button>--%>
                  <asp:Button ID="Button1" class="btn sent-butnn" runat="server" Text="Send" OnClick="Button1_Click" />
              </div>
            </div>
          </div>
          <!--//contact-map -->
          <!--contact-form-->
          <div class="col-lg-6 col-md-6 contact-form">
               <h4>Share With Us</h4>
            <div class="contact-list-grid">
              <h4></h4>
              <p class="pt-2"></p>
              <p></p>
            </div>
            <div class="contact-list-grid mt-3">
              <h4>Email</h4>
              <p class="pt-2"><a href="mailto:info@mittalispatlimited.com">info@mittalispatlimited.com</a> 
              </p>
            </div>
            <div class="contact-list-grid mt-3">
              <h4></h4>
              <p class="pt-2"></p>
              <p> </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--//contact  -->
</asp:Content>
