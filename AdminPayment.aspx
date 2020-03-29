<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPayment.aspx.cs" Inherits="AdminPayment" %>

<!DOCTYPE html>

<html lang="C#">


<head>
<title>Lilly Watson | Payment</title>
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
       
    <center>   <asp:Label ID="Label1" runat="server" Text="PAYMENT CONTROL" Font-Underline="true" Font-Size="X-Large" ForeColor="#CCCCCC"></asp:Label></center> 
        <br>
        <br>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="refid" DataSourceID="SqlDataSource1" Width="859px" Height="573px" PageSize="20" >
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              <asp:BoundField DataField="refid" HeaderStyle-HorizontalAlign="Justify"  HeaderText="refid" InsertVisible="False" ReadOnly="True" SortExpression="refid" HeaderStyle-Height="30" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Larger" />
              <asp:BoundField DataField="packege" HeaderStyle-HorizontalAlign="Justify" HeaderText="packege" SortExpression="packege" HeaderStyle-Height="30" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Larger" />
              <asp:BoundField DataField="cardtype" HeaderStyle-HorizontalAlign="Justify" HeaderText="cardtype" SortExpression="cardtype" HeaderStyle-Height="30" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Larger" />
              <asp:BoundField DataField="cardnumber" HeaderStyle-HorizontalAlign="Justify" HeaderText="cardnumber" SortExpression="cardnumber" HeaderStyle-Height="30" HeaderStyle-Font-Bold="false" HeaderStyle-Font-Size="Larger" />
              <asp:BoundField DataField="holdername" HeaderText="holdername" SortExpression="holdername" />
              <asp:BoundField DataField="expire" HeaderText="expire" SortExpression="expire" />
              <asp:BoundField DataField="cvv" HeaderText="cvv" SortExpression="cvv" />
          </Columns>
      </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:gurpreetConnectionString %>" DeleteCommand="DELETE FROM [payment] WHERE [refid] = @original_refid AND (([packege] = @original_packege) OR ([packege] IS NULL AND @original_packege IS NULL)) AND (([cardtype] = @original_cardtype) OR ([cardtype] IS NULL AND @original_cardtype IS NULL)) AND (([cardnumber] = @original_cardnumber) OR ([cardnumber] IS NULL AND @original_cardnumber IS NULL)) AND (([holdername] = @original_holdername) OR ([holdername] IS NULL AND @original_holdername IS NULL)) AND (([expire] = @original_expire) OR ([expire] IS NULL AND @original_expire IS NULL)) AND (([cvv] = @original_cvv) OR ([cvv] IS NULL AND @original_cvv IS NULL))" InsertCommand="INSERT INTO [payment] ([packege], [cardtype], [cardnumber], [holdername], [expire], [cvv]) VALUES (@packege, @cardtype, @cardnumber, @holdername, @expire, @cvv)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [payment]" UpdateCommand="UPDATE [payment] SET [packege] = @packege, [cardtype] = @cardtype, [cardnumber] = @cardnumber, [holdername] = @holdername, [expire] = @expire, [cvv] = @cvv WHERE [refid] = @original_refid AND (([packege] = @original_packege) OR ([packege] IS NULL AND @original_packege IS NULL)) AND (([cardtype] = @original_cardtype) OR ([cardtype] IS NULL AND @original_cardtype IS NULL)) AND (([cardnumber] = @original_cardnumber) OR ([cardnumber] IS NULL AND @original_cardnumber IS NULL)) AND (([holdername] = @original_holdername) OR ([holdername] IS NULL AND @original_holdername IS NULL)) AND (([expire] = @original_expire) OR ([expire] IS NULL AND @original_expire IS NULL)) AND (([cvv] = @original_cvv) OR ([cvv] IS NULL AND @original_cvv IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_refid" Type="Int32" />
                <asp:Parameter Name="original_packege" Type="String" />
                <asp:Parameter Name="original_cardtype" Type="String" />
                <asp:Parameter Name="original_cardnumber" Type="String" />
                <asp:Parameter Name="original_holdername" Type="String" />
                <asp:Parameter Name="original_expire" Type="String" />
                <asp:Parameter Name="original_cvv" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="packege" Type="String" />
                <asp:Parameter Name="cardtype" Type="String" />
                <asp:Parameter Name="cardnumber" Type="String" />
                <asp:Parameter Name="holdername" Type="String" />
                <asp:Parameter Name="expire" Type="String" />
                <asp:Parameter Name="cvv" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="packege" Type="String" />
                <asp:Parameter Name="cardtype" Type="String" />
                <asp:Parameter Name="cardnumber" Type="String" />
                <asp:Parameter Name="holdername" Type="String" />
                <asp:Parameter Name="expire" Type="String" />
                <asp:Parameter Name="cvv" Type="String" />
                <asp:Parameter Name="original_refid" Type="Int32" />
                <asp:Parameter Name="original_packege" Type="String" />
                <asp:Parameter Name="original_cardtype" Type="String" />
                <asp:Parameter Name="original_cardnumber" Type="String" />
                <asp:Parameter Name="original_holdername" Type="String" />
                <asp:Parameter Name="original_expire" Type="String" />
                <asp:Parameter Name="original_cvv" Type="String" />
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

