<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<!DOCTYPE html>


<html lang="C#">
<head>
<title>Lilly Watson | Contacts</title>
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
<body id="page6">
<!-- START PAGE SOURCE -->
<div id="main">
  <header>
    <nav>
      <ul>
        <li><a href="About.aspx">About</a></li>
        <li><a href="Audio.aspx">Audio</a></li>
        <li><a href="Video.aspx">Video</a></li>
        <li><a href="Gallery.aspx">Gallery</a></li>
        <li><a href="TourDates.aspx">Tour Dates</a></li>
        <li class="active"><a href="Contacts.aspx">Contacts</a></li>
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
      <div class="p2">
        <h2>Latest Photos</h2>
        <a href="tour-dates.html"><img class="p1" src="images/col1-img2.jpg" alt=""></a>
        <div class="alc"><a href="Gallery.aspx">View Gallery</a></div>
      </div>
    </div>
      

      
    <div class="col-2">
      <h2>Contact Form</h2>
        <form id="form1" runat="server">
          
        <fieldset>
           
            <asp:Label ID="Label1" runat="server" Text="Your Name"> </asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="410px" BackColor="#EEEEEE" Height="30px"></asp:TextBox>
            <br><br>
            <asp:Label ID="Label2" runat="server" Text="Your E-Mail"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="410px" BackColor="#EEEEEE" Height="30px" TextMode="Email"></asp:TextBox>
            <br><br>
            <asp:Label ID="Label3" runat="server" Text="Your City"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="410px" BackColor="#EEEEEE" Height="30px"></asp:TextBox>
            <br><br>
            <asp:Label ID="Label4" runat="server" Text="Your Message"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Width="410px" BackColor="#EEEEEE" Height="500px" TextMode="MultiLine"></asp:TextBox>
            <br><br>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
          
            <asp:Button ID="Button1" runat="server" Text="Clear" ForeColor="#33CC33" Height="37px" Width="60px" OnClick="Button1_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button2" runat="server" ForeColor="#00CC00" Height="37px" OnClick="Button2_Click" Text="Send" Width="60px" />
               
          
     
        </fieldset>
      
               </form>
    </div>
             
          
    <div class="col-3">
      <h2>Our Contacts</h2>
      <ul class="contacts blo">
        <li><span>Country:</span>USA</li>
        <li><span>State:</span>California</li>
        <li><span>City:</span>San Diego</li>
        <li><span>Telephone:</span>+354 5635600</li>
        <li><span>Email:</span><a href="#">lilly@gmail.com</a></li>
      </ul>
      <h2>Miscellaneous</h2>
      
           <p>Lilly Watson is an American recording artist, song writer and stage show entertainer. Recording artist. She became the 'best-selling teenaged artist of all time' and garnered honorific titles including the "Princess of Pop". Her work has earned her numerous awards and accolades, including a Grammy Award, six MTV Video Music Awards including the Lifetime Achievement Award, nine Billboard Music Awards, and a star on the Hollywood Walk of Fame..</p>
      </form>
      <h2>Find Me</h2>
      <ul class="soc-ico">
        <li><a href="https://www.facebook.com/singh.humanity"><img src="images/facebook.png" alt=""></a></li>
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