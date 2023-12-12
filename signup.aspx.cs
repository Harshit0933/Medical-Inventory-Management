using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace inventory1
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;
            SqlConnection cnn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=login;Integrated Security=True");
            cnn.Open();
            
            if (txtuname.Text.Equals("") || txtpass.Text.Equals("") || txtrepass.Text.Equals("") || txtemail.Text.Equals("") || txtmobile.Text.Equals(""))
            {
                lab1.Text = "Information must Required!!";
            }
            else if (txtpass.Text == txtrepass.Text)
            {
                String sql = "Insert into login12(Username,Password,Repassword,Emailid,Phone) values('" + txtuname.Text + "','" + txtpass.Text + "','" + txtrepass.Text + "','" + txtemail.Text + "','" + txtmobile.Text + "')";
                cmd = new SqlCommand(sql, cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
                Response.Redirect("login.aspx");
            }
            else
            {
                lab1.Text = "Not Match Password!!";
            }
        }
    }
}