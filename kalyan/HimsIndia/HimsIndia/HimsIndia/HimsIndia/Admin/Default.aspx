<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx" Inherits="HimsIndia.Admin.Login.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HISM Login</title>
    <link href="Login/css/login.css" rel="stylesheet" />
    <meta charset="UTF-8" />
	 <link rel="shortcut icon" href="../images/logohism%20(2).png" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="w3l-forms-23">
		<div class="forms23-block-hny">
			<div class="wrapper">
				<h1>Welcome HIMS INDIA</h1>
				<!-- if logo is image enable this   
					<a class="logo" href="index.html">
					  <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
					</a> 
				-->
				<div class="d-grid forms23-grids">
					<div class="form23">
						<div class="main-bg">
							<h6 class="sec-one"></h6>
							<div class="speci-login first-look">
								<img src="Login/images/user.png" alt="" class="img-responsive"/>
							</div>
						</div>
						<div class="bottom-content">
							<div class="login" action="#" method="post">
								<asp:TextBox ID="email" CssClass="text-login" placeholder="Your Email or Username" runat="server" required="required"
								 ></asp:TextBox>
								<%--<input type="email" name="email" class="input-form" placeholder="Your Email"--%>
										
								<asp:TextBox ID="password" CssClass="text-login" placeholder="Your Password" TextMode="Password" runat="server" required="required"></asp:TextBox>
								<%--<input type="password" name="password" class="input-form"--%>
								<asp:Button ID="Button1" CssClass="loginhny-btn btn" runat="server" Text="Login" OnClick="Button1_Click" />
															</div>
							
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>

        </div>
    </form>
</body>
</html>
