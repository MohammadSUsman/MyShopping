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
    public partial class log : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

            Error_message2.Text = "";
        }

        public bool Admin(String email, String pwd)
        {
            bool a = false;

            con.Open();

            cmd = new SqlCommand("select Password from AdminLogIn where Email ='" + email + "'", con);
            dr = cmd.ExecuteReader();
            if (!dr.Read())
            {
                // Response.Write("Wrong Detail");
               // Response.Write("<script lanaguage='javascript'>var status=alert('wrong detail.')</script>");
            }
            else
            {
                if (dr[0].ToString() == pwd)
                {
                    dr.Close();
                   // string p = "select UserId from  AdminLogIn where Email='" + Emailtxt.Text + "'";
                     a =true;

                    //cmd = new SqlCommand(p, con);
                    //DataTable dt = new DataTable();
                    //SqlDataAdapter da = new SqlDataAdapter(cmd);
                    //da.Fill(dt);
                    //int id = Int32.Parse(dt.Rows[0].ItemArray[0].ToString());

                    Session["Admin"] = "Admin";
                    //Session["id"] = id;

                    //Response.Redirect("Order.aspx");
                }
                else

                //Response.Write("Wrong Password");
                {// Response.Write("<script lanaguage='javascript'>var status=alert('wrong password.')</script>"); 
                }
            }

            con.Close();

            return a;
        }




        public bool user(String email, String pwd)
        {
            bool a = false;

            con.Open();

            cmd = new SqlCommand("select Password from [User] where Email ='" + email + "'", con);
            dr = cmd.ExecuteReader();
            if (!dr.Read())
            {
                // Response.Write("Wrong Detail");
                
                Error_message2.Text = "Wrong detail";
                 Response.Write("<script lanaguage='javascript'>$('Error_message').innerHtml('Wrong Details ...check it again.');</script>");
            }
            else
            {
                if (dr[0].ToString() == pwd)
                {
                    dr.Close();
                     string p = "select UserId from  [User] where Email='" + email+ "'";
                    a = true;

                    cmd = new SqlCommand(p, con);
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    int id = Int32.Parse(dt.Rows[0].ItemArray[0].ToString());

                    Session["UserName"] = Emailtxt.Text;
                    Session["id"] = id;

                   // Response.Redirect("Order.aspx");
                }
                else

                //Response.Write("Wrong Password");
                {
                   
                    Error_message2.Text = "Try with the correct Informations.";
                   // Response.Write("<script lanaguage='javascript'>$('Error_message').innerHtml('Wrong Password ...check it again.');</script>"); 
               
                }
            }

            con.Close();

            return a;
        }





        protected void Button1_Click(object sender, EventArgs e)
        {

            //string p = "select UserId from [User] where Email='" + Emailtxt.Text + "'";

            //cmd = new SqlCommand(p, con);
            //DataTable dt = new DataTable();
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //da.Fill(dt);
            //int id = Int32.Parse(dt.Rows[0].ItemArray[0].ToString());

            //Session["UserName"] = null;
            //Session["id"] =id  ;


           


            //con.Open();
            //cmd = new SqlCommand("select Password from [User] where Email ='" + Emailtxt.Text + "'", con);
            //dr = cmd.ExecuteReader();
            //if (!dr.Read())
            //{
            //    // Response.Write("Wrong Detail");
            //    Response.Write("<script lanaguage='javascript'>var status=alert('wrong detail.')</script>");
            //}
            //else
            //{
            //    if (dr[0].ToString() == Passwordtxt.Text)
            //    {
            //        dr.Close();
            //        string p = "select UserId from [User] where Email='" + Emailtxt.Text + "'";

            //        cmd = new SqlCommand(p, con);
            //        DataTable dt = new DataTable();
            //        SqlDataAdapter da = new SqlDataAdapter(cmd);
            //        da.Fill(dt);
            //        int id = Int32.Parse(dt.Rows[0].ItemArray[0].ToString());

            //        Session["UserName"] ="select * from User" ;
            //        Session["id"] = id;

            //        Response.Redirect("Order.aspx");
            //    }
            //    else

            //    //Response.Write("Wrong Password");
            //    { Response.Write("<script lanaguage='javascript'>var status=alert('wrong password.')</script>"); }
            //}

            //con.Close();



            String email1 = Emailtxt.Text;
            String pwd1 = Passwordtxt.Text;
            if (email1 =="" || pwd1 == "")
            {
                Error_message2.Text = "Please fill both the fields.";
            }

            else if (Admin(email1, pwd1))
            {
                Session["UserName"] = email1;
                Response.Redirect("Admin/ViewProducts.aspx");
            }

            else if(user(email1,pwd1))
            {
                if (Session["ss"] == null)
                {
                    Response.Redirect("FrontPage.aspx");

                }
                else
                {
                    Response.Redirect("Order.aspx");
                }
                //Response.Redirect("Order.aspx");
            }



            
        }

        protected void Emailtxt_TextChanged(object sender, EventArgs e)
        {

        }
    }
}