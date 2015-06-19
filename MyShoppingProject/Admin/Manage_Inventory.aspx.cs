using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace MyShoppingProject.Admin
{
    public partial class Manage_Inventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("~/LogInPage.aspx");
            }
           // GetQuantity();
        }
        public void GetQuantity()
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            DataTable dt = new DataTable();
            con2.Open();
            string query_to_pass = "select ProductId, Name ,Quantity from Products";
            SqlCommand cmd2 = new SqlCommand(query_to_pass, con2);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con2.Close();


        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // determine the value of the UnitsInStock field
                int unitsInStock =
                 Convert.ToInt32(DataBinder.Eval(e.Row.DataItem,
                 "Quantity"));
                if (unitsInStock < 10)
                    // color the background of the row yellow
                    e.Row.BackColor = System.Drawing.Color.Yellow;
            }

        }
    }
}