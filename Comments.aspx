<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Comments.aspx.cs" Inherits="Comments" %>

<!DOCTYPE html>

<html lang="C#">


<head>
<title>Lilly Watson | Community</title>
<meta charset="UTF-8">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script type="text/javascript" src="js/Josefin_Sans_600.font.js"></script>
<script type="text/javascript" src="js/Lobster_400.font.js"></script>
<script type="text/javascript" src="js/sprites.js"></script>
<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
<script type="text/javascript" src="js/jquery.jplayer.settings.js"></script>
<script type="text/javascript" src="js/gSlider.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 63px;
        }
    </style>
<!--[if lt IE 7]> <div style=' clear: both; height: 59px; padding:0 0 0 15px; position: relative;'> <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a></div> <![endif]-->
<!--[if lt IE 9]><script src="js/html5.js" type="text/javascript"></script><![endif]-->
<!--[if IE]><link href="css/ie_style.css" rel="stylesheet" type="text/css" /><![endif]-->
</head>
<body id="page2">
<!-- START PAGE SOURCE -->
<form id="form1" runat="server">
<div id="main">
  <header>
    <nav>
      <ul>
        <li><a href="About.aspx">About</a></li>
        <li class="active"><a href="Audio.aspx">Audio</a></li>
        <li><a href="Video.aspx">Video</a></li>
        <li><a href="Gallery.aspx">Gallery</a></li>
        <li><a href="TourDates.aspx">Tour Dates</a></li>
        <li><a href="Contacts.aspx">Contacts</a></li>
      </ul>
    </nav>
    <h1><a href="About.aspx">Lilly Watson</a></h1>
    <div class="header-slider">
      <ul>
        <li></li>
        <li></li>
        <li></li>
      </ul>
    </div>
    <a href="#" class="hs-prev"><img src="images/prev.png" alt=""></a> <a href="#" class="hs-next"><img src="images/next.png" alt=""></a> <a href="Comments.aspx" class="header-more">Community</a> </header>
  <center> 
    <article id="content">
      <br>
       
    <center>   <asp:Label ID="Label1" runat="server" Text="MEMBERS COMMUNITY" Font-Size="X-Large" ForeColor="#CCCCCC"></asp:Label></center> 
        <br>
        <br>
        <div>
</div>
<div>
<asp:Repeater ID="RepDetails" runat="server" DataSourceID="SqlDataSource1">
<HeaderTemplate>
<table width:800px" cellpadding="0">
<tr style="color:White">
<td  colspan="2">
<b>-</b>
</td>
</tr>
</HeaderTemplate>
<ItemTemplate>
<tr >
<td>
<table style="width:800px; font-size:larger;" >
<tr> 
<td> <asp:Image ID="Image1" runat="server" Height="60" Width="60" ImageUrl="~/images/chat profile1.png"></asp:Image>
Post By:
<asp:Label ID="lblUser" runat="server" Font-Bold="true" Text='<%#Eval("UserName") %>'/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td> <br>
<asp:Label ID="lblComment" Font-Size="Larger" runat="server" Text='<%#Eval("Comment") %>'/>
    <br>
</td>
</tr>
<tr>
<td>
    <table style="border-bottom:1px solid #df5015; width:800px; font-size:larger; text-align:right;" >
<tr>
<td> </td>
    <br>
<td> Created Date:<asp:Label ID="lblDate" runat="server" Font-Bold="true" Text='<%#Eval("PostedDate") %>'/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="20">&nbsp;</td>
</tr>
</ItemTemplate>
<FooterTemplate>
</table>
</FooterTemplate>
</asp:Repeater>

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:gurpreetConnectionString %>" DeleteCommand="DELETE FROM [Repeater_Table] WHERE [Id] = @original_Id AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL)) AND (([PostedDate] = @original_PostedDate) OR ([PostedDate] IS NULL AND @original_PostedDate IS NULL))" InsertCommand="INSERT INTO [Repeater_Table] ([UserName], [Subject], [Comment], [PostedDate]) VALUES (@UserName, @Subject, @Comment, @PostedDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Repeater_Table]" UpdateCommand="UPDATE [Repeater_Table] SET [UserName] = @UserName, [Subject] = @Subject, [Comment] = @Comment, [PostedDate] = @PostedDate WHERE [Id] = @original_Id AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL)) AND (([PostedDate] = @original_PostedDate) OR ([PostedDate] IS NULL AND @original_PostedDate IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Subject" Type="String" />
            <asp:Parameter Name="original_Comment" Type="String" />
            <asp:Parameter Name="original_PostedDate" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Comment" Type="String" />
            <asp:Parameter Name="PostedDate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Comment" Type="String" />
            <asp:Parameter Name="PostedDate" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_Subject" Type="String" />
            <asp:Parameter Name="original_Comment" Type="String" />
            <asp:Parameter Name="original_PostedDate" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    
</div>
        <br>
    <br>
    <asp:Label ID="Label2" runat="server" Text="COMMENT BOX" Font-Size="X-Large" ForeColor="#D6D6D6"></asp:Label>
        <br>
    <br>
        <div>
<table>
<tr>
<td>Enter Name: </td>
<td><asp:TextBox ID="txtName" runat="server" Width="130px"/>&nbsp;&nbsp;
   
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Empty Name" ControlToValidate="txtName" ForeColor="#ff3300"></asp:RequiredFieldValidator>
   
    </td>
</tr>
<tr>
<td> Email Id: </td>
<td><asp:TextBox ID="txtSubject" runat="server" TextMode="Email" Width="130px" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Empty Email Id" ControlToValidate="txtSubject" ForeColor="#ff3300"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td valign="top">Enter Comments:</td>
<td><asp:TextBox ID="txtComment" runat="server" Rows="5" Columns="20" TextMode="MultiLine" Height="162px" Width="423px" MaxLength="50"/> &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Empty Comments" ForeColor="#ff3300" ControlToValidate="txtComment"></asp:RequiredFieldValidator>
    <asp:Label ID="Label3" runat="server" ForeColor="#CC0000" Font-Size="X-Large"></asp:Label></td>
</tr>
<tr>
<td class="auto-style1"></td>
<td class="auto-style1"><asp:Button ID="btnSubmit" runat="server" Text="Comment" onclick="btnSubmit_Click" Height="33px" Width="105px" /></td>
</tr>
</table>
</div>
  </article> </center>
  <div class="af clear"></div>
</div>
    </form>
<footer>
  <div class="footerlink">
    <p class="lf">Copyright &copy; 2014 f">Copyright &copy; 2014 <a href="#">SiteName</a> - All Rights Reserved</p>
    <p class="rf"><a href=""></a> Design and Development by The Singh Production. <a href=""></a></p>
    <div style="clear:both;"></div>
  </div>
</footer>
<script type="text/javascript">Cufon.now()
    $(function () {
        $('nav,.more,.header-more').sprites()
        $('.header-slider').gSlider({
            prevBu: '.hs-prev',
            nextBu: '.hs-next'
        })
        $('a[rel=prettyPhoto]').each(function () {
            var th = $(this),
                pb
            th.append(pb = $('<span class="playbutt"></span>').css({
                opacity: .7
            }))
            pb.bind('mouseenter', function () {
                $(this).stop().animate({
                    opacity: .9
                })
            }).bind('mouseleave', function () {
                $(this).stop().animate({
                    opacity: .7
                })
            })
        }).prettyPhoto({
            theme: 'dark_square'
        })
    })
</script>
<!-- END PAGE SOURCE -->
<div align=center> <a href=''></a></div></body>
</html>
