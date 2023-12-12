using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace inventory1
{
    public partial class inventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            lbl.ForeColor = System.Drawing.Color.Gray;
            lbl.Text = "" + Session["Username"];
            Label1.ForeColor = System.Drawing.Color.DarkGray;
            Label1.Text = "MEDICAL MANAGEMENT SYSTEM";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("addmedicine.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("search11.aspx");
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("update.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("stock.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("bill.aspx");
        }
    }
}