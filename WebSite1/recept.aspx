<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recept.aspx.cs" Inherits="DoctorsBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    
     <div class="signin">
        <form id="form1" runat="server">
        <h2 style="color: white">Welcome to HealthaTon</h2>
<div style="background-color:azure; min-height:400px; min-width:80%;">
    <asp:GridView ID="GridView1" runat="server" align="center" DataSourceID="SqlDataSource1"></asp:GridView>
       
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:simphiwe %>" ProviderName="<%$ ConnectionStrings:simphiwe.ProviderName %>" SelectCommand="SELECT firstname,surname,username,h.idnum,date1,time1,reason
FROM hospital_name h,healthaton i
WHERE h.idnum = i.idnum
AND h.idnum = ?">
        <SelectParameters>
            <asp:SessionParameter Name="?" SessionField="idno" />
        </SelectParameters>
    </asp:SqlDataSource>
       
    <p align="center" class="auto-style1">     <asp:Button class="ComentBox" ID="Button1" runat="server" Text="Log out" PostBackUrl="~/login.aspx" OnClick="Button1_Click" />
    </p>
</div>

          
    </form>
         </div>
</body>
</html>
