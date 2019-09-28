<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorsBoard.aspx.cs" Inherits="DoctorsBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
     <div class="signin">
        <form id="form1" runat="server">
        <h2 style="color: white">Welcome to HealthaTon</h2>
        <img src="final hacking logo 2.jpg" class="box-img" ></img>

            <table>
                <tr><td>
        Patient Name: 
                    </td>
                    <td>

                        <asp:Label ID="name1" runat="server" Text="Name"></asp:Label>
                    </td>
                </tr>
                <tr><td>
       Patient Surname: </td>
                    <td>
 <asp:Label ID="surname" runat="server" Text="surname"></asp:Label>
                    </td>
                </tr>
                
        <tr><td>ID_number:</td>
            <td>
                
                        <asp:Label ID="idNo" runat="server" Text="Name"></asp:Label>
            </td>
        </tr>
                <tr><td>Patient Medical Record:</td>
            <td>
                
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
        </tr>
                
                <tr>
                    <td>
        Cellphone no:
                </td>
            <td>
                
                        <asp:Label ID="cellNo" runat="server" Text="Name"></asp:Label>
            </td>
        </tr>
        
        </table>

        <asp:Button class="ComentBox" ID="Button1" runat="server" Text="Log out" PostBackUrl="~/login.aspx" />

          
    </form>
         </div>
</body>
</html>
