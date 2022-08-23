<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.Master" AutoEventWireup="true" CodeBehind="userHome.aspx.cs" Inherits="Shopping_Center.WebForm5" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        String TextUname = "";
        LblMsg.Text = "Welcome " + TextUname + "to User Home  Page";
   
    }
    </script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="LblMsg" runat="server" Font-Names="Arial Black" Font-Size="Large"></asp:Label>
</asp:Content>
