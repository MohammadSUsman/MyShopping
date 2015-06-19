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
    public partial class regis : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Researchbtn_Click(object sender, EventArgs e)
        {


            con.Open();
           if (!(Isvalid() || Emailtxt.Text.Equals("Admin@yahoo.com")))
                {
            
                //    // Response.Write("Wrong Detail");
                //    Response.Write("<script lanaguage='javascript'>var status=alert('wrong detail.')</script>");
              
                string q = "insert into [User] values('" + FNametxt.Text + "','" + LNametxt.Text + "','" + Emailtxt.Text + "','" + Pwdtxt.Text + "','" + CountryDropList.SelectedValue + "','" + Citytxt.Text + "','" + Zipcodetxt.Text + "','" + Phonetxt.Text + "','" + Addresstxt.Text + "')";


                cmd = new SqlCommand(q, con);

                cmd.ExecuteNonQuery();

                string p = "select UserId from [User] where Email='" + Emailtxt.Text + "'";

                cmd = new SqlCommand(p, con);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                int id = Int32.Parse(dt.Rows[0].ItemArray[0].ToString());
                Session["UserName"] = Emailtxt.Text;
                Session["id"] = id;

                //con.Close();
                if (Session["ss"] == null)
                {
                    Response.Redirect("FrontPage.aspx");

                }
                else
                {
                    Response.Redirect("Order.aspx");
                }
            }
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



            else
            {
                Response.Redirect("LogInPage.aspx");
            }

            con.Close();
            
            
            
            
            
            
            
           // con.Open();



            //string q = "insert into [User] values('" + FNametxt.Text + "','" + LNametxt.Text + "','" + Emailtxt.Text + "','" + Pwdtxt.Text + "','" + CountryDropList.SelectedValue + "','" + Citytxt.Text + "','" + Zipcodetxt.Text + "','" + Phonetxt.Text + "','" + Addresstxt.Text + "')";


            //cmd = new SqlCommand(q, con);

            //cmd.ExecuteNonQuery();

            //con.Close();

            //Response.Redirect("Order.aspx");
        }

        protected void Emailtxt_TextChanged(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(Emailtxt.Text))) {
                if (!(Isvalid() || Emailtxt.Text.Equals("Admin@yahoo.com")))
                {
                    lbl_message.Text = "UserName is avialable.";
                    lbl_message.ForeColor = System.Drawing.Color.Black;
                }
                else
                {
                    lbl_message.Text = "UserName is not avialable.";
                    lbl_message.ForeColor = System.Drawing.Color.Red;
                }
            }

        }

        private bool Isvalid()
        {
            bool isvalid = false;
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                string q = "select * from [User] where Email='" + Emailtxt.Text + "'";
                conn.Open();

                cmd = new SqlCommand(q, conn);

                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Close();
                    conn.Close();
                    return true;

                }
            }


            


            return isvalid;
        }
   
    }
}