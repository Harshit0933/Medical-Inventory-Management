using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace inventory1
{
    public partial class deshboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            lbl.ForeColor = System.Drawing.Color.Gray;
            lbl.Text = "Welcome    " + Session["Username"] ;
            Label1.ForeColor = System.Drawing.Color.DarkGray;
            Label1.Text = "MEDICAL MANAGEMENT SYSTEM";
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("inventory.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session["Username"] = null;
            Session.Clear();
            Response.Redirect("login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}