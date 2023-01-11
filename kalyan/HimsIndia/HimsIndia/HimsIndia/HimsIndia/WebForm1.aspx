<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HimsIndia.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Apply as Model</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

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
        
        <div class="row register-form" id="DivRegistration" runat="Server" >
                                    <div class="col-md-6">
                                        <div class="form-group">
                                                 <asp:TextBox ID="txtFname" class="form-control" placeholder="First Name *" runat="server"></asp:TextBox>
                                            <%--<input type="text" class="form-control" placeholder="First Name *" value="" />--%>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtLname" class="form-control" placeholder="Last Name *" runat="server"></asp:TextBox>
                                            <%--<input type="text" class="form-control" placeholder="Last Name *" value="" />--%>
                                        </div>
                                        <div class="form-group">
                                             <asp:TextBox ID="txtemail" class="form-control" placeholder="Email *" runat="server"></asp:TextBox>
                                            <%--<input type="password" class="form-control" placeholder="Password *" value="" />--%>
                                        </div>
                                        <div class="form-group">
                                             <asp:TextBox ID="txtphone" class="form-control" placeholder="Phone Number *" runat="server"></asp:TextBox>
                                            <%--<input type="password" class="form-control"  placeholder="Confirm Password *" value="" />--%>
                                        </div>
                                        <div class="form-group">
                                             <asp:TextBox ID="txtskills" class="form-control" placeholder="Skills Required *" runat="server"></asp:TextBox>
                                            <%--<input type="password" class="form-control"  placeholder="Confirm Password *" value="" />--%>
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                             <asp:TextBox ID="txtcountry" class="form-control" placeholder="Country *" runat="server"></asp:TextBox>
                                            <%--<input type="email" class="form-control" placeholder="Your Email *" value="" />--%>
                                        </div>
                                        <div class="form-group">
                                             <asp:TextBox ID="txtcity" class="form-control" placeholder="City *" runat="server"></asp:TextBox>
                                            <%--<input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Your Phone *" value="" />--%>
                                        </div>
                                        <div class="form-group">
                                             <asp:TextBox ID="txtaddress" class="form-control" placeholder="Address*" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                             <asp:TextBox ID="txtposition" class="form-control" placeholder="Position *" runat="server"></asp:TextBox>
                                            <%--<input type="text" class="form-control" placeholder="Enter Your Answer *" value="" />--%>
                                        </div>

                                         <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat" required>
                                           Read <a href="PrivacyPolocy.aspx">Privacy Policy</a> & <a href="UserAgreementClients.aspx">User Agreement For Clients</a>
                                                      <asp:Button ID="Button1" class="btnRegister" style="background-color:#fb4386" runat="server" OnClick="Button1_Click" Text="Register" />
                                        <%--<input type="submit" class="btnRegister" style="background-color:#fb4386"  value="Register"/>--%>
                                    </div>
                                </div>

    </form>
</body>
</html>
