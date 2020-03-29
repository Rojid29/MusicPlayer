<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Video.aspx.cs" Inherits="Video" %>


<!DOCTYPE HTML>
<html lang="C#">
<head>
<title>Lilly Watson | Video</title>
<meta charset="UTF-8">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/layout.css" rel="stylesheet" type="text/css" />
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
<!--[if lt IE 7]> <div style=' clear: both; height: 34px; padding:0 0 0 15px; position: relative; top: 0px; left: 0px;'> <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a></div> <![endif]-->
<!--[if lt IE 9]><script src="js/html5.js" type="text/javascript"></script><![endif]-->
<!--[if IE]><link href="css/ie_style.css" rel="stylesheet" type="text/css" /><![endif]-->
</head>
<body id="page3">
<!-- START PAGE SOURCE -->
<div id="main">
  <header>
    <nav>
      <ul>
        <li><a href="About.aspx">About</a></li>
        <li><a href="Audio.aspx">Audio</a></li>
        <li class="active"><a href="Video.aspx">Video</a></li>
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
        <li><a class="hs-prev" href="#">
            <img alt="" src="images/prev.png" /></a> <a class="hs-next" href="#">
            <img alt="" src="images/next.png" /></a> <a class="header-more" href="Comments.aspx">Community</a> <a class="hs-prev" href="#">
            <img alt="" src="images/prev.png" /></a> <a class="hs-next" href="#">
            <img alt="" src="images/next.png" /></a> <a class="header-more" href="Comments.aspx">Community</a> </li>
      </ul>
    </div>
    <a href="#" class="hs-prev"><img src="images/prev.png" alt=""></a> <a href="#" class="hs-next"><img src="images/next.png" alt=""></a> <a href="Comments.aspx" class="header-more">Community</a> </header>
  
      <form id="form1" runat="server">

<br>
      

    <div style="padding:25px; margin:5px; text-align:center;">




                <asp:DataList ID="DataList1"  runat="server" AutoGenerateColumns="false"
        RepeatColumns="2" CellSpacing="30"  ForeColor="#33CC33" Font-Underline="False" CellPadding="10" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" HorizontalAlign="Justify" margin="5px"   >
             <ItemTemplate>
            <u>
                <%# Eval("Name") %></u>
            <hr />
           
            <a class="player" style= "margin:5px; height: 400px; width: 505px; display:block; text-align:center;" href='<%# Eval("Data") %>'  >
            </a> 
             </ItemTemplate>
         <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Justify" />
    </asp:DataList> 
    <script src="FlowPlayer/flowplayer-3.2.12.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        flowplayer("a.player", "FlowPlayer/flowplayer-3.2.16.swf", {
            plugins: {
                pseudo: { url: "FlowPlayer/flowplayer.pseudostreaming-3.2.12.swf" }
            },
            clip: { provider: 'pseudo', autoPlay: false },
        });
    </script>



       

      <%--  <asp:DataList ID="DataList1" runat="server" AutoGenerateColumns="false"
             CellSpacing="10"  Font-Underline="false" RepeatColumns="2"   ForeColor="#33cc33" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
    <ItemTemplate>
            <u>
                <%# Eval("ImageName") %></u>
            <hr />
            <a class="player" style="height: 400px; width: 582px; display:block" href='<%# Eval("ImagePath") %>'>
            </a>
        </ItemTemplate>
    </asp:DataList>
 
<%--<asp:SqlDataSource ID="sqldataImages" runat="server"  ConnectionString="<%$ConnectionStrings:gurpreet %>"
SelectCommand="select * from ImagesPath" >
</asp:SqlDataSource>--%>
 <script src="FlowPlayer/flowplayer-3.2.12.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        flowplayer("a.player", "FlowPlayer/flowplayer-3.2.16.swf", {
            plugins: {
                pseudo: { url: "FlowPlayer/flowplayer.pseudostreaming-3.2.12.swf" }
            },
            clip: { provider: 'pseudo', autoPlay: false  },
        });
    </script> 


 
</div>
</form>
      
<footer>
  <div class="footerlink">
    <p class="lf">Copyright &copy; 2014 <a href="#">SiteName</a> - All Rights Reserved</p>
    <p class="rf"><a href=""></a> Design and Development by The Singh Production. <a href=""></a></p>
    <div style="clear:both;"></div>
  
</footer>
     
      <script type="text/javascript">Cufon.now()
          $(function () {
              $('nav,.more,.header-more').sprites()
              $('.header-slider').gSlider({
                  prevBu: '.hs-prev',
                  nextBu: '.hs-next'
              })
          })
</script>

<%--  --%>
       
<!-- END PAGE SOURCE -->
<div align=center> <a href=''></a></div></body>

</html>
