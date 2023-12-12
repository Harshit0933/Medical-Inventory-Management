using System;
using System.Data.SqlClient;
using System.IO;
namespace inventory1
{
    public partial class search11 : System.Web.UI.Page
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
            Label3.ForeColor = System.Drawing.Color.Black;
            Label3.Text = "Enter Medicine name";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "")
            {
                Label2.Text = "Please Enter Medicine name!!";
            }
            else
            {
                SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=login;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT MediID,Mediname,stock,Price,Tprice FROM addmedicine WHERE Mediname = '" + DropDownList1.Text + "'", con);
                cmd.Parameters.AddWithValue("Mediname", DropDownList1.Text);
                SqlDataReader sdr;
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    TextBox5.Text = sdr.GetString(0);
                    TextBox2.Text = sdr.GetValue(2).ToString();
                    TextBox3.Text = sdr.GetValue(3).ToString();
                    TextBox4.Text = sdr.GetValue(4).ToString();
                }
                con.Close();
            }

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("inventory.aspx");
        }
    }
}