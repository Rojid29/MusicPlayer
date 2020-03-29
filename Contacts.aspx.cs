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
public partial class Contacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["gurpreet"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("insert into Contacts values(@Name,@EMail,@City,@Message)", con);
        cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@EMail", TextBox2.Text);
        cmd.Parameters.AddWithValue("@City", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Message", TextBox4.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
        con.Close();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
    }
}