<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html lang="C#">
<head>
<title>Lilly Watson</title>
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
    <form id="form1" runat="server">
<!--[if lt IE 7]> <div style=' clear: both; height: 59px; padding:0 0 0 15px; position: relative;'> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a></div> <![endif]-->
<!--[if lt IE 9]><script src="js/html5.js" type="text/javascript"></script><![endif]-->
<!--[if IE]><link href="css/ie_style.css" rel="stylesheet" type="text/css" /><![endif]-->
</head>
<body id="page1">
<!-- START PAGE SOURCE -->
<div id="main">
  <header>
    <nav>
      <ul>
        <li class="active"><a href="About.aspx">About</a></li>
        <li><a href="Audio.aspx">Audio</a></li>
        <li><a href="Video.aspx">Video</a></li>
        <li><a href="Gallery.aspx">Gallery</a></li>
        <li><a href="TourDates.aspx">Tour Dates</a></li>
        <li><a href="Contacts.aspx">Contacts</a></li>
      </ul>
    </nav>
    <h1><a href="About.aspx">LILLY WATSON</a></h1>
    <div class="header-slider">
      <ul>
        <li></li>
        <li></li>
        <li></li>
      </ul>
    </div>
    <a href="#" class="hs-prev"><img src="images/prev.png" alt=""></a> <a href="#" class="hs-next"><img src="images/next.png" alt=""></a> <a href="Comments.aspx" class="header-more">Community</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Black" NavigateUrl="~/SignUp.aspx">Join Us</asp:HyperLink>
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </header>
  <div class="tumbvr">
    <div class="tumbvr-mask"></div>
    <ul>
      <li><img src="images/01.jpg" alt=""></li>
      <li><img src="images/02.jpg" alt=""></li>
      <li><img src="images/03.jpg" alt=""></li>
      <li><img src="images/04.jpg" alt=""></li>
      <li><img src="images/05.jpg" alt=""></li>
      <li><img src="images/06.jpg" alt=""></li>
      <li><img src="images/07.jpg" alt=""></li>
      <li><img src="images/08.jpg" alt=""></li>
      <li><img src="images/09.jpg" alt=""></li>
      <li><img src="images/10.jpg" alt=""></li>
    </ul>
  </div>
  <article id="content">
    <div class="col-1">
      <div class="p2">
        <h2>New Album</h2>
        <img src="images/col-1-img1.png" class="p1" alt=""> <a href="#" class="more">Read More</a></div>
      <div class="p2">
        <h2>New Video</h2>
        <a href="#"><img class="p1" src="images/col1-video-thumb1.jpg" alt=""></a>
        <div class="alc"><a href="Video.aspx">More Videos</a></div>
      </div>
   <div class="p2">
        <h2>Latest Photos</h2>
        <a href="tour-dates.html"><img class="p1" src="images/col1-img2.jpg" alt=""></a>
        <div class="alc"><a href="Gallery.aspx">View Gallery</a></div>
      </div>
         </div>
    <div class="col-2">
      <!-- audio player begin -->
      <div id="jplayer"></div>
      <div class="jp-audio">
        <h2>New Song</h2>
        <div class="jp-type-single">
          <div id="jp_interface_1" class="jp-interface">
            <ul class="jp-controls">
              <li><a href="#" class="jp-play"></a></li>
              <li><a href="#" class="jp-pause"></a></li>
              <li><a href="#" class="jp-prev">Previous Track</a></li>
              <li><a href="#" class="jp-next">Next Track</a></li>
              <li><a href="#" class="jp-more-songs">Listen to More Songs</a></li>
            </ul>
            <div class="jp-progress">
              <div class="jp-seek-bar">
                <div class="jp-play-bar"></div>
              </div>
            </div>
            <div class="jp-title"></div>
          </div>
        </div>
      </div>
      <!-- audio player end -->
      <h2 class="pl">Upcoming Tour Dates</h2>
      <div class="table-border">
        <table class="dates" cellpadding="0" cellspacing="0" border="0">
          <tr class="thead">
            <td class="col1">Date / Venue</td>
            <td class="col2">Location</td>
            <td class="col3">Information</td>
          </tr>
          <tr class="even">
            <td class="col1">May 21, 2014<br>
              <a href="#" class="name">Rock Clubs</a><br>
              <a href="#" class="facebook-event">Facebook Event</a></td>
            <td>416 S. 9th St. 83702<br>
              Georgetown, California</td>
            <td>Banamex pre-sale starts May 10th @ 11AM and ends May 20th @ 8PM General on-sale starts May 13 @ 11AM Tickets will be available on Ticketmaster HERE: http://bit.ly/1p4drIW Or by phone +52-543251.</td>
          </tr>
          <tr>
            <td class="col1">May 21, 2014<br>
              <a href="#" class="name">Echo Arena</a><br>
              <a href="#" class="facebook-event">Facebook Event</a></td>
            <td>G 14 S. 5th St. 63702<br>
              Oxford, Georgia</td>
            <td>General on sale begins May 12th @ 12PM local time GET TICKETS HERE: http://bit.ly/1m2xjxL.</td>
          </tr>
          <tr class="even">
            <td class="col1">May 22, 2014<br>
              <a href="#" class="name">Madison Square Garden</a><br>
              <a href="#" class="facebook-event">Facebook Event</a></td>
            <td>M22 S.12 St. 13701<br>
              Madison, Alabama</td>
            <td>General on sale begins May 14th @ 12PM local time and ends May 21 @12PM GET TICKETS HERE: http://bit.ly/1m2xjxL.</td>
          </tr>
          <tr>
            <td class="col1">May 22, 2014<br>
              <a href="#" class="name">Luna Park</a><br>
              <a href="#" class="facebook-event">Facebook Event</a></td>
            <td> WH 514 S. 6th St. 93101<br>
              Washington, New Hampshire</td>
            <td> Tickets on sale FRIDAY, MAY 16th @ 10AM local time CLICK HERE FOR TICKETS: http://bit.ly/1m2xjxL.</td>
          </tr>
        </table>
      </div>
    </div>
    <div class="col-3">
      <h2>Latest Tweets</h2>
      <div class="und">
        <p>We had an absolutely killer show last night. The rave was electric, and the audience unforgettable! <br>
          <a href="#">1 hour ago</a></p>
        <p>We're back at Madison Square Garden! Just a hometown girl livin' the dream. <br>
          <a href="#">5 hours ago</a></p>
        <p>Ready to rave?<br>
          <a href="#">7 hours ago</a></p>
        <p>Do good n good will come to u,,love u all.<br>
          <a href="#">18 hours ago</a></p>
        <p>Enjoying the rainy day.  Staying in and watching movies and basketball .<br>
          <a href="#">24 hours ago</a></p>
     <p>Getting ready to go to Elton and David's party! Love this amazing event that's for a great cause .<br>
          <a href="#">May 16 </a></p>
        <p>Respect people’s feelings. Even if it doesn’t mean anything to you, it could mean everything to them… .<br>
          <a href="#">May 15 </a></p>
          <p>Back in action this weekend! Missed my stage....<br>
          <a href="#">May 12 </a></p>  
           </div>
      
      <h2>Find Me</h2>
      <ul class="soc-ico">
        <li><a href="#"><img src="images/facebook.png" alt=""></a></li>
        <li><a href="#"><img src="images/twitter.png" alt=""></a></li>
        <li><a href="#"><img src="images/myspace.png" alt=""></a></li>
        <li><a href="#"><img src="images/linkedin.png" alt=""></a></li>
      </ul>
    </div>
  </article>
  <div class="af clear"></div>
</div>
<footer>
  <div class="footerlink">
    <p class="lf">Copyright &copy; 2014 <a href="#">SiteName</a> - All Rights Reserved</p>
    <p class="rf"><a href=""></a> Design and Development by The Singh Production.<a href=""></a></p>
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
    })
    $(window).load(function () {
        $('.tumbvr')._fw({
            tumbvr: {
                duration: 2000,
                easing: 'easeOutQuart'
            }
        }).bind('click', function () {
            location = "index-3.html"
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
<div align=center> <a href=''></a></div>
    </form>
</body>
</html>