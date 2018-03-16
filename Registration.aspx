<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" 
    style="padding-top: 20px; padding-right: 30px; padding-left: 30px; margin: 20px 200px 20px 200px; border: thick double #000000">
    <div>
    <center style="background-color: #FFCC66">
        <br />
        <br /><h1>
        <asp:Label ID="Label9" runat="server" BackColor="#FFCC66" BorderColor="#FF6600" 
            BorderWidth="1px" ForeColor="#3333CC" Text="REGISTRATION FORM" 
                BorderStyle="None"></asp:Label></h1>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="134px" Width="147px" 
            ImageUrl="~/Picture1.png" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="height: 320px">
        <tr>
        <td>
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label><br />
        </td>
        <td>
        <asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox><br />
        </td>
        </tr>
        <tr>
        <td>
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label><br />
        </td>
        <td>
        <asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox><br />
        </td>
        </tr>
        <tr>
        <td>
        <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label><br />
        </td>
        <td>
        <asp:TextBox ID="TextBox3" runat="server" Width="210px"></asp:TextBox><br />
        </td>
        </tr>
        <tr>
        <td>
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label><br />
        </td>
        <td>
        <asp:TextBox ID="TextBox4" runat="server" Width="210px" TextMode="Password"></asp:TextBox><br />
        </td>
        </tr>
        <tr>
        <td>
        <asp:Label ID="Label5" runat="server" Text="Re-enter Password"></asp:Label><br />
        </td>
        <td>
        <asp:TextBox ID="TextBox5" runat="server" Width="210px" TextMode="Password"></asp:TextBox><br />
       </td>
       </tr>
        <tr>
        <td>
        <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label><br />
        </td>
        <td>
        <asp:RadioButton GroupName="gen" ID="RadioButton1" runat="server" Text="Male" />

        <asp:RadioButton GroupName="gen" ID="RadioButton2" runat="server" Text="Female" /><br />
        </td>
        </tr>
        <tr>
        <td>
        <asp:Label ID="Label8" runat="server" Text="Mobile Number"></asp:Label><br />
        </td>
        <td>
        <asp:TextBox ID="TextBox6" runat="server" Width="210px"></asp:TextBox><br />
        </td>
        </tr>
        <tr>
        <td>
        <asp:Label ID="Label7" runat="server" Text="Date Of Birth"></asp:Label><br />
        </td>
        <td>
<asp:TextBox ID="TextBox7" runat="server" Width="210px"></asp:TextBox><br />
        </td>
        </tr>
        </table>
        <asp:CheckBox ID="CheckBox1" runat="server" 
            Text="I accept the terms and conditions" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Register" />
        <br />
        <br />
        <a href='adminlogin.aspx'>
        already have an account</a><br />
        <br />
        
        <br />
        <br />
        <br />
    </center>
    </div>
    </form>
</body>
</html>
