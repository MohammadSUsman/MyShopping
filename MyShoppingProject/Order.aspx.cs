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
    public partial class Order : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        int rows;
        DataTable tb;
        DataTable shop;
        protected void Page_Load(object sender, EventArgs e)
        {





            con.Open();

            if (Session["ss"]== null){
                Response.Redirect("FrontPage.aspx");
            }
         


             tb = (DataTable)Session["ss"];
             rows = tb.Rows.Count;
             shop = new DataTable("Table"); // create a dataTable name shop ["Table"] always be same.

          //   declare the columns name according to your need.
            
            shop.Columns.Add(new DataColumn("Name", Type.GetType("System.String")));
            
            shop.Columns.Add(new DataColumn("Price", Type.GetType("System.String")));
            shop.Columns.Add(new DataColumn("Quantity", Type.GetType("System.String")));
            shop.Columns.Add(new DataColumn("total", Type.GetType("System.Decimal")));

            //shop.Columns["total"].Expression = "Price * Quantity";

            Decimal total = 0;

            for (int i = 0; i < rows; i++)
            {
                var id = tb.Rows[i][0];
                var Name = tb.Rows[i][1];
                var Price = tb.Rows[i][3];
                var Quantity = tb.Rows[i][4];
                String Subtotal = tb.Rows[i][5].ToString();
                var row = shop.NewRow();



                row[0] = Name;
                row[1] = Price;
                row[2]=Quantity;
                row[3]=Subtotal;
                total +=Int32.Parse(Subtotal);
                shop.Rows.Add(row);
            }
            Label1.Text = total.ToString();
        GridView1.DataSource = shop;
           GridView1.DataBind();

           con.Close();
        
        }

        protected void Orderbtn_Click(object sender, EventArgs e)
        {
            con.Open();

            for (int i = 0; i < rows; i++)
            {
                var id = tb.Rows[i][0];
                var Name = tb.Rows[i][1];
                var Price = tb.Rows[i][3];
                var Quantity = tb.Rows[i][4];
                int selected_Quantity = (int)Quantity;
                int userid =Convert.ToInt32( Session["id"]);
                DateTime datetime = DateTime.Now.Date;
                string name_to_pass = (string)Name;
                int Quantity_value = GetQuantity(name_to_pass);
                int Updated_Quantity = Quantity_value - selected_Quantity;
                Update_Inventory(name_to_pass,Updated_Quantity);
                SqlCommand cmd = new SqlCommand("insert into [Order] values('" + id + "','" + userid + "','" + Name + "','" + Price + "','" + Quantity + "','" + datetime + "')", con);
                cmd.ExecuteNonQuery();
                
            }

            con.Close();

            Session["ss"] = null;

            Response.Redirect("FinishedPage.aspx");
        
        }
        public int GetQuantity(string product_name)
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            DataTable dt = new DataTable();
            con2.Open();
            string query_to_pass = "select Quantity from Products where Name='"+product_name+"'";
            SqlCommand cmd2 = new SqlCommand(query_to_pass , con2);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            sda.Fill(dt);
            int Quantity_to_return = int.Parse((dt.Rows[0].ItemArray[0].ToString()));
            con2.Close();
            return Quantity_to_return;
        
        }

        public void Update_Inventory(string product_name , int quantity)
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con2.Open();
            string query_to_pass = "UPDATE Products set Quantity = '"+quantity+"'where Name='" + product_name + "'";
            SqlCommand cmd2 = new SqlCommand(query_to_pass, con2);

            cmd2.ExecuteNonQuery();

            con2.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrontPage.aspx");
        }

       
    }
}