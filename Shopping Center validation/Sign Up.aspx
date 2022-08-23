<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="Shopping_Center.WebForm2" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>
  

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 297px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-decoration: underline;
        }
        .auto-style5 {
            font-size: larger;
            color: #993399;
            background-color: #FFFFFF;
        }
        .auto-style6 {
            width: 297px;
            height: 96px;
        }
        .auto-style7 {
            height: 96px;
        }
        .auto-style8 {
            font-weight: bold;
        }
        .auto-style9 {
            width: 259px;
        }
        .auto-style10 {
            height: 96px;
            width: 259px;
        }
        .auto-style11 {
            text-align: center;
            width: 259px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style3">
                <span class="auto-style4"><strong><span class="auto-style5">Kindly fill the following fields then click submit</span></strong></span><br />
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <br />
                        First Name:<br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtFname" runat="server"></asp:TextBox><br />
                        <font face"arial" | color="red" size="-1" >
                            Example:Ahmed or Abdel Rahman
                        </font>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFname" ErrorMessage="This is a required field" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Invalid First name format" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Last Name:<br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtLname" runat="server" OnTextChanged="txtLname_TextChanged"></asp:TextBox><br />
                        <font face"arial" | color="red" size="-1" >
                            Example:Ahmed or Abdel Rahman
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLname" ErrorMessage="This is a required field" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Invalid Last name format" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Username:<br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUsername" ErrorMessage="This is a required field" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="Invalid Username, should bs 8 characters ONLY!" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\w{8}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Password:<br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="This is a required field" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="Invalid Password, should be between 8 and 12 characters" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\w{8,12}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Re-type Password:<br />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="This is a required field" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="TextBox5" ErrorMessage="No matching please Re-type your password" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <br />
                        E-mail:<br />
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
                        <font face"arial" | color="red" size="-1" >
                            Example:Ahmed@gmail.com
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmail" ErrorMessage="This is a required field" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style7">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid E-mail format" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Sex:<br />
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="212px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Mobile Number:<br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><br />
                    <font face="arial"| color="#000022" size="-1">Example:0122 1234567</font>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid Mobile Number" Font-Names="Arial" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="[0][1][0-2][0-24-9]\s\d{7}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Country:<br />
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCountry" runat="server">
                            <asp:ListItem>Egypt</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                            <asp:ListItem>Italy</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Upload Profile Pic"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:FileUpload ID="fupPic" runat="server" />
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <br />
                        <strong>
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="auto-style8" OnClick="Button1_Click" />
                        </strong>
                    </td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
