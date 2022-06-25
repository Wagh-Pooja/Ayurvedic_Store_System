using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ayurvedic_Store_System
{
    public partial class frm_Registration : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Ayurvedic_Store_SystemDB;Integrated Security=True");

        void Con_Open()
        {
            if (Con.State == System.Data.ConnectionState.Closed)
            {
                Con.Open();
            }
        }
        void Con_Close()
        {
            if (Con.State == System.Data.ConnectionState.Open)
            {
                Con.Close();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            tb_Username.Focus();
        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            Con_Open();

            if (tb_Username.Text != "" && tb_Email.Text != "" && tb_Password.Text != "")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = Con;
                cmd.CommandText = "Insert into Register_Details(Name, Email_ID, Password) Values ('" + tb_Username.Text + "', '" + tb_Email.Text + "', '" + tb_Password.Text + "') ";
                cmd.ExecuteNonQuery();

            }

            tb_Username.Text = "";
            tb_Email.Text = "";
            tb_Password.Text = "";


            Con_Close();

            Response.Redirect("http://localhost:29015/frm_MDI.aspx");

        }
    }
}