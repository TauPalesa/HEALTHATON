<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerclient.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="registration.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RegistrationPage</title>
</head>
<body>
        <div class="signin">
                <form id="jj" runat="server">
                    <h2 style="color: white">Register to HealthaTon</h2>
                    <br>
                    <asp:Label ID="Label1" runat="server" Text="Choose Your Role"></asp:Label>
                    <asp:DropDownList ID="role" runat="server">
                        <asp:ListItem>Patient</asp:ListItem>
                        <asp:ListItem>Receptionist</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:TextBox ID="name1" runat="server" placeholder="Firstname"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="name1"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="Surname" runat="server" placeholder="Surname"></asp:TextBox>
                    

                    <asp:TextBox ID="NEWID" runat="server" placeholder="your id no"></asp:TextBox>
                   <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="NEWID"></asp:RequiredFieldValidator>
                    
                    <br />
                    <asp:TextBox ID="gender" runat="server" placeholder="Gender"></asp:TextBox>

                    <asp:TextBox ID="age" runat="server" placeholder="Age"></asp:TextBox>                  

                    <asp:TextBox ID="Cellnumber" runat="server" placeholder="Phone number"></asp:TextBox>

                    <asp:TextBox ID="Address" runat="server" placeholder="Country"></asp:TextBox>
                    <br />
                   <h2> Next Of Kin</h2>

                    <asp:TextBox ID="Nxkname" runat="server" placeholder="Firstname"></asp:TextBox>

                    <asp:TextBox ID="NxkSurname" runat="server" placeholder="Surname"></asp:TextBox>

                    <asp:TextBox ID="NxkNo" runat="server" placeholder="0721510080"></asp:TextBox>
                                       <h2>Account Details</h2>

                     <asp:TextBox ID="Email" runat="server" placeholder="youremail@gmail.com"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="Email"></asp:RequiredFieldValidator>
                    <br />
                    

                     <asp:TextBox ID="password" runat="server" placeholder="password"></asp:TextBox>
                    <br />

                   <asp:TextBox ID="TextBox1" runat="server" placeholder="password"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords must match" ControlToCompare="TextBox1" ControlToValidate="password"></asp:CompareValidator>
                    <br />
                    <asp:Button ID="registerb" runat="server"  Text="Register" OnClick="registerb_Click" />
                    
                    </form>
                    </div>

</body>
</html>