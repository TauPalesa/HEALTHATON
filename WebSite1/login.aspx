<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="registration.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Health-a-ton</title>
</head>
<body style="background-image:url(clinic.jpg)">
    <div class="signin">
        <form id="mmm" runat="server" style="align:center">
            <h2 style="color: white;">Welcome to HealthaTon</h2>
            <image id="image" style=" width:20%;height:30%;" src="finalised logo h.png"></image>
            <br />
            <h2 style="color: white">Log In</h2>
           <asp:TextBox ID="Email" runat="server" placeholder="youremail@gmail.com"></asp:TextBox>

                     <asp:TextBox ID="password" runat="server" placeholder="password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click" />
            <div id="container">
                <br />
            <a href="#" style=" margin-right:0px; font-size:13px;font-family:Tahoma, Gevena, sans-seral;">Reset passwod</a>
            </div>
            Don't have an account?<a class="cccs" href="registerclient.aspx">&nbsp;Sign Up</a>
            <br /><br><a href="">&nbsp;About us!</a>
        </form>

    </div>
</body>
</html>
