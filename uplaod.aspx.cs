using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class uplaod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //Get Filename from fileupload control
        string filename = Path.GetFileName(fileuploadimages.PostedFile.FileName);
        //Save images into Images folder
        fileuploadimages.SaveAs(Server.MapPath("Images1/" + filename));
        //Getting dbconnection from web.config connectionstring
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gurpreet"].ToString());
        //Open the database connection
        con.Open();
        //Query to insert images path and name into database
        SqlCommand cmd = new SqlCommand("Insert into ImagesPath(ImageName,ImagePath,Price) values(@ImageName,@ImagePath,@Price)", con);
        //Passing parameters to query
        cmd.Parameters.AddWithValue("@ImageName", filename);
        cmd.Parameters.AddWithValue("@ImagePath", "Images1/" + filename);

        cmd.Parameters.AddWithValue("@Price",TextBox1.Text);
       cmd.ExecuteNonQuery();

        //Close dbconnection
        con.Close();
     
    }
    protected void btnSubmits_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gurpreet"].ConnectionString);

        string filename = Path.GetFileName(fileuploadimages2.PostedFile.FileName);
        fileuploadimages2.SaveAs(Server.MapPath("songs/" + filename));
        SqlCommand cmd = new SqlCommand("insert into vid_path(Name, ContentType, Data) values (@Name, @ContentType, @Data)", con);
        cmd.Parameters.AddWithValue("@Name", Path.GetFileName(fileuploadimages2.PostedFile.FileName));
        cmd.Parameters.AddWithValue("@ContentType", "video/mp4");
        cmd.Parameters.AddWithValue("@Data", "songs/"+filename);
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

       // Response.Redirect("Video.aspx");
        ////Get Filename from fileupload control
        //string filename = Path.GetFileName(fileuploadimages2.PostedFile.FileName);
        ////Save images into Images folder
        //fileuploadimages.SaveAs(Server.MapPath("Imageshhhh/" + filename));
        ////Getting dbconnection from web.config connectionstring
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gurpreet"].ToString());
        ////Open the database connection
        //con.Open();
        ////Query to insert images path and name into database
        //SqlCommand cmd = new SqlCommand("Insert into ImagesPath(ImageName,ImagePath) values(@ImageName,@ImagePath)", con);
        ////Passing parameters to query
        //cmd.Parameters.AddWithValue("@ImageName", filename);
        //cmd.Parameters.AddWithValue("@ImagePath", "Imageshhhh/" + filename);
        //cmd.ExecuteNonQuery();
        ////Close dbconnection
        //con.Close();
    }

}
