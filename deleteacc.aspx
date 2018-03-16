<%@ Page Language="VB" AutoEventWireup="false" CodeFile="deleteacc.aspx.vb" Inherits="deleteacc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 627px;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 295px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <table>
        <tr>
        <td class="style1">
        </td>
        <td>
        <asp:Button  ID="Button1" runat="server" Text="Search an account" Height="30px" />
        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
        </tr>
        </table>
    
    </div>
    <center>
    
        <br /><h3>Account information</h3>
        <br />
        <table class="style2">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Mobile number"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label6" runat="server" Text="Date of birth"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
        <br />
    
    </center>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
</body>
</html>
