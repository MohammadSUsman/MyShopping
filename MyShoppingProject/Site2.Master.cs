using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyShoppingProject
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
           
        }

        protected void LogOut(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Session["ss"] = null;
            Response.Redirect("FrontPage.aspx");
        }

        protected void Searchbtn_Click(object sender, EventArgs e)
        {
            Session["Search"] = Searchtxt.Text;
            
            Response.Redirect("SearchPage.aspx");
        }
    }
}