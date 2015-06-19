using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MyShoppingProject;
using System.Configuration;

namespace MyShoppingProject.Admin
{
    public partial class ProductsAdd : System.Web.UI.Page
    {
        //SqlConnection con; // =new SqlConnection ( ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        //con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;

        //SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\.mdf;Integrated Security=True;User Instance=True" );

       // string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("~/LogInPage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                        con.Open();

            cmd = new SqlCommand("select * from Products where Name='" + Nametxt.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {

                Response.Write("<script lanaguage='javascript'>var status=alert('This record already exists !!!')</script>");
                Nametxt.Text = "";
                Pricetxt.Text = "";
                Usbtxt.Text = "";
                Warrantytxt.Text = "";
                Quantitytxt.Text = "";

            }

            else
            {
                dr.Close();

                //string s=null;

                //if (CategoryDropDown.SelectedValue == Convert.ToString(1))
                //{
                //    s = @"~/Images/Laptop/" + FileUpload1.FileName;
                //    FileUpload1.PostedFile.SaveAs(Server.MapPath(s));

                //    //Response.Redirect("LaptopSpecification.aspx?pid=" + GridView1 + Request.QueryString["pid"]);
                //}
                //else if (CategoryDropDown.SelectedValue == Convert.ToString(2))
                //{
                //   s = @"~/Images/Mobile/" + FileUpload1.FileName;
                //    FileUpload1.PostedFile.SaveAs(Server.MapPath(s));
                //}

                //else if (CategoryDropDown.SelectedValue == Convert.ToString(3))
                //{
                //    s = @"~/Images/Tablet/" + FileUpload1.FileName;
                //    FileUpload1.PostedFile.SaveAs(Server.MapPath(s));
                //}

                //else if (CategoryDropDown.SelectedValue == Convert.ToString(4))
                //{
                //    s = @"~/Images/Ipod/" + FileUpload1.FileName;
                //    FileUpload1.PostedFile.SaveAs(Server.MapPath(s));
                //}

                //else if (CategoryDropDown.SelectedValue == Convert.ToString(5))
                //{
                //    s = @"~/Images/Camera/" + FileUpload1.FileName;
                //    FileUpload1.PostedFile.SaveAs(Server.MapPath(s));
                //}

                string s = @"~/Images/Products/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(s));

                string q = "insert into Products values('" + CategoryDropList.SelectedValue + "','" + BrandDropList.SelectedValue + "','" + Nametxt.Text + "','" + Pricetxt.Text + "','" + Usbtxt.Text + "','" + Warrantytxt.Text + "','" + s + "','" + Quantitytxt.Text + "')";


                    cmd = new SqlCommand(q, con);

                    // dr.Close();
                    cmd.ExecuteNonQuery();

                    string p = "select ProductId from Products where Name='" + Nametxt.Text + "'";

                    cmd = new SqlCommand(p, con);
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);

                    string a = dt.Rows[0].ItemArray[0].ToString();


                    cmd.ExecuteNonQuery();

                    if (CategoryDropList.SelectedValue == Convert.ToString(1))
                {
                    Response.Redirect("Laptop.aspx?ProductId=" + a);

                    //Response.Redirect("LaptopSpecification.aspx?pid=" + GridView1 + Request.QueryString["pid"]);
                }

                    else if (CategoryDropList.SelectedValue == Convert.ToString(2))
                {
                    Response.Redirect("Mobile.aspx?ProductId=" + a);
                }

                    else if (CategoryDropList.SelectedValue == Convert.ToString(3))
                {
                    Response.Redirect("Tablet.aspx?ProductId=" + a);
                }

                    else if (CategoryDropList.SelectedValue == Convert.ToString(4))
                {
                    Response.Redirect("Ipod.aspx?ProductId=" + a);
                }

                    else if (CategoryDropList.SelectedValue == Convert.ToString(5))
                {
                    Response.Redirect("Camera.aspx?ProductId=" + a);
                }

                else
                {
                    Response.Write("Something wrong");
                }





            }


            con.Close();

        }
        
    }
}