using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace inventory1
{
    public partial class stock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            lbl.ForeColor = System.Drawing.Color.Gray;
            lbl.Text = "Welcome    " + Session["Username"];
            Label1.ForeColor = System.Drawing.Color.DarkGray;
            Label1.Text = "MEDICAL MANAGEMENT SYSTEM";
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=login;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT SUM(stock) FROM addmedicine", con);
            cmd.ExecuteNonQuery();
            Label2.Text = "No Of Medicine In Stock :  " + cmd.ExecuteScalar().ToString();
            con.Close();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT SUM(Tprice) FROM addmedicine", con);
            cmd1.ExecuteNonQuery();
            Label3.Text = "Total Stock In Amount :  " + cmd1.ExecuteScalar().ToString();
            con.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}