using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
public partial class Comments : System.Web.UI.Page
{
     SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gurpreet"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindRepeaterData();
        }
    }
    // This button click event is used to insert comment details and bind data to repeater control
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        {
            // allow only 500 characters
            var maxLength = 110;
            if (txtComment.Text.Trim().Length > maxLength)
            {
                Label3.Text = string.Format("*",
                maxLength);

                return;
            }
            // go ahead and write code to save the data
        }

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Repeater_Table (UserName,Subject,Comment,PostedDate) values(@userName,@subject,@comment,@postedDate)", con);
        cmd.Parameters.AddWithValue("@userName", txtName.Text);
        cmd.Parameters.AddWithValue("@subject", txtSubject.Text);
        cmd.Parameters.AddWithValue("@comment", txtComment.Text);
        cmd.Parameters.AddWithValue("@postedDate", DateTime.Now);
        cmd.ExecuteNonQuery();
        con.Close();
        txtName.Text = string.Empty;
        txtSubject.Text = string.Empty;
        txtComment.Text = string.Empty;
        BindRepeaterData();
    }
    //Bind Data to Repeater Control
    protected void BindRepeaterData()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Repeater_Table Order By PostedDate desc", con);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
      
        RepDetails.DataBind();
        con.Close();
    }
}