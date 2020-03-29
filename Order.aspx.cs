using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

public partial class Order : System.Web.UI.Page
{
      
    protected void Page_Load(object sender, EventArgs e)
    {
       
       if (Session["id"] != null && Session["price"] != null)
        {
            lblmsg8.Text = Session["id"].ToString();
            Label2.Text = Session["price"].ToString();

           Label1.Text= Session["song_name"].ToString();
        }

        else
        {
            Response.Redirect("Audio.aspx");
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
}
    