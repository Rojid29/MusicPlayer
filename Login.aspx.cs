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
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  //*  protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
  //  {
   //     Response.Redirect("SignUp.aspx");
  //  }
 //   protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
 //   {
        
    //        if ((TextBox1.Text == "admin@gmail.com") && (TextBox2.Text == "admin1234"))
        //    {
        //        Response.Redirect("uplaod.aspx");
         //   }
          //  else
          //  {
           //     string str = ConfigurationManager.ConnectionStrings["gurpreet"].ConnectionString;
             //   SqlConnection conn = new SqlConnection(str);
              //  conn.Open();
              //  SqlCommand cmd = new SqlCommand("select * from registration where EMailId=@EMailId and Password=@Password", conn);
              //  cmd.Parameters.AddWithValue("@EMailId", TextBox1.Text);
              //  cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
              //  SqlDataReader dr = cmd.ExecuteReader();
    //
              //  if (dr.HasRows)
               // {
                //    Session["mykey"] = TextBox1.Text;
                //    Response.Redirect("about.aspx");

              //  }
               // else
             //   {
                    // Response.Redirect("message.aspx");

                  //  Response.Write("<script>alert('Invalid username or password');</script>");

              //  }

          //  }
   // }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if ((TextBox1.Text=="admin@gmail.com") && (TextBox2.Text=="admin1234"))
        {
            Response.Redirect("uplaod.aspx");
        }
        else 
        {
        string str = ConfigurationManager.ConnectionStrings["gurpreet"].ConnectionString;
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from registration where EMailId=@EMailId and Password=@Password", conn);
        cmd.Parameters.AddWithValue("@EMailId", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        
         if (dr.HasRows)
        {
            Session["mykey"] = TextBox1.Text;
            Response.Redirect("Order.aspx");

        }
        else
        {
           // Response.Redirect("message.aspx");

            Response.Write("<script>alert('Invalid username or password');</script>");

        }

    }
    }
 //   protected void LinkButton1_Click(object sender, EventArgs e)
   // {
   //     Response.Redirect("Contacts.aspx");
   // }
}
    
