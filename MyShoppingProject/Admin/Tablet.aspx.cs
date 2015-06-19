using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MyShoppingProject.Admin
{
    public partial class Tablet : System.Web.UI.Page
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
            con.Open();

            string q = "insert into Tablet values('" + Producttxt.Text + "','" + Processortxt.Text + "','" + Ramtxt.Text + "','" + Storagetxt.Text + "','" + Cameratxt.Text + "','" + Bluetoothtxt.Text + "','" + Wifitxt.Text + "','" + Sizetxt.Text + "','" + Batterytxt.Text + "','" + Operatingsystemtxt.Text + "','" + Batterycelltxt.Text + "','" + Colortxt.Text + "','" + Screentxt.Text + "','" + Porttxt.Text + "')";


            cmd = new SqlCommand(q, con);

            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("ViewProducts.aspx");
        }
    }
}