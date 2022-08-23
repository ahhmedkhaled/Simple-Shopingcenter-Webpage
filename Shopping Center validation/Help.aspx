<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="Shopping_Center.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: large;
            color: #993399;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <p>
        <strong>
        <br class="auto-style2" />
        </strong><span class="auto-style2"><strong>How can we help you?</strong></span></p>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Help center">Help Center</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Order CancellationOrder CancellationOrder Cancellation">Order Cancellation</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Place and Track OrderPlace and Track OrderPlace and Track Order">Place and Track Order</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="Returns and RefundsReturns and RefundsReturns and Refunds">Returns and Refunds</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="Other">Other</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
