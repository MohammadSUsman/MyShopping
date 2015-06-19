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
    public partial class WebForm1 : System.Web.UI.Page
    {
        int Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.QueryString["ProductId"].ToString()))
            {
                Response.Redirect("Manage_Inventory.aspx");
            }
            else
            {
                 Id = int.Parse(Request.QueryString["ProductId"].ToString());
                GetQuantity(Id);
            }
        }
        public void GetQuantity(int Product_Id)
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            DataTable dt = new DataTable();
            con2.Open();
            string query_to_pass = "select Quantity, Name from Products where ProductId='"+Product_Id+"'";
            SqlCommand cmd2 = new SqlCommand(query_to_pass, con2);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            sda.Fill(dt);
            Label1.Text = dt.Rows[0].ItemArray[1].ToString();
            Label2.Text = dt.Rows[0].ItemArray[0].ToString();
           
            con2.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdateStock();
            Response.Redirect("Manage_Inventory.aspx");
        }
        public void UpdateStock()
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            
            con2.Open();
            string query_to_pass = "Update Products  set Quantity ='"+int.Parse(TextBox2.Text)+"'where ProductId='" + Id + "'";
            SqlCommand cmd2 = new SqlCommand(query_to_pass, con2);

            cmd2.ExecuteNonQuery();

            con2.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Inventory.aspx");
        }
    }
}