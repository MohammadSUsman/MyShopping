using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MyShoppingProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=ShoppingDatabase;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            //con.Open();
            //string query = "Select * from Products where Name like '%" + Searchtxt.Text + "%' or CategoryId like '%" + Searchtxt.Text + "%'  or BrandId like '%" + Searchtxt.Text + "%'";

            //SqlCommand cmd = new SqlCommand(query, con);
            //DataTable dt = new DataTable();
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //sda.Fill(dt);
            //con.Close();
           
            //DataList asd = (DataList)ContentPlaceHolder2.FindControl("SearchDatalist");
            //asd.DataSource = dt;
            //asd.DataBind();
            Session["Search"] = Searchtxt.Text;
            Response.Redirect("SearchPage.aspx");
           // Response.Redirect("SearchPage1.aspx?Id="+Request.QueryString + Searchtxt.Text);

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["UserName"] = "";
            Session["ss"] = "";
            Response.Redirect("FrontPage.aspx");
        }
    }
}