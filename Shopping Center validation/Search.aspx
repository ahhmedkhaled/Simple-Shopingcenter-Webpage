<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Shopping_Center.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            color: #993399;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div class="auto-style2">
            <span class="auto-style3"><strong>What are you looking for?</strong></span><br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Width="827px"></asp:TextBox>
            <br />
        </div>
            <asp:Button ID="Button1" runat="server" Text="Search" />
        </div>
    </form>
</body>
</html>
