<%@ Page Language="VB" AutoEventWireup="false" CodeFile="adminlogin.aspx.vb" Inherits="_Default1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body >
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <form  id="form1" runat="server">
    <center>
        <div >
        <center style="border: thick double #000080; width: auto; height: auto; padding-right: 150px; padding-left: 150px; margin-right: 250px; margin-left: 250px; background-color: #FFCC66;">
        <br />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" 
            ImageUrl="~/Picture1.png" />
        <br />
        <br />
        <br />
        <br />
        <br />
            <asp:Label ID="Label3" runat="server" Text="Select Type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>User</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" />
            <br />
            <br />
            <br />
            <br />
        </center>
    
    </div>
    </center>
    </form>
</body>
</html>
