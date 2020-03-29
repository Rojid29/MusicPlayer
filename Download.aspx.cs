using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Data;
public partial class Download : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["gurpreet"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
     //  if (!IsPostBack)
     //   {
        //    BindGridviewData();
       // }
    }
    protected void gvImages_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
    
  //  private void BindGridviewData()
  //  {
  //     SqlConnection con = new SqlConnection(strcon);
   //     SqlCommand cmd = new SqlCommand();
     //  cmd.CommandText = "select * from imagesPath";
     //   cmd.Connection = con;
    //   con.Open();
    //    gvImages.DataSource = cmd.ExecuteReader();
      
   //    con.Close();


  //  }

  
  //  protected void lnkDownload_Click(object sender, EventArgs e)
  //  {
    //    LinkButton lnkbtn = sender as LinkButton;
    //    GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
    //    int fileid = Convert.ToInt32(gvImages.DataKeys[gvrow.RowIndex].Value.ToString());
       //string name, type;
     //   using (SqlConnection con = new SqlConnection(strcon))
     //   {
    //        using (SqlCommand cmd = new SqlCommand())
     //       {
      //          cmd.CommandText = "select ImageName, ImagePath, Price from imagesPath where Id=@Id";
       //        cmd.Parameters.AddWithValue("@id", fileid);
         //       cmd.Connection = con;
          //      con.Open();
           //     SqlDataReader dr = cmd.ExecuteReader();
            //    if (dr.Read())
              //  {
                    
                 //   Response.AddHeader("Content-Disposition", "attachment;filename=\"" + dr["ImageName"] + "\"");
                //    Response.BinaryWrite((byte[])dr["ImagePath"]);
               //     Response.End();
              //  }
          //  }
       // }
  //  }


}