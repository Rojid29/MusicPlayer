using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void gvImages_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void myclick(object sender, EventArgs e)
    {
        var lb = (LinkButton)sender;
        var row = (GridViewRow)lb.NamingContainer;
        if (row != null)
        {
            var lblRequestor = row.FindControl("lbl") as Label;
            var lblRequestor1 = row.FindControl("Label1") as Label;
            var lblRequestor2 = row.FindControl("Label2") as Label;
            if (lblRequestor != null || lblRequestor1 != null || lblRequestor2 != null)
            {
                //Get values
                string aa = lblRequestor.Text;
                string bb = lblRequestor1.Text;
                string cc = lblRequestor2.Text;

                Session["price"] = aa;

                Session["id"] = bb;

                Session["song_name"] = cc;

                Response.Redirect("Login.aspx");

            }
        }
    }

}






