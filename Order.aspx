<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lilly Watson | Order</title>
    <style type="text/css">

table {background:transparent;border:0 none;font-size:100%;margin:0;padding:0;border:0;outline:0;vertical-align:top}
tbody {background:transparent;border:0 none;font-size:100%;margin:0;padding:0;border:0;outline:0;vertical-align:top}
tr {background:transparent;border:0 none;font-size:100%;margin:0;padding:0;border:0;outline:0;vertical-align:top}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <link href="Background3.css" rel="stylesheet" />
    </div>
        <p>
&nbsp;
        </p>
        <center> 
        <table id="search" runat="server" cellpadding="5" cellspacing="5" style="width: 90%; background: #f4f4f4; text-align: left;">
            <tr>
                <td bgcolor="#666666" colspan="2" style="color:White; text-align:center;">Please confrim your order&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td> 
                    Song Id
                </td>
                <td><asp:Label ID="lblmsg8" runat="server"></asp:Label></td>
            </tr>
            <tr bgcolor="#f4f4f4">
                <td>Song Name:</td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr bgcolor="#f4f4f4">
                <td>Price:</td>
                <td>
                  Rs.  <asp:Label ID="Label2" runat="server" ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Artist:</td>
                <td>
                    <asp:Label ID="lblmsg7"  runat="server" Text="Lilly Watson"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Genre:</td>
                <td>
                    <asp:Label ID="lblmsg0" Text="Compilation" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Bit Rate:</td>
                <td>
                    <asp:Label ID="lblmsg1" runat="server" Text="320 Kbps"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Item Type: </td>
                <td>
                    <asp:Label ID="lblmsg2" Text="MP3 FORMAT FILE" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Ratings: </td>
                <td>
                    <asp:Label ID="lblmsg3" runat="server" Text="4.5 / 5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Encoded By:</td>
                <td>
                    <asp:Label ID="lblmsg4" Text="DDR" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Publisher: </td>
                <td>
                    <asp:Label ID="lblmsg5" Text="Music Rockers" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Copy Rights:</td>
                <td>
                    <asp:Label ID="lblmsg6" Text="Sony Music" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;<asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Proceed to pay" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </center>
            </form>
</body>
</html>
