﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<!DOCTYPE HTML>
<html lang="C#">
<head>
<title>Lilly Watson | Gallery</title>
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
<script type="text/javascript" src="js/gSlider.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
<!--[if lt IE 7]> <div style=' clear: both; height: 59px; padding:0 0 0 15px; position: relative;'> <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a></div> <![endif]-->
<!--[if lt IE 9]><script src="js/html5.js" type="text/javascript"></script><![endif]-->
<!--[if IE]><link href="css/ie_style.css" rel="stylesheet" type="text/css" /><![endif]-->
</head>
<body id="page4">
<!-- START PAGE SOURCE -->
<div id="main">
  <header>
    <nav>
      <ul>
        <li><a href="About.aspx">About</a></li>
        <li><a href="Audio.aspx">Audio</a></li>
        <li><a href="Video.aspx">Video</a></li>
        <li class="active"><a href="Gallery.aspx">Gallery</a></li>
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
    </div>
    <div class="col-2">
      <h2>Galleries</h2>
      <div class="img-box fl"> <a href="images/01.jpg" rel="prettyPhoto[pp_gal]"><img src="images/gallery5.jpg" alt=""><br>
        Gallery 1</a> </div>
      <div class="img-box fl lst"> <a href="images/02.jpg" rel="prettyPhoto[pp_gal]"><img src="images/gallery2.jpg" alt=""><br>
        Gallery 2</a> </div>
      <div class="img-box fl"> <a href="images/03.jpg" rel="prettyPhoto[pp_gal]"><img src="images/gallery4.jpg" alt=""><br>
        Gallery 3</a> </div>
      <div class="img-box fl lst"> <a href="images/04.jpg" rel="prettyPhoto[pp_gal]"><img src="images/gallery1.jpg" alt=""><br>
        Gallery 4</a> </div>
      <div class="img-box fl"> <a href="images/05.jpg" rel="prettyPhoto[pp_gal]"><img src="images/gallery3.jpg" alt=""><br>
        Gallery 5</a> </div>
      <div class="img-box fl lst"> <a href="images/06.jpg" rel="prettyPhoto[pp_gal]"><img src="images/gallery6.jpg" alt=""><br>
        Gallery 6</a> </div>
      <div class="img-box fl"> <a href="images/07.jpg" rel="prettyPhoto[pp_gal]"><img src="images/gallery8.jpg" alt=""><br>
        Gallery 7</a> </div>
      <div class="img-box fl lst"> <a href="images/08.jpg" rel="prettyPhoto[pp_gal]"><img src="images/gallery7.jpg" alt=""><br>
        Gallery 8</a> </div>
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
      </div>
     
      </form>
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
        $('a[rel^=prettyPhoto]').prettyPhoto({
            theme: 'round_square'
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
