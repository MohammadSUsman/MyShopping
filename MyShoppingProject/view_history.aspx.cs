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
    public partial class view_history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Label1.Visible = true;
            }
            else
            {
                DataTable abc = new DataTable();
                abc = gethistory();
                if (!(abc.Rows.Count > 0))
                {
                    Label1.Text = "you don't have made any transaction yet.";
                    Label1.Visible = true;
                }
                else
                {
                    Label1.Visible = false;
                    GridView1.DataSource = abc;
                    GridView1.DataBind();
                }
            }
        }
        public DataTable gethistory()
        {
            DataTable dt = new DataTable();
           int value_to_pick= (int)Session["id"];
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string query = "select OrderId , Name ,Price as UnitPrice, Quantity,Date  from [Order] where UserId ='"+value_to_pick+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);// for fetch the records acc. to condition

            return dt;
        }
    }
}