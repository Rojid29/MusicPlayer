<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Download" %>

<!DOCTYPE html>

<html lang="C#">


<head>
<title>Lilly Watson | Download</title>
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
<body id="Body1">
<!-- START PAGE SOURCE -->
<form id="form2" runat="server">
<div id="Div1">
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
  <article id="Article1">
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
    <div>
      

   </div> 
    
        


            
             <h2>Find Me</h2>
          <ul class="soc-ico">
           <li><a href="#"><img src="images/facebook.png" alt=""></a></li>
           <li><a href="#"><img src="images/twitter.png" alt=""></a></li>
           <li><a href="#"><img src="images/myspace.png" alt=""></a></li>
          <li><a href="#"><img src="images/linkedin.png" alt=""></a></li>
        </ul>
          </div>

</div>


    
           
      </div>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="Transparent" CssClass="Gridview" DataSourceID="SqlDataSource1" Font-Size="Large" HeaderStyle-Height="50px" HeaderStyle-BackColor="Transparent" Height="393px" OnSelectedIndexChanged="gvImages_SelectedIndexChanged" PageSize="1" Width="665px">
          <Columns>
              <asp:HyperLinkField ControlStyle-Font-Bold="false" ControlStyle-Font-Size="Larger" ControlStyle-ForeColor="#000099" DataNavigateUrlFields="ImagePath" DataTextField="ImageName" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Italic="true" HeaderStyle-Font-Size="X-Large" HeaderStyle-ForeColor="#dfdfdf" HeaderText="Downlaod">
              <ControlStyle Font-Bold="False" Font-Size="Large" ForeColor="#33CC33" />
              </asp:HyperLinkField>
              
              <asp:HyperLinkField ControlStyle-Font-Bold="false" ControlStyle-Font-Size="Larger" ControlStyle-ForeColor="#000099" DataNavigateUrlFields="ImagePath"  Text="Downlaod" >
              <ControlStyle Font-Bold="False" Font-Size="Large" ForeColor="#33CC33" />
              </asp:HyperLinkField>
               <%--<ItemTemplate>
<asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"></asp:LinkButton>



               </ItemTemplate>
              </asp:TemplateField>-->
                   <%--<ItemTemplate>
             <asp:TemplateFie
                       <u>
                         Rs.   <asp:Label ID="lbl" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
   
             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="myclick">Buy Track</asp:LinkButton>
                           <asp:Label ID="Label1" runat="server" Text='<%#Eval("Id") %>' Visible="False"></asp:Label>
                           <asp:Label ID="Label2" runat="server" Text='<%#Eval("ImageName") %>' Visible="False"></asp:Label>
                           <%--<asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" NavigateUrl="~/Login.aspx">&nbsp;Buy&nbsp;Track</asp:HyperLink>      
                </u>  </ItemTemplate>
              </asp:TemplateField>--%> 
          </Columns>
      </asp:GridView>
           
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gurpreetConnectionString %>" SelectCommand="SELECT * FROM [ImagesPath] WHERE ([Id] = @Id)" >
          <SelectParameters>
        <asp:SessionParameter Name="Id" SessionField="id" Type="Int32" />

              </SelectParameters> 

           </asp:SqlDataSource>
  </article>
  <div class="af clear"></div>
</div>
    </form>
<footer>
  <div class="footerlink">
    <p class="lf">Copyright &copy; 2014 f">Copyright &copy; 2014 <a href="#">SiteName</a> - All Rights Reserved</p>
    <p class="rf"><a href="">Design and Development by The Singh Production.</a> by <a href=""></a></p>
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
