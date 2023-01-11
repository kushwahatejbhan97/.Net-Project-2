<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Mastercraft.Admin._default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	 <title>Asian institute of safety management</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="keyword" content="">
	<link rel="shortcut icon" href="assets/img/facivon.png"/>
	<!-- Bootstrap core CSS -->
	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<!--external css-->
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
		
	<!-- Custom styles for this template -->
	<link href="assets/css/style.css" rel="stylesheet">
	<link href="assets/css/style-responsive.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
  </head>
<body>
	<div id="login-page">
		<div class="container">	  	
			  <form id="Form1" class="form-login"  runat="server">
				<h2 class="form-login-heading">sign in now</h2>
				<div class="login-wrap">
					<asp:TextBox ID="username_txt" runat="server" class="form-control" placeholder="User ID"></asp:TextBox>		          
					<br>
					<asp:TextBox ID="pwd_txt" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
					&nbsp;&nbsp;&nbsp;
				  
					<label class="checkbox">
						<span class="pull-right">
							<a data-toggle="modal" href=""> Forgot Password?</a><br />&nbsp;</span></label> <asp:Button ID="signin" runat="server" Text="SIGN IN" 
						class="btn btn-theme btn-block" onclick="signin_Click"  /> 
					<hr>
					
					<div class="registration">
						Don't have an account yet?<br/>
						<a class="" href="">
							Create an account
						</a>
					</div>
		
				</div>
		
				  <!-- Modal -->
				  <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
					  <div class="modal-dialog">
						  <div class="modal-content">
							  <div class="modal-header">
								  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								  <h4 class="modal-title">Forgot Password ?</h4>
							  </div>
							  <div class="modal-body">
								  <p>Enter your e-mail address below to reset your password.</p>
								  <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
							  </div>
							  <div class="modal-footer">
								  <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
								  <button class="btn btn-theme" type="button">Submit</button>
							  </div>
						  </div>
					  </div>
				  </div>
				  <!-- modal -->
		
			  </form>	  	
		
		</div>
	  </div>

	   <!-- js placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!--BACKSTRETCH-->
	<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
	<script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
	<script>
		$.backstretch("assets/img/login-bg.jpg", { speed: 500 });
	</script>

</body>
</html>

