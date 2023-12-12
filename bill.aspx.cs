using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace inventory1
{
    public partial class bill : System.Web.UI.Page
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
        protected void txtmno_TextChanged(object sender, EventArgs e)
        {
            if ((!string.IsNullOrEmpty(TextBox2.Text)) && (!string.IsNullOrEmpty(TextBox3.Text)))
            {
                TextBox4.Text = (Convert.ToDouble(TextBox2.Text) * Convert.ToDouble(TextBox3.Text)).ToString();
            }
        }
        protected void txtmprice_TextChanged(object sender, EventArgs e)
        {
            if ((!string.IsNullOrEmpty(TextBox2.Text)) && (!string.IsNullOrEmpty(TextBox3.Text)))
            {
                TextBox4.Text = (Convert.ToDouble(TextBox2.Text) * Convert.ToDouble(TextBox3.Text)).ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
           
                SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=login;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT MediID,Price,stock FROM addmedicine WHERE Mediname = '" + DropDownList1.Text + "'", con);
                cmd.Parameters.AddWithValue("Mediname", DropDownList1.Text);

                SqlDataReader sdr;
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    TextBox5.Text = sdr.GetString(0);
                    TextBox3.Text = sdr.GetValue(1).ToString();
                    TextBox1.Text = sdr.GetValue(2).ToString();
                }
                con.Close();
           
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            
            
                SqlConnection cnn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=login;Integrated Security=True");
                cnn.Open();
                SqlCommand cmd;
                String sql = "Update addmedicine set stock = stock - '" + TextBox2.Text + "',Tprice = Tprice - '" + TextBox4.Text + "' where Mediname = '" + DropDownList1.Text + "'";
                cmd = new SqlCommand(sql, cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
                cnn.Open();
                String sql1 = "Insert into bill(Medicinename,Medicine,Price,Total,MedicineID) values('" + DropDownList1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + "," + TextBox4.Text + "," + TextBox5.Text + ")";
                cmd = new SqlCommand(sql1, cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
            cnn.Close();
            cnn.Open();
            String sql2 = "Insert into bill1(Medicinename,Medicine,Price,Total,MedicineID) values('" + DropDownList1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + "," + TextBox4.Text + "," + TextBox5.Text + ")";
            cmd = new SqlCommand(sql2, cnn);
            cmd.ExecuteNonQuery();
            cnn.Close();
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("generate1.aspx");
        }
    }
}