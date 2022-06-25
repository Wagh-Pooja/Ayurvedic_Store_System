using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ayurvedic_Store_System
{
    public partial class frm_Add_Category : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Ayurvedic_Store_SystemDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            tb_ID.Text = Convert.ToString(Auto_Incr());
            tb_CName.Focus();
        }


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

        void Clear_Controls()
        {
            tb_ID.Text = Convert.ToString(Auto_Incr());
            tb_CName.Focus();
            tb_CName.Text = "";
        }

        int Auto_Incr()
        {
            int Cnt = 0;
            Con_Open();
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "Select Count(Category_ID) from Category_Details";
            Cnt = Convert.ToInt32(Cmd.ExecuteScalar());
            Cmd.Dispose();
            if (Cnt > 0)
            {
                Cnt = Cnt + 1;
            }
            else
            {
                Cnt = 1;
            }
            Con_Close();
            return Cnt;
        }


        protected void btn_Save_Click(object sender, EventArgs e)
        {
            Con_Open();
            if (tb_ID.Text != "" && tb_CName.Text != "")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = Con;
                cmd.CommandText = "Insert into Category_Details Values (" + tb_ID.Text + ", '" + tb_CName.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Record Save Successfully')</script>");

                Clear_Controls();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('First Fill All the Fields')</script>");
            }
            Clear_Controls();
            Con_Close();
        }
    }
}