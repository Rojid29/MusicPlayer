<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lilly Watson | Login</title>
    <style type="text/css">

a {color:white;text-decoration:underline;outline:none}
        .auto-style1 {
            width: 50%;
            text-align: center;
            font-size: 100%;
            vertical-align: top;
            border-style: none;
           
            border-width: 0;
            margin: 0;
            padding: 0;
            background:;
       border-color:white;
            background-color:white;
        }

        .auto-style2 {
            font-size: 100%;
            vertical-align: top;
            border-style: none;
            border-color: inherit;
            border-width: 0;
            margin: 0;
            padding: 0;
            background:;
        
            }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <link href="Background2.css" rel="stylesheet" />
    </div>
        <br />
        <br />
        <br />

        <br />
        <br />
<center>
    <br />
    <br />
    <br />
    <table style="filter:alpha(opacity=90); opacity: 0.9; outline-width: 0; outline-style: none; outline-color:white; border:thin; border-color:white; " cellpadding="5" cellspacing="10" class="auto-style1" border="1" >
            <tbody class="auto-style2" style="outline: 0;">
        <tr class="auto-style2"  style="outline: 0; background-color:white;">
            <td bgcolor="#666666" style="color:White">
                &nbsp;<strong class="auto-style2" style="outline: 0;">User Login</strong></td>
        </tr>
        <tr class="auto-style2" style="outline: 0;">
            <td>
                <asp:Label ID="Label1" ForeColor="black"  runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="auto-style2" style="outline: 0;">
            <td>
                <asp:Label ID="Label2"  runat="server" Text="Emil ID" ForeColor="black"> </asp:Label> &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1"  runat="server" AutoComplete="Off"  ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*">required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="auto-style2" style="outline: 0;">
            <td>
                <asp:Label ID="Label3" runat="server" ForeColor="black" Text="Password"></asp:Label> &nbsp;<asp:TextBox ID="TextBox2" runat="server"  TextMode="Password" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*">required</asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr class="auto-style2" style="outline: 0;">
            <td style="height: 40px">
                &nbsp;</td>
        </tr>
        <tr class="auto-style2" style="outline: 0;">
            <td>
                <asp:Button ID="Button1" runat="server" Text="Log in" onclick="Button1_Click" />
                &nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black" NavigateUrl="~/SignUp.aspx">Join Now</asp:HyperLink>
                <br />
                <br />
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>
      </center>         
 
        

    
        <br />

        <br />

        <br />

        <br />

        <br />
 
        

    
    </form>
</body>
</html>
