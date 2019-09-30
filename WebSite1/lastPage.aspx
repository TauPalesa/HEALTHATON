<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lastPage.aspx.cs" Inherits="lastPage" %>

<!DOCTYPE html>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="regis.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOoking Confirnmed</title>

</head>
<body>
    <form id="form1" runat="server">
    <div class="signin" align="center">
        <h2 style="color: white"></h2><br>
        <br>
         <div style=" background: rgba(44, 62, 80, 7);" align="center">
        <asp:GridView ID="GridView1" runat="server"  DataSourceID="patientRecord" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="idnum" HeaderText="ID Number" SortExpression="idnum" />
                <asp:BoundField DataField="province" HeaderText="Province" SortExpression="province" />
                <asp:BoundField DataField="region" HeaderText="Region" SortExpression="region" />
                <asp:BoundField DataField="date1" HeaderText="Date" SortExpression="date1" />
                <asp:BoundField DataField="time1" HeaderText="Time" SortExpression="time1" />
                <asp:BoundField DataField="reason" HeaderText="Reason" SortExpression="reason" />
            </Columns>
        </asp:GridView>
             </div>
        <asp:SqlDataSource ID="patientRecord" runat="server" ConnectionString="<%$ ConnectionStrings:simphiwe %>"
             ProviderName="<%$ ConnectionStrings:simphiwe.ProviderName %>" 
            SelectCommand="SELECT idnum,province ,region ,date1,time1,reason FROM hospital_name
WHERE idnum = ?">
            <SelectParameters>
                <asp:SessionParameter Name="?" SessionField="idno" />
            </SelectParameters>
        </asp:SqlDataSource>
      <%--  <table align="center">
            <tr>
                <td>
                      Name :
                </td>
                <td>
                     <asp:Label ID="name1" runat="server" Text="Name"></asp:Label>
                 </td>
            </tr>
            <tr>
                <td>
                    Surname:
                </td>
                <td>
                     <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                      ID nnumber:
                </td>
                <td>
                     <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td> 
                        Gender :
                </td>
                <td>
                     <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                </td>
            </tr>
           
            <tr>
                <td>
                    Phone number:
                </td>
                <td>
                     <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                     Province:
                </td>
                <td>
                     <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                     Region:
                </td>
                <td>
                     <asp:Label ID="Label6" runat="server" Text="Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>

        Hospital:
                </td>
                <td>
                     <asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>

        Medical Description: 
                </td>
                <td>
                     <asp:Label ID="Label8" runat="server" Text="Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Date:
                </td>
                <td>
                     <asp:Label ID="Label9" runat="server" Text="Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Time: 
                </td>
                <td>
                     <asp:Label ID="Label10" runat="server" Text="Name"></asp:Label>
                </td>
            </tr>
        </table>--%>
        
        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />
        
        <h2 style="color: white">Thank You!</h2>
        
    </div>
    </form>
</body>
</html>
