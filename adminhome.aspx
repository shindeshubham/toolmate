<%@ Page Language="VB" AutoEventWireup="false" CodeFile="adminhome.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 978px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div><table>
    <tr><td>    
        <asp:Image ID="Image1" runat="server" Height="90px" ImageUrl="~/Picture1.png" 
            Width="89px" />
    </td>
    <td align="right" class="style1">
        <asp:Button ID="Button1" runat="server" Text="Retrieve User Accounts" />
        <asp:Button ID="Button2" runat="server" Text="Delete User Account" />
        </td>
    </tr>
    </table>
    </div>
    <br />
    <br /><center>
    <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="usrnm" DataSourceID="AccessDataSource1" Height="183px" 
        Width="566px" Visible="False">
        <Columns>
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="usrnm" HeaderText="usrnm" ReadOnly="True" 
                SortExpression="usrnm" />
            <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
        </Columns>
    </asp:GridView>
    </center>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/accounts.accdb" SelectCommand="SELECT * FROM [accounts]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
