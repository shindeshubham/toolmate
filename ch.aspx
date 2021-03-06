﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ch.aspx.vb" Inherits="ch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>www.toolmate.com</title>
    <style type="text/css">

    body {
        margin:0;
        padding:0;
        font: bold 11px/1.5em Verdana;
}

h2 {
        font: bold 14px Verdana, Arial, Helvetica, sans-serif;
        color: #000;
        margin: 0px;
        padding: 0px 0px 0px 15px;
}

/*- Menu Tabs I--------------------------- */

    #tabsI {
      float:left;
      width:100%;
      background:#EFF4FA;
      font-size:115%;
      line-height:normal;
          border-bottom:0px solid #DD740B;
      }
    #tabsI ul {
        margin:0;
        padding:10px 50px 0 250px;
        list-style:none;
      }
    #tabsI li {
      display:inline;
      margin:0;
      padding:0;
      }
    #tabsI a {
      float:left;
      background:url("tableftI.gif") no-repeat left top;
      margin:0;
      padding:0 0 0 5px;
      text-decoration:none;
      }
    #tabsI a span {
      float:left;
      display:block;
      background:url("tabrightI.gif") no-repeat right top;
      padding:5px 15px 4px 6px;
      color:green;
      }
    /* Commented Backslash Hack hides rule from IE5-Mac \*/
    #tabsI a span {float:none;}
    /* End IE5-Mac hack */
    #tabsI a:hover span {
      color:red;
      }
    #tabsI a:hover {
      background-position:0% -42px;
      }
    #tabsI a:hover span {
      background-position:100% -42px;
      }

        #tabsI #current a {
                background-position:0% -42px;
        height: 19px;
    }
        #tabsI #current a span {
                background-position:100% -42px;
        }

/* =-=-=-=-=-=-=-[Menu Three]-=-=-=-=-=-=-=- */

#menu3 {
        width: 200px;
        border: 1px solid #ccc;
        margin: 10px;
        }

#menu3 li a {
          height: 32px;
          voice-family: "\"}\"";
          voice-family: inherit;
          height: 24px;
        text-decoration: none;
        }

#menu3 li a:link, #menu3 li a:visited {
        color: #888;
        display: block;
        background: url(menu.gif);
        padding: 8px 0 0 30px;
        }

#menu3 li a:hover, #menu3 li #current, #menu3 li a:active {
        color: #283A50;
        background: url(menu.gif) 0 -32px;
        padding: 8px 0 0 30px;
        }

</style>
<style type="text/css">

body {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        margin: 0;
        font: bold 11px/1.5em Verdana;
        font-weight: bold;
        background:  url(frame.jpg);
        }

h2 {
        font: bold 14px Verdana, Arial, Helvetica, sans-serif;
        color: #000;
        margin: 0px;
        padding: 0px 0px 0px 15px;
}

ul {
        list-style: none;
        margin: 0;
        padding: 0;
        }

img {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        }



</style>


</head>
<body>
    <form id="form1" runat="server">
    <div style="position:absolute;float:left;width:70px;">

	    <asp:Image ID="Image1" runat="server" Height="86px" ImageUrl="~/Picture1.png" 
            Width="86px" />
&nbsp;</div>

	<div style="float:right;width:82%;">
   	
	<asp:Image ID="Image2" runat="server" Height="82px" ImageUrl="~/tool.png" 
            Width="556px" />    	<br />
	 </div> 
     <br /><br /><br /><br /><br /><br />
	<hr style="color:Lime" />
	


<div id="tabsI" align="center">

<div style="float:left;">                                
<br />

</div>
<ul>                                       
<li id="current"><a href="home1.aspx"><span>Home</span></a></li>
<li><a href="fy.aspx"><span>FIRST YEAR</span></a></li>
<li><a href="sy.aspx"><span>SECOND YEAR</span></a></li>
<li><a href="ty.aspx"><span>THIRD YEAR</span></a></li>
<li><a href="feed.aspx"><span>Feed Back</span></a></li>
<li><a href="newap.aspx"><span>Post ad</span></a></li>
<li><a href="abus.aspx"><span>About us</span></a></li>
<li><a href="cous.aspx"><span>Contact Us</span></a></li>
<li><a href="myp.aspx"><span>My Products</span></a></li>
<li><a href="log.aspx"><span>Logout</span></a></li>

  </ul> 
        </div><br />
&nbsp;<br /> 
<br /><br />

<div style="position:absolute;float:left;width:70px;">
 <div id="menu3">
                        <ul>
                                <!-- CSS Tabs -->
<li><a href="it.aspx">IT</a></li>
<li><a href="co.aspx">COMPUTER ENGINEERING</a></li>
<li><a href="ex.aspx">EXTC</a></li>
<li><a href="et.aspx">ELECTRICAL</a></li>
<li><a href="ins.aspx">INSTRU</a></li>
<li><a href="ch.aspx">CHEMICAL</a></li>
<li><a href="pe.aspx">PETRO</a></li>
<li><a href="po.aspx">POLY</a></li>


                        </ul>
  </div></div>

	

		<br />
		<br /><br />
		<div style="padding: 50px; margin-right: 10px; margin-left: 250px; width: 690px; height: 78px;">
		    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="ID" DataSourceID="AccessDataSource1">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" ItemStyle-Width="200" ItemStyle-HorizontalAlign="Center"/>
                    <asp:BoundField DataField="imgPath" HeaderText="imgPath" 
                        SortExpression="imgPath" ItemStyle-Width="200" 
                        ItemStyle-HorizontalAlign="Center"/>
                    <asp:BoundField DataField="yr" HeaderText="yr" SortExpression="yr" 
                        ItemStyle-Width="200" ItemStyle-HorizontalAlign="Center"/>
                    <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                </Columns>
            </asp:GridView>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/adminaccounts.accdb" 
                
                SelectCommand="SELECT [ID], [pname], [imgPath], [yr], [dept] FROM [products] WHERE ([dept] = ?)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="CHEM" Name="dept" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
		</div>
		<br /><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

    </form>
</body>
</html>
