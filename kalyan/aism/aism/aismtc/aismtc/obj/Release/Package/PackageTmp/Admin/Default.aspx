<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="aismtc.Admin.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Aismtc | Sign In </title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Asian Institute Of Safety Management,Safety Management ,Best Safety Cources In Hyderabad,Fire Safety In Hyderabad,Safety Management Cources In Hyderabad , Electrical Safety In Hyderabad,Arabic Tranning In Hyderabad,Hyderabad Safety Management Cources,Safety Management Institutes In Hyderabad,safety management cources In Hyderabad for students,Best placements cources for arab countries In Hyderabad" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style1.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"/>
<link rel="stylesheet" href="css/jquery-ui.css"/> 
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
</head>
<body>
	
		<div class="main-wthree">
	<div class="container">
	<div class="sin-w3-agile">
		<h2>Welcome to AISM</h2>
		<form id="form1" runat="server">
			<div class="username">
				<span class="username">Username:</span>
				
				<asp:TextBox ID="txtUser" CssClass="name"  runat="server" placeholder="" required=""></asp:TextBox>
				<div class="clearfix"></div>
			</div>
			<div class="password-agileits">
				<span class="username">Password:</span>
				
				<asp:TextBox ID="txtpassword" CssClass="password" TextMode="Password"  runat="server" placeholder="" required=""></asp:TextBox>
				<div class="clearfix"></div>
			</div>
			
			<div class="login-w3">
					
			
			<asp:Button ID="Button1"  CssClass="login" runat="server" Text="Sign In" OnClick="Button1_Click" />

				</div>
			<div class="clearfix"></div>
		</form>
				
				
	</div>
	</div>
	</div>
	




</body>
</html>
