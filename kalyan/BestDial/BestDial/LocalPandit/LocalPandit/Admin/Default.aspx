<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LocalPandit.Admin.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   <title>Localpandit | The local search engine</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <!--base css styles-->
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">

    <!--page specific css styles-->

    <!--flaty css styles-->
    <link rel="stylesheet" href="css/flaty.css">
    <link rel="stylesheet" href="css/flaty-responsive.css">

    <link rel="shortcut icon" href="img/favicon.html">
</head>

<body class="login-page">

    <!-- BEGIN Main Content -->
    <div class="login-wrapper">
        <!-- BEGIN Login Form -->
        <form id="formlogin" runat="server">
            <h3>Login to your account</h3>
            <hr/>
            <div class="form-group">
                <div class="controls">
                    <asp:TextBox ID="username_txt" runat="server" class="form-control" ></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="controls">
                <asp:TextBox ID="pwd_txt" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="controls">
                 <asp:Button ID="signin" runat="server" style="width:100%" Text="SIGN IN" class="btn btn-primary form-control" onclick="signin_Click"  /> 
                  
                </div>
            </div>
            <hr/>
        </form>
        <!-- END Login Form -->

       
      
    </div>
    <!-- END Main Content -->

    <!--basic scripts-->
    <script src="../../ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script>
        window.jQuery || document.write('<script src="assets/jquery/jquery-2.1.1.min.js"><\/script>')
    </script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function goToForm(form) {
            $('.login-wrapper > form:visible').fadeOut(500, function () {
                $('#form-' + form).fadeIn(500);
            });
        }
        $(function () {
            $('.goto-login').click(function () {
                goToForm('login');
            });
            $('.goto-forgot').click(function () {
                goToForm('forgot');
            });
            $('.goto-register').click(function () {
                goToForm('register');
            });
        });
    </script>
</body>

</html>
