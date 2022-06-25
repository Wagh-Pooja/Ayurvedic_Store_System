using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ayurvedic_Store_System
{
    public partial class frm_Login : System.Web.UI.Page
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

        protected void btn_Login_Click1(object sender, EventArgs e)
        {
            Con_Open();

            if (tb_Username.Text != "" && tb_Password.Text != "")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = Con;
                cmd.CommandText = "Select Name,Password from Register_Details where  Name = '" + tb_Username.Text + "' And Password = '" + tb_Password.Text + "' ";

                Response.Redirect("http://localhost:29015/frm_MDI.aspx");
            }
            else
            {
                Note.ForeColor = System.Drawing.Color.Red;
                Note.Text = "Your Email_ID or Password is Invalid !";
            }
            tb_Username.Text = "";
            tb_Password.Text = "";
            tb_Username.Focus();

            Con_Close();

        }

    }
}