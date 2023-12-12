using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace inventory1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Username"] != null)
            {
                Response.Redirect("dashboard.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=login;Integrated Security=True");
            con.Open();
            //string userid = txtu_name.Text;
            //string password = txtpassword.Text;
            SqlCommand cmd = new SqlCommand("select Username,Password from login12 where Username='" + txtu_name.Text + "'and Password='" + txtpassword.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (txtu_name.Text.Equals("") || txtpassword.Text.Equals(""))
            {
                lab2.Text = "Information must Required!!";
            }
            else if (dt.Rows.Count > 0)
            {

                Session["Username"] = txtu_name.Text.Trim();
                Response.Redirect("dashboard.aspx");
            }
            else
            {
                lab2.Text = "Invalid Username or Password";
            }
            
        con.Close();
        }
        protected void signup_Click(object sender, EventArgs e)
        {
            Session["Username"] = txtu_name.Text.Trim();
            Response.Redirect("signup.aspx");
        }
    }
}