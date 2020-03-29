<%@ Page Language="C#" AutoEventWireup="true" CodeFile="playlist.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>


 <html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Save Images In Folder and Display Images in Gridview from folder</title>
<style type="text/css">
.Gridview
{
font-family:Verdana;
font-size:10pt;
font-weight:normal;
color:black;
}
</style>
</head>
<body>
<form id="form1" runat="server">

<div>
<asp:GridView runat="server" ID="gvImages" AutoGenerateColumns="False" DataSourceID="sqldataImages" CssClass="Gridview" HeaderStyle-BackColor="#61A6F8" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="20" BackImageUrl="~/pic/images1.jpg" OnSelectedIndexChanged="gvImages_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="White"  />
<Columns>

     <asp:TemplateField>
            <ItemTemplate>

                <asp:Image ID="Image1" class="fancyzoom"  runat="server" Width="24" Height="24" ImageUrl="~/pic/a.jpg" /><br />
               </ItemTemplate>
     </asp:TemplateField>
  <asp:HyperLinkField DataTextField="ImageName" DataNavigateUrlFields="ImagePath" ControlStyle-ForeColor="#000099" ControlStyle-Font-Bold="false"  />  
     <asp:TemplateField>
            <ItemTemplate>
         
                <object type="application/x-shockwave-flash" data='dewplayer-vol.swf?mp3=<%# Eval("ImagePath") %>'
                    width="240" height="20" id="dewplayer">
                    <param name="wmode" value="transparent" />
                    <param name="movie" value='dewplayer-vol.swf?mp3=<%# Eval("ImagePath") %>'/>
                </object>
              </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/pic/heart.jpg" Height="20" Width="20"    />   
                  
  </ItemTemplate>
     </asp:TemplateField>
</Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />

<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="sqldataImages" runat="server"  ConnectionString="<%$ConnectionStrings:dbconnection %>"
SelectCommand="select * from ImagesPath" >
</asp:SqlDataSource>
</div>
</form>
</body>
</html>
