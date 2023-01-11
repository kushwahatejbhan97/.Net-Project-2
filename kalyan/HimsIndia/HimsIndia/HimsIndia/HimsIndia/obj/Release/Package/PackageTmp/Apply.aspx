<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="HimsIndia.Apply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Apply as Model</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
     <link rel="shortcut icon" href="../images/logohism%20(2).png" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.css" />
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="css/Register.css" rel="stylesheet" />
    </head>
<body>
    <form id="form1" runat="server">
        <div class="container register">
                <div class="row" style=" margin-right:0px !important; margin-left:0px !important; padding-right:2px;">
                    <div class="col-md-3 register-left">
                        <img  src="images/logohism%20(2).png" alt=""/>
                        <h3>Welcome</h3>
                        <p>Being a model is a dream for many people. We at HIMS India know that such a dream can also come true for you.</p>
                        
                         
                                 <a class="nav-link active" href="/Home" ><i class="fa fa-home fa-3x"  style="color:#ffc107;" aria-hidden="true"></i><p style="color:white !important">Home</p></a>
                          
                    </div>
                    <div class="col-md-9 register-right">
                       
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Become A Models?</h3>
                                <div class="row register-form" id="DivRegistration" runat="Server">
                                    <div class="col-md-12">

                                        <div class="row">
                                            <div class="col-md-6">

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtFname" class="form-control" placeholder="First Name *" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFname" ErrorMessage="Please Enter Your Name" ForeColor="red"></asp:RequiredFieldValidator>
                                                    <%--<input type="text" class="form-control" placeholder="First Name *" value="" />--%>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtLname" class="form-control" placeholder="Last Name *" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLname" ErrorMessage="Please Enter Your Name" ForeColor="red"></asp:RequiredFieldValidator>

                                                    <%--<input type="text" class="form-control" placeholder="Last Name *" value="" />--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-md-12">

                                        <div class="row">
                                            <div class="col-md-6">

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtphone" class="form-control" placeholder="Phone Number *" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtphone" ErrorMessage="Please Enter Your Phone" ForeColor="red"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtphone" ValidationGroup="BuyLotChkEmail" runat="server" ErrorMessage="Invalid Phone Number" ForeColor="Red" Display="Dynamic"
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                                    <%--<input type="password" class="form-control"  placeholder="Confirm Password *" value="" />--%>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtemail" class="form-control" placeholder="Email *" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Your Mail" ForeColor="red"></asp:RequiredFieldValidator>
                                                   <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                                    <%--<input type="password" class="form-control" placeholder="Password *" value="" />--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-md-12">

                                        <div class="row">
                                            <div class="col-md-6">

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtcity" class="form-control" placeholder="City *" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtcity" ErrorMessage="Please Enter Your City" ForeColor="red"></asp:RequiredFieldValidator>
                                                    <%--<input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Your Phone *" value="" />--%>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtcountry" class="form-control" placeholder="Country *" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtcountry" ErrorMessage="Please Enter Your Country" ForeColor="red"></asp:RequiredFieldValidator>
                                                    <%--<input type="email" class="form-control" placeholder="Your Email *" value="" />--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12">

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtaddress" class="form-control" placeholder="Address*" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtaddress" ErrorMessage="Please Enter Your Address" ForeColor="red"></asp:RequiredFieldValidator>
                                                </div>

                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">


                                                    <asp:DropDownList ID="drpProf" class="form-control" runat="server">
                                                        <asp:ListItem>Model</asp:ListItem>
                                                        <asp:ListItem>Actor</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>


                                            </div>
                                        </div>
                                    </div>



                                    <div class="col-md-12">

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtskills" TextMode="Multiline" class="form-control" placeholder="Describe About Yourself... " runat="server"></asp:TextBox>

                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtskills" ErrorMessage="Please Enter Your Skills" ForeColor="red"></asp:RequiredFieldValidator>
                                                    <%--<input type="password" class="form-control" placeholder="Password *" value="" />--%>
                                                </div>

                                            </div>
                                            <div class="col-md-6">

                                                <div class="form-group">
                                                    <div class="maxl">
                                                        <label class="radio inline">
                                                            <asp:RadioButton ID="rdFemale" Checked="True" CssClass="form-control" GroupName="gender" Text="Female" runat="server" />
                                                            <%--<asp:CheckBox ID="CheckBox2" value="female" Text="Female" runat="server" />--%>
                                                            <%-- <input type="radio" name="gender" value="female" />--%>
                                                        </label>
                                                        <label class="radio inline">
                                                            <asp:RadioButton ID="rdMale" CssClass="form-control" GroupName="gender" Text="Male" runat="server" />
                                                            <%--<asp:CheckBox ID="CheckBox1" value="male"  Text="Male" runat="server"  />--%>
                                                            <%--<input type="radio" name="gender" value="male" checked />--%>
                                                            <span></span>
                                                        </label>

                                                    </div>
                                                </div>


                                            </div>
                                        </div>


                                    </div>


                                    <div class="col-md-12" style="text-align: center">
                                        <div class="form-group">
                                            <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat" required>
                                           Read <a href="PrivacyPolocy.aspx">Privacy Policy</a> & <a href="UserAgreement.aspx">User Agreement</a>
                                            <asp:Button ID="Button1" class="btnRegister" Style="background-color: #fb4386; text-align: center;" OnClick="Button1_Click" runat="server" Text="Register" />
                                            <%--<input type="submit" class="btnRegister" style="background-color:#fb4386"  value="Register"/>--%>
                                        </div>
                                    </div>

                                </div>
                                

                                <div class="row register-form" id="DivPersonalInfo" runat="Server" >
                                    <div class="col-md-12">

                                        <div class="row">
                                            <div class="col-md-6">

                                        <div class="form-group">
                                                 <asp:TextBox ID="txtheight" class="form-control" placeholder="Height *" runat="server"></asp:TextBox>
                                              <asp:RequiredFieldValidator runat="server" ControlToValidate="txtheight" ErrorMessage="Please Enter Your Height" ForeColor="red"></asp:RequiredFieldValidator>
                                            <%--<input type="text" class="form-control" placeholder="First Name *" value="" />--%>
                                        </div>
                                                </div>
                                            <div class="col-md-6">
                                                 <div class="form-group">
                                            <asp:TextBox ID="txtdressize" class="form-control" placeholder="Dress Size *" runat="server"></asp:TextBox>
                                            <%--<input type="text" class="form-control" placeholder="Last Name *" value="" />--%>
                                        </div>
                                                </div>
                                            </div>
                                        </div>

                                        
                                        <div class="col-md-12">

                                        <div class="row">
                                            <div class="col-md-6">

                                        <div class="form-group">
                                             <asp:TextBox ID="txtwaist" class="form-control" placeholder="Waist *" runat="server"></asp:TextBox>
                                            <%--<input type="password" class="form-control" placeholder="Password *" value="" />--%>
                                        </div>
                                                </div>
                                                 <div class="col-md-6">
                                        <div class="form-group">
                                             <asp:TextBox ID="txtshoesize" class="form-control" placeholder="Shoe Size *" runat="server"></asp:TextBox>
                                            <%--<input type="password" class="form-control"  placeholder="Confirm Password *" value="" />--%>
                                        </div>
                                            </div>
                                            </div>
                                        </div>
           

           <div class="col-md-12">

                                        <div class="row">
                                            <div class="col-md-6">

                                        <div class="form-group">
                                             <asp:TextBox ID="txthaircolor" class="form-control" placeholder="Hair Color *" runat="server"></asp:TextBox>
                                            <%--<input type="password" class="form-control"  placeholder="Confirm Password *" value="" />--%>
                                        </div>
                                                </div>
                                                 <div class="col-md-6">
                                        <div class="form-group">
                                             <asp:TextBox ID="txtweight" class="form-control" placeholder="Weight *" runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator runat="server" ControlToValidate="txtweight" ErrorMessage="Please Enter Your weight" ForeColor="red"></asp:RequiredFieldValidator>
                                            <%--<input type="email" class="form-control" placeholder="Your Email *" value="" />--%>
                                        </div>
                                            </div>
                                            </div>
                                        </div>

           <div class="col-md-12">

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                             <asp:TextBox ID="txtchest" class="form-control" placeholder="Chest *" runat="server"></asp:TextBox>
                                            <%--<input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Your Phone *" value="" />--%>
                                        </div>
                                        
                                                </div>
                                                 <div class="col-md-6">
                                        <div class="form-group">
                                             <asp:TextBox ID="txthips" class="form-control" placeholder="Hips *" runat="server"></asp:TextBox>
                                        </div>
                                            
                                 
                                            </div>
                                            </div>
                                        </div>
           


           <div class="col-md-12">

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                             <asp:TextBox ID="txteyecolor" class="form-control" placeholder="Eye Color *" runat="server"></asp:TextBox>
                                        </div>
                                        
                                                </div>
                                                 <div class="col-md-6">
                                        
                                            <div class="form-group">
                                             <asp:TextBox ID="txtskincolor" class="form-control" placeholder="Skin Color *" runat="server"></asp:TextBox>
                                        </div>
                                 
                                            </div>
                                            </div>


                                        </div>


            <div class="col-md-12" style="text-align:center">
                <div class="form-group">
                    <asp:Button ID="btnpersonalinfo" class="btnRegister" style="background-color:#fb4386" runat="server" OnClick="btnpersonalinfoClick" Text="Register" />
                                       
                                            </div>
                </div>



                                    </div>

                                 
                                <div class="row register-form" id="DivPhotoUpload" runat="Server">

            <div class="col-md-12">

                <div class="row">
                    <div class="col-md-6">

                        <div class="form-group">
                            <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                            <asp:RequiredFieldValidator ControlToValidate="FileUpload1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Upload Your Image"></asp:RequiredFieldValidator>


                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:FileUpload ID="FileUpload2" class="form-control" runat="server" />

                        </div>
                    </div>
                </div>
            </div>


            <div class="col-md-12">

                <div class="row">
                    <div class="col-md-6">

                        <div class="form-group">
                            <asp:FileUpload ID="FileUpload3" class="form-control" runat="server" />
                            <%--<asp:TextBox ID="TextBox3" class="form-control" placeholder="Email *" runat="server"></asp:TextBox>--%>
                            <%--<input type="password" class="form-control" placeholder="Password *" value="" />--%>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:FileUpload ID="FileUpload4" class="form-control" runat="server" />
                            <%--<asp:TextBox ID="TextBox5" class="form-control" placeholder="Country *" runat="server"></asp:TextBox>--%>
                            <%--<input type="email" class="form-control" placeholder="Your Email *" value="" />--%>
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-md-12">

                <div class="row">
                    <div class="col-md-6">

                        <div class="form-group">
                            <asp:FileUpload ID="FileUpload5" class="form-control" runat="server" />
                            <%--<asp:TextBox ID="TextBox6" class="form-control" placeholder="City *" runat="server"></asp:TextBox>--%>
                            <%--<input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Your Phone *" value="" />--%>
                        </div>
                    </div>
                    <div class="col-md-6">
                    </div>
                </div>
            </div>




            <div class="col-md-12" style="text-align: center">
                <div class="form-group">
                    <asp:Button ID="Button3" class="btnRegister" Style="background-color: #fb4386" runat="server" OnClick="btnimages" Text="Register" />

                </div>
            </div>



        </div>
                               
                           
                               
                                </div>
                            
                        </div>    
                    </div>


                    
                </div>

            
            </div>

        <footer class="footer-emp-w3ls py-5" style="background: #212020;
    border-radius: 0 250px 0 0;">
				<div class="container py-xl-5 py-lg-3">
					<div class="row footer-top">
						<div class="col-lg-4 footer-grid-wthree">
							<h1 class="footer-title text-white mb-4">Get In Touch</h1>
							<div class="contact-info">
								<h4 class="text-light text-uppercase mb-2">Email :</h4>
								<%--<p>INDIA CALCUTTA</p>--%>
								<a href="mailto:care@himsindia.com">care@himsindia.com</a>
								<div class="phone mt-4 pt-2">
									<h4 class="text-light text-uppercase mb-2"></h4>
									<a style="color:white"   href="PrivacyPolicy.aspx">Our Privacy Policy</a>
                                    <br />
                                    <a  style="color:white"  href="Faq.aspx">FAQs</a><br />
                                     <a style="color:white"  href="UserAgreement.aspx">User Agreement</a><br />
							 <a style="color:white"  href="UserAgreementClients.aspx">User Agreement Clients</a>

									
								</div>
							
							</div>
						</div>
						<div class="col-lg-4 footer-grid-wthree mt-lg-0 mt-4">
							<h2 class="footer-title text-white mb-4">Quick Links</h2>
							<ul class="links list-unstyled " style="padding:0px !important">
								<li style="color:white">
									<a style="color:white" href="/Home">Home</a>
								</li >
								<li style="color:white" class="my-2">
									<a style="color:white" href="/About">About</a>
								</li>
								<li style="color:white" class="my-2">
									<a style="color:white" href="/HimsIndiaTour">Tour</a>
								</li>
								<li style="color:white" class="my-2">
									<a style="color:white" href="/Artist-Registration">Artist</a>
								</li>
								
								<li style="color:white" class="my-2">
									<a  style="color:white" href="/PostJobs">Post-Job</a>
								</li>
									<li style="color:white" class="my-2">
									<a style="color:white" href="/Become-a-Model">Become a Model</a>
								</li>
								<li style="color:white" class="my-2">
									<a style="color:white" href="/Academy">Academy</a>
								</li>
								<li style="color:white" class="my-2">
									<a style="color:white"  href="/Franchise">Franchise</a>
								</li>
								<li style="color:white" class="my-2">
									<a style="color:white" href="/Contact-Us">Contact-Us</a>
								</li>
								<%--<li class="my-2">
                                    <a class="nav-link" href="Faq.aspx">Faq</a>
								</li>
								<li class="my-2">
									<a class="nav-link" href="PrivacyPolicy.aspx">Privacy Policy</a>
                                    
								</li >--%>
								<%--<li style="color:white" class="my-2">
                                    <a style="color:white" href="UserAgreement.aspx">User Agreement</a>
									
								</li>
								<li style="color:white" class="my-2">
									<a style="color:white"  href="UserAgreementClients.aspx">User Agreement Clients</a>
									
								</li>--%>

							</ul>

							
						</div>
						<div class="col-lg-4 footer-grid-wthree mt-lg-0 mt-5">
							<div class="footer-title">
								
								<a class="navbar-brand" href="/Home" style="color:white">
									<%--<img src="images/logo2.png" class="logo img-fluid" alt=""/>--%>HIMS INDIA
								</a>

							</div>
							<div class="contact-info" style="text-align: center;">
									<h4 class="text-light text-uppercase mb-2" style="padding-top:5px;color: #fb4386 !important;">An ISO Certified 9001-2015</h4>
								</div>
							<p class="copy-right text-center mt-4" style="color: white;">
								&copy; 2021 HIMS INDIA. All Rights Reserved | Design by
						<a href="https://www.dexterous.in">Dexterous Technologies </a>
							</p>
						</div>
					</div>
				</div>
			</footer>
    </form>
</body>
</html>
