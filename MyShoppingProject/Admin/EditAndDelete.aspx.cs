using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyShoppingProject.Admin
{
    public partial class EditAndDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("~/LogInPage.aspx");
            }

            if (Request.QueryString["ProductId"] != null)
            {
                Producttxt.Text = Request.QueryString["ProductId"];
                Producttxt.Visible = false;
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProducts.aspx");

        }
    }
}