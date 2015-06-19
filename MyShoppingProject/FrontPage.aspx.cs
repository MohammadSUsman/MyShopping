using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace MyShoppingProject
{
    public partial class FrontPage : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        
        protected void Page_Load(object sender, EventArgs e)
        {

            //con.Open();
            //string query ="select p.ProductId as ProductId,c.CategoryName as CategoryName,b.BrandName,p.Name as Name,p.Price as Price,p.UsbType,p.Warranty,p.Image from Products p ,Category c,Brand b where c.CategoryId =p.CategoryId and p.BrandId = b.BrandId ";//SELECT ProductId,CategoryId,BrandId, Name,Price,Image,Warranty FROM [Products] where Name='HP ENVY M6-1203TU' or Name='Dell Inspiron 5421-i7' or Name='Dell Inspiron N5521' or Name='Nokia Asha 308' or Name='HP Pavilion G6-2287sx' or Name='Dell Vostro'or Name='HP ProBook 6470b' or Name='HP ProBook 4530s' or Name='Dell Latitude E6230'";
                            

            //SqlCommand cmd = new SqlCommand(query, con);
            //DataTable dt = new DataTable();
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //sda.Fill(dt);
            //con.Close();
            //DataList1.DataSource = dt;
            
            //DataList1.DataBind();

        }
    }
}