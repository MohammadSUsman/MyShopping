using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MyShoppingProject
{
    public partial class ImageEdit : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Admin"] == null)
            {
                Response.Redirect("~/LogInPage.aspx");
            }
            if (Request.QueryString["ProductId"] != null)
            {
                Producttxt.Text = Request.QueryString["ProductId"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = @"~/Images/Products/" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(s));


            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Products  SET  Image= '" + s + "'  where ProductId ='" + Producttxt.Text + "'", con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("EditAndDelete.aspx?ProductId=" + Producttxt.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProducts.aspx");
        }
    }
}