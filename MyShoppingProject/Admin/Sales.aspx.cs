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
    public partial class Sales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Admin"] == null)
            {
                Response.Redirect("~/LogInPage.aspx");
            }
            else
            {
                GetQuantity();
            }
        }
        public void GetQuantity()
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            DataTable dt = new DataTable();
            con2.Open();
            string query_to_pass = "SELECT  [User].FirstName , [User].Email as Email_Address, [User].Country , [Order].Name as Product_Name , [Order].Quantity, [Order].Price as Unit_Price  , [Order].Date   From [Order] INNER JOIN [User] ON [User].UserId = [Order].UserId ORDER BY [Order].Date ";
            
            SqlCommand cmd2 = new SqlCommand(query_to_pass, con2);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Visible = false;
            }
            else
            {
                Label1.Visible = true;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con2.Close();


        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = 2;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SearchByName();

        }
        public void SearchByName()
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            DataTable dt = new DataTable();
            con2.Open();
            string query_to_pass = "SELECT  [User].FirstName , [User].Email as Email_Address, [User].Country , [Order].Name as Product_Name , [Order].Quantity, [Order].Price as Unit_Price  , [Order].Date   From [Order] INNER JOIN [User] ON [User].UserId = [Order].UserId  WHERE [Order].Name= '"+txtSearchbyName.Text+"'ORDER BY [Order].Date ";

            SqlCommand cmd2 = new SqlCommand(query_to_pass, con2);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Visible = false;
            }
            else
            {
                Label1.Visible = true;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con2.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SearchByCountry();
        }

        public void SearchByCountry()
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            DataTable dt = new DataTable();
            con2.Open();
            string query_to_pass = "SELECT  [User].FirstName , [User].Email as Email_Address, [User].Country , [Order].Name as Product_Name , [Order].Quantity, [Order].Price as Unit_Price  , [Order].Date   From [Order] INNER JOIN [User] ON [User].UserId = [Order].UserId  WHERE [User].Country= '" + txtSearchbyCountry.Text + "'ORDER BY [Order].Date ";

            SqlCommand cmd2 = new SqlCommand(query_to_pass, con2);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Visible = false;
            }
            else
            {
                Label1.Visible = true;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con2.Close();


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SearchByDate();

        }
        public void SearchByDate()
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            DataTable dt = new DataTable();
            con2.Open();
            string query_to_pass = "SELECT  [User].FirstName , [User].Email as Email_Address, [User].Country , [Order].Name as Product_Name , [Order].Quantity, [Order].Price as Unit_Price  , [Order].Date   From [Order] INNER JOIN [User] ON [User].UserId = [Order].UserId  WHERE [Order].Date= '" + txtDate.Text + "'ORDER BY [Order].Date ";

            SqlCommand cmd2 = new SqlCommand(query_to_pass, con2);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Visible = false;
            }
            else
            {
                Label1.Visible = true;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con2.Close();


        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            SearchBetweenDates();
        }
        public void SearchBetweenDates()
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            DataTable dt = new DataTable();
            con2.Open();
            string query_to_pass = "SELECT  [User].FirstName , [User].Email as Email_Address, [User].Country , [Order].Name as Product_Name , [Order].Quantity, [Order].Price as Unit_Price  , [Order].Date   From [Order] INNER JOIN [User] ON [User].UserId = [Order].UserId  WHERE [Order].Date BETWEEN '"+txtStartDate.Text+"' AND  '"+txtEndDate.Text+"' ORDER BY [Order].Date ";

            SqlCommand cmd2 = new SqlCommand(query_to_pass, con2);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Visible = false;
            }
            else
            {
                Label1.Visible = true;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con2.Close();


        }
    }
}