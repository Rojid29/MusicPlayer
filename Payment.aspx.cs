using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
public partial class Payment : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlCommand cmd = null;

    SqlDataReader drcurrent = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 2012; i <= 2020; i++)
        {
            DropDownList3.Items.Add(i.ToString());
        }
        packageprice.Text = Convert.ToString(Session["price"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        DateTime date1 = DateTime.Now.Date;
            string datenow = date1.ToString("MMMM dd, yyyy");
            DateTime time = DateTime.Now;
            string timenow = time.ToShortTimeString();
            

           
            string package = Convert.ToString(Session["price"]);
            string expire = DropDownList2.SelectedItem.Text + "-" + DropDownList3.SelectedItem.Text;
            string str = ConfigurationManager.ConnectionStrings["gurpreet"].ConnectionString;
            conn = new SqlConnection(str);
            cmd = new SqlCommand("insert into payment values('" + package + "','" + DropDownList1.SelectedItem.Text + "','" + cardnum.Text + "','" + holdername.Text + "','" + expire + "','" + cvnum.Text + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Download.aspx");
        //if(rs != 0)
                //{
                //    ScriptManager.RegisterStartupScript(this,this.GetType(),"alert","alert('Payment made');",true);
                //}

           // conn.Open();
         //   cmd = new SqlCommand("select  FullName,Email from UsersProfiles where UserName=@username ", conn);
         //   cmd.Parameters.AddWithValue("@username", username);
         //   drcurrent = cmd.ExecuteReader();
         //   drcurrent.Read();
         //   string name = (string)drcurrent["FullName"];
         //   string email = (string)drcurrent["Email"];
          //  drcurrent.Close();
           // conn.Close();

            // mainling process
           // MailMessage mail = new MailMessage();
         //   mail.To.Add(email);
         //   mail.From = new MailAddress("airticketing222@gmail.com");
          //  mail.Subject = "THANK YOU FOR USING AIRLINE RESERVATION SERVICES";
            //booking message
          //  mail.Body = "Hello" + " " + name + "," + "<br/>" + "<p>" + "Thank you for booking with AIRLINE RESERVATION SERVICES. This is your E-ticket.We wishes you a pleasant journey and hope to serve you again in the future." + "</p>" + "<br/>" + "<table>" + "<tr><td>" + "Booked on:" + datenow + "  " + timenow + "</td></tr>" + "<tr><td>" + "Booking Refrence Id:" + Session["bookingId"].ToString() + "</td></tr>" + "<tr><td>" + "Total price:" + package + "</td></tr>" + "<tr><td>" + "Passengers:" + Session["psngrs"].ToString() + "</td></tr>" + "<tr></tr>" + "<tr><td>" + "Depart Date:" + " " + dpdate + "</td></tr> " + "</table> " + "<br/>" + "All passengers must present valid identification<br/>" + "In case of cancellations less than 6 hours before Date We are not responsible for any losses if the request is recieved less than 6 hours before departure date.<br/>Thank you for selecting us as your choice of reservation website. ";
           // mail.IsBodyHtml = true;
           // SmtpClient smtp = new SmtpClient();
            //smtp.Host = "smtp.gmail.com";
            //smtp.Port = 587;

           // smtp.Credentials = new System.Net.NetworkCredential("airticketing222@gmail.com", "dreamtechlabs");
           // smtp.EnableSsl = true;



          //  try
         //   {
          //      smtp.Send(mail);
           //     Response.Write("<script>alert('Payment made, mail sent to your id...')</script>");

        //    }
           // catch (Exception ex)
           // {
           //     Response.Write(ex.ToString());
          //  }
    }
}
    
