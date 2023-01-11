<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LocalPandit.Admin.Default" %>

<!DOCTYPE html >

<html>

<head>
    <title>My-Deal</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="utf-8" />
    <meta name="keywords" content="" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet" />
    <!-- //fonts -->
    <!-- Font-Awesome-File-Links -->
    <link rel="stylesheet" href="css/font-awesome.css" type="text/css" media="all" />

    <link rel="shortcut icon" href="img/mydeal12.png" />
   
</head>

<body>
   
    <div class="content-w3ls">
        <div class="content-top-agile">
            <h2>Admin LogIn</h2>
        </div>
        <div class="content-bottom">
            <form action="#" runat="server">
                <div class="field-group">
                    <span class="fa fa-user" aria-hidden="true"></span>
                    <div class="wthree-field" >
                        <asp:TextBox ID="username_txt" placeholder="username" runat="server" ></asp:TextBox>
                        
                    </div>
                </div>
                <div class="field-group">
                    <span class="fa fa-lock" aria-hidden="true"></span>
                    <div class="wthree-field">
                        <asp:TextBox ID="pwd_txt" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                        
                    </div>
                </div>
                
                <div class="wthree-field" style="padding-top: 5%;">

                    <asp:Button ID="signin" runat="server" Text="SIGN IN" onclick="signin_Click" /> 

                    
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>
