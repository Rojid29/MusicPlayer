<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lilly Watson | Payment</title>
    <style type="text/css">

table {background:transparent;border:0 none;font-size:100%;margin:0;padding:0;border:0;outline:0;vertical-align:top}
tbody {background:transparent;border:0 none;font-size:100%;margin:0;padding:0;border:0;outline:0;vertical-align:top}
tr {background:transparent;border:0 none;font-size:100%;margin:0;padding:0;border:0;outline:0;vertical-align:top}
span {background:transparent;border:0 none;font-size:100%;margin:0;padding:0;border:0;outline:0;vertical-align:top}
        .auto-style1 {
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
        <link href="Background3.css" rel="stylesheet" />
    </div>
        <p>
&nbsp;</p>
        <p>
&nbsp;<script type="text/javascript">
    //    function TextBoxDCardNumber(sender, args) {
    //        var v = document.getElementById("<%=cardnum.ClientID%>").value;
    //        if (v < '16') {
    //            args.IsValid = false;  
    //        }

    //    }
    function dropMonth(sender, args) {
        var v = document.getElementById('<%=DropDownList2.ClientID%>').value;
        if (v == 'Month') {
            args.IsValid = false;
        }

    }
    function dropYear(sender, args) {
        var v = document.getElementById('<%=DropDownList3.ClientID%>').value;
        if (v == 'Year') {
            args.IsValid = false;
        }

    }
    function dropCard(sender, args) {
        var v = document.getElementById('<%=DropDownList1.ClientID%>').value;
        if (v == 'Select') {
            args.IsValid = false;
        }

    }
    function CheckMonths(source, arguments) {
        if ((arguments.Value.length == '16'))
            arguments.IsValid = true;
        else
            arguments.IsValid = false;
    }
 

</script><table width="680px">
                <tr>
                    <td colspan="3" style="border-bottom:1px solid #716f6f; font-family:Arial; font-size:large; font-weight:bold; color:White">Payment </td>
                </tr>
                <tr>
                    <td colspan="3" style="color:#c0c0c0; font-size:small">Please enter your payment information on this page. When you have provided payment details, and are ready to complete your booking, click the &#39;Pay&#39; button. </td>
                </tr>
                <tr>
                    <td colspan="3" style="height:12px; border-bottom:1px solid #716f6f"></td>
                </tr>
                <tr>
                    <td colspan="3" style="font-family:Arial; font-size:small; font-weight:bold; color:White">Payments </td>
                </tr>
                <tr>
                    <td colspan="3" style="height:8px"></td>
                </tr>
                <tr>
                    <td style="color:#c0c0c0; font-size:small;">Total Package Price: </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#FFFFCC" Text="Rs."></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:Label ID="packageprice" runat="server" Font-Size="Medium" ForeColor="#FFFFCC" Text="Label"></asp:Label>
                        <span style="font-size:medium; color:#FFFFCC">.00</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td colspan="3" style="border-bottom:1px solid #716f6f"></td>
                </tr>
            </table>
            <table cellpadding="9" width="680px">
                <tr>
                    <td style="color:#FFC0B5; font-size:medium; font-weight:bold; height: 26px;">MasterCard/ Visa </td>
                </tr>
            </table>
            <div>
                <table width="100%">
                    <tr>
                        <td style="font-weight:bold; color:#c0c0c0">Your card may be eligible or enrolled in Verified by Visa™ or MasterCard® SecureCode™ payer authentication programs. After clicking the &#39;Pay&#39; button, your Card Issuer may prompt you for your payer authentication password to complete your purchase. </td>
                    </tr>
                    <tr>
                        <td style="height:8px"></td>
                    </tr>
                </table>
                <div>
                    <div>
                        <asp:Image ID="Image1" runat="server" ImageAlign="Left" ImageUrl="~/images/vbv_visa.png" />
                    </div>
                    <div>
                        <asp:Image ID="Image2" runat="server" ImageAlign="Left" ImageUrl="~/images/mastercard.png" />
                    </div>
                </div>
                <table style="width:490px">
                    <tr>
                        <td style="color:#c0c0c0; font-size:medium">Card type </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdownlist" Width="200px">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Master Card(Credit Card)</asp:ListItem>
                                <asp:ListItem>Visa(Debit Card or Credit Card) </asp:ListItem>
                            </asp:DropDownList>
                            <asp:CustomValidator ID="CustomValidator4" runat="server" ClientValidationFunction="dropCard" ControlToValidate="DropDownList1" ErrorMessage="CustomValidator" ForeColor="#CC0000">Select Card</asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height:8px"></td>
                    </tr>
                    <tr>
                        <td style="color:#c0c0c0; font-size:medium">Card Number </td>
                        <td>
                            <asp:TextBox ID="cardnum" runat="server" CssClass="textbox2" Width="200px"></asp:TextBox>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="CheckMonths" ControlToValidate="cardnum" Display="Dynamic" ErrorMessage="CustomValidator" ForeColor="#CC0000">Invalid Number ,It should be of 16 digits</asp:CustomValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cardnum" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height:8px"></td>
                    </tr>
                    <tr>
                        <td style="color:#c0c0c0; font-size:medium">Card Holder Name </td>
                        <td>
                            <asp:TextBox ID="holdername" runat="server" CssClass="textbox2" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="holdername" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Field Reqiureds</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height:8px"></td>
                    </tr>
                    <tr>
                        <td style="color:#c0c0c0; font-size:medium">Expiration Date</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdownlist" Width="90px">
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdownlist" Width="90px">
                                <asp:ListItem>Year</asp:ListItem>
                            </asp:DropDownList>
                            <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="dropMonth" ControlToValidate="DropDownList2" Display="Dynamic" ErrorMessage="CustomValidator" ForeColor="#CC0000">Select Month</asp:CustomValidator>
                            &nbsp;
                            <asp:CustomValidator ID="CustomValidator3" runat="server" ClientValidationFunction="dropYear" ControlToValidate="DropDownList3" Display="Dynamic" ErrorMessage="CustomValidator" ForeColor="#CC0000">Select Year</asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height:8px"></td>
                    </tr>
                    <tr>
                        <td style="color:#c0c0c0; font-size:medium">CVV Number</td>
                        <td>
                            <asp:TextBox ID="cvnum" runat="server" CssClass="textbox2" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cvnum" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Field Required</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height:8px"></td>
                    </tr>
                </table>
                <table width="680px">
                    <tr>
                        <td colspan="2" style="font-weight:bold; color:#c0c0c0">Note: Debit cards of select banks are accepted for online transactions. Please contact your bank to know if your debit card can be used for online transactions. </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div class="auto-style1" style="outline: 0;">
            </div>
            <div>
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="#666666" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="24px" onclick="Button1_Click" Text="Pay" Width="81px" />
            </div>
        </p>
    </form>
</body>
</html>
