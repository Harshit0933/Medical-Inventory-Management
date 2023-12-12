using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace inventory1
{
    public partial class addmedicine : System.Web.UI.Page
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

        protected void TextBox1_Load(object sender, EventArgs e)
        {

        }
        protected void txtmno_TextChanged(object sender, EventArgs e)
        {
            if ((!string.IsNullOrEmpty(txtmno.Text)) && (!string.IsNullOrEmpty(txtmprice.Text)))
            {
                txttprice.Text = (Convert.ToDouble(txtmno.Text) * Convert.ToDouble(txtmprice.Text)).ToString();
            }
        }
        protected void txtmprice_TextChanged(object sender, EventArgs e)
        {
            if ((!string.IsNullOrEmpty(txtmno.Text)) && (!string.IsNullOrEmpty(txtmprice.Text)))
            {
                txttprice.Text = (Convert.ToDouble(txtmno.Text) * Convert.ToDouble(txtmprice.Text)).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;
            SqlConnection cnn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=login;Integrated Security=True");
            cnn.Open();
            if (txtmid.Text.Equals("") || txtmname.Text.Equals("") || txtmno.Text.Equals("") || txtmprice.Text.Equals("") || txttprice.Text.Equals(""))
            {
                lbl1.Text = "Information must Required!!";
            }
            else
            {
                String sql = "Insert into addmedicine(MediID,Mediname,stock,Price,Tprice) values(" + txtmid.Text + ",'" + txtmname.Text + "'," + txtmno.Text + "," + txtmprice.Text + "," + txttprice.Text + ")";
                cmd = new SqlCommand(sql, cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
                txtmno.Text = string.Empty;
                txtmprice.Text = string.Empty;
                txtmname.Text = string.Empty;
                txtmid.Text = string.Empty;
                txttprice.Text = string.Empty;
                lbl1.Text = "Add Successfully!!";
            }
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("inventory.aspx");           
        }
    }
}