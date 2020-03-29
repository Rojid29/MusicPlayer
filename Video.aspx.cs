using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Video : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    private void BindGrid()
    {
        string strConnString = ConfigurationManager.ConnectionStrings["gurpreet"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand("select * from vid_path",con);
                
                con.Open();
                DataList1.DataSource = cmd.ExecuteReader();
                DataList1.DataBind();
                con.Close();
           
    }
    


    protected void gvImages_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
