<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new1.aspx.cs" Inherits="MyDeal.new1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Write a program to check whether a number is even or odd.</h1>
            <p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
