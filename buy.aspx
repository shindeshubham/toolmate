<%@ Page Language="VB" AutoEventWireup="false" CodeFile="buy.aspx.vb" Inherits="buy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table>
        <tr>
            <td>
                <b>Id</b>
            </td>
            <td>
                <asp:Label ID="lid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <b>Name</b>
            </td>
            <td>
                <asp:Label ID="lnm" runat="server"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <b>Country</b>
            </td>
            <td>
                <asp:Label ID="lblCountry" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
