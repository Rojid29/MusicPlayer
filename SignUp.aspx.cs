using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     
    protected void Button1_Click1(object sender, EventArgs e)
    {
         SqlConnection con = null;
        SqlCommand cmd = null;


        string str = ConfigurationManager.ConnectionStrings["gurpreet"].ConnectionString;

        string Querys = "insert into registration values(@UserName,@Country,@Gender,@EMailId,@Password,@ConfirmPassword)";
        con = new SqlConnection(str);
        cmd = new SqlCommand(Querys, con);
        cmd.Parameters.AddWithValue("@UserName", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Country", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Gender", TextBox3.Text);
        cmd.Parameters.AddWithValue("@EMailId", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
        cmd.Parameters.AddWithValue("@ConfirmPassword", TextBox6.Text);
        




        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Login.aspx");
    }
    }

    
