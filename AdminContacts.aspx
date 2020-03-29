<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminContacts.aspx.cs" Inherits="AdminContacts" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html lang="C#">


<head>
<title>Lilly Watson | Audio</title>
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
       
    <center>   <asp:Label ID="Label1" runat="server" Text="CONTACTS CONTROL" Font-Underline="true" Font-Size="X-Large" ForeColor="#CCCCCC"></asp:Label></center> 
        <br>
        <br>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="859px" Height="573px" PageSize="20" >
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              <asp:BoundField DataField="Id" HeaderStyle-HorizontalAlign="Justify"  HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" HeaderStyle-Height="30" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Larger" />
              <asp:BoundField DataField="Name" HeaderStyle-HorizontalAlign="Justify" HeaderText="Name" SortExpression="Name" HeaderStyle-Height="30" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Larger" />
              <asp:BoundField DataField="Email" HeaderStyle-HorizontalAlign="Justify" HeaderText="Email" SortExpression="Email" HeaderStyle-Height="30" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Larger" />
              <asp:BoundField DataField="City" HeaderStyle-HorizontalAlign="Justify" HeaderText="City" SortExpression="City" HeaderStyle-Height="30" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Larger" />
              <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
          </Columns>
      </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:gurpreetConnectionString %>" DeleteCommand="DELETE FROM [Contacts] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL))" InsertCommand="INSERT INTO [Contacts] ([Name], [Email], [City], [Message]) VALUES (@Name, @Email, @City, @Message)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Contacts]" UpdateCommand="UPDATE [Contacts] SET [Name] = @Name, [Email] = @Email, [City] = @City, [Message] = @Message WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_Message" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_Message" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
  </article> </center>
  <div class="af clear"></div>
</div>
    </form>
<footer>
  <div class="footerlink">
    <p class="lf">Copyright &copy; 2014 ">Copyright &copy; 2014 <a href="#">SiteName</a> - All Rights Reserved</p>
    <p class="rf"><a href=""></a> Design and Development by The Singh Production <a href=""></a></p>
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
