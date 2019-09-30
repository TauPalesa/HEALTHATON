<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
    .auto-style2 {
        color: #000000;
        height: 23px;
        width: 174px;
    }
    .auto-style3 {
        height: 23px;
        width:100%;
    }
    .auto-style4 {
        width: 174px;
    }
    .auto-style5 {
        color: #000000;
        width: 174px;
    }
    .auto-style6 {
        width: 100%;
    }
    </style>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="regis.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard</title>
</head>
<body>
    <div class="signin">
        <form  runat="server" id="mnf">
        <h2 style="color: white">Welcome to HealthaTon
        <img src="finalised logo h.png" class="box-img"></img></h2>

            <table>
                <tr><td>
        Name: 
                    </td>
                    <td>

                        <asp:Label ID="name1" runat="server" Text="Name"></asp:Label>
                    </td>
                </tr>
                <tr><td>
        Surname: </td>
                    <td>
 <asp:Label ID="surname" runat="server" Text="surname"></asp:Label>
                    </td>
                </tr>
                <tr><td>
        Gender:</td>
                    <td>
    <asp:Label ID="gender" runat="server" Text="Name"></asp:Label>

                    </td>
                </tr>
        <tr><td>ID_number:</td>
            <td>
                
                        <asp:Label ID="idNum" runat="server" Text="Name"></asp:Label>
            </td>
        </tr>
                <tr><td>
        Email:
                    </td>
            <td>
                
                        <asp:Label ID="email" runat="server" Text="Name"></asp:Label>
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
            <%--<script type="text/javascript">
            function fun() {
                document.write("<input type='text' name='text'>")
            }
        </script>--%>
        
            <br />
            <div>
            <asp:Button class="ComentBox" ID="Button2" runat="server" Text="consultation" OnClick="Button2_Click" />
             <asp:Button class="ComentBox" ID="Button1" runat="server" Text="Medication collection" OnClick="Button1_Click" />
</div>
            <asp:Panel ID="Medication" style="background-color:white;" Visible="false" runat="server" Width="52%">
                <table class="Table" runat="server">
                   
                    <tr>
                        <td style="color: #000000" class="auto-style4">
                            Province: 
                        </td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="Provname" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>Mpumalanga</asp:ListItem>
                                <asp:ListItem>Limpopo</asp:ListItem>
                                <asp:ListItem>KZN</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            Region: 
                        </td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="Region" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Region_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="region" DataValueField="region" >
                                
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:simphiwe %>" ProviderName="<%$ ConnectionStrings:simphiwe.ProviderName %>" SelectCommand="SELECT region FROM hospitals where province = ?
GROUP BY region">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Provname" Name="?" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            Name of Hospital: 
                        </td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="Hospital" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="hospital" DataValueField="hospital" OnSelectedIndexChanged="Hospital_SelectedIndexChanged"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:simphiwe %>" ProviderName="<%$ ConnectionStrings:simphiwe.ProviderName %>" SelectCommand="SELECT hospital from hospitals where region = ?
group by hospital">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Region" Name="?" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="REASON" runat="server" Text="Description for consultation: "></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="reason1" runat="server" Width="312px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="reason1" style="color: #000000" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            Date: 
                        </td>
                        <td class="auto-style6">
                                                                        <asp:TextBox ID="date1" runat="server" CssClass="drop" TextMode="Date" AutoPostBack="True" Width="100%" Height="2em"></asp:TextBox>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Time: 
                        </td>
                        <td style="background-color: #808080" class="auto-style3">
                                            <asp:TextBox ID="time1" runat="server" CssClass="drop" TextMode="Time" Width="100%" Height="2em"></asp:TextBox>

                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style2">
                           
                        </td>
                        <td  class="auto-style3">

                            <asp:Button ID="saveD" runat="server" Height="2em" Text="Submit" Width="50%" OnClick="saveD_Click"  />

                        </td>

                    </tr>
                </table>


            </asp:Panel>
            <asp:Button ID="lll" class="Comentbox"  runat="server" Text="Log Out" PostBackUrl="~/login.aspx" />
        </form>
    </div>
</body>
</html>
