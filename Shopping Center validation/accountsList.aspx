<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="accountsList.aspx.cs" Inherits="Shopping_Center.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Large" ForeColor="#000066" Text="Choose Country"></asp:Label>
<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Country" DataValueField="Country" Height="16px" Width="80px" AutoPostBack="True">
    <asp:ListItem>Egypt</asp:ListItem>
    <asp:ListItem>France</asp:ListItem>
    <asp:ListItem>Italy</asp:ListItem>
    <asp:ListItem>Germany</asp:ListItem>
    <asp:ListItem>Canada</asp:ListItem>
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Country] FROM [Country]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Username" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
            <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
            <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Member] WHERE [Username] = @Username" InsertCommand="INSERT INTO [Member] ([Fname], [Lname], [Username], [E-mail], [sex], [Phone], [Country]) VALUES (@Fname, @Lname, @Username, @column1, @sex, @Phone, @Country)" SelectCommand="SELECT [Fname], [Lname], [Username], [E-mail] AS column1, [sex], [Phone], [Country] FROM [Member] WHERE ([Country] = @Country) ORDER BY [Country]" UpdateCommand="UPDATE [Member] SET [Fname] = @Fname, [Lname] = @Lname, [E-mail] = @column1, [sex] = @sex, [Phone] = @Phone, [Country] = @Country WHERE [Username] = @Username">
        <DeleteParameters>
            <asp:Parameter Name="Username" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Country" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
</asp:Content>
