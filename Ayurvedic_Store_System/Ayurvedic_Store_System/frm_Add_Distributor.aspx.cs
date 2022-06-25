using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ayurvedic_Store_System
{
    public partial class frm_Add_Distributor : System.Web.UI.Page
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
        void Clear_Controls()
        {
            txt_Dist_ID.Text = Convert.ToString(Auto_Incr());
            txt_DName.Text = "";
            Txt_MNo.Text = "";
            Txt_Addr.Text = "";
            txt_date.Text = "";
            Txt_Ad_No.Text = "";
            Txt_PAN_No.Text = "";
            Txt_Note.Text = "";
            txt_Dist_ID.Focus();
        }

        int Auto_Incr()
        {
            Con_Open();
            int Cnt = 0;
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = "Select Count(Distributor_ID) from Distributor_Details";
            Cmd.Connection = Con;
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
            Con_Open();
            return Cnt;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            txt_Dist_ID.Text = Convert.ToString(Auto_Incr());
            txt_date.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            Con_Open();

            if (txt_Dist_ID.Text != "" && txt_DName.Text != "" && Txt_MNo.Text != "" && Txt_Addr.Text != "" && txt_date.Text != "" && Txt_Ad_No.Text != "" && Txt_PAN_No.Text != "" && Txt_Note.Text != "")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = Con;
                cmd.CommandText = "Insert into Distributor_Details(Distributor_ID,Distributor_Name,Mobile_Number,Address,Date,Aadhar_Card_No,PAN_Card_No,Note) Values ('" + txt_Dist_ID.Text + "', '" + txt_DName.Text + "', " + Txt_MNo.Text + ", '" + Txt_Addr.Text + "', '" + txt_date.Text + "', '" + Txt_Ad_No.Text + "', '" + Txt_PAN_No.Text + "', '" + Txt_Note.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript'>alert('Record Save Successfully')</script> ");
                Clear_Controls();

            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('First fill all the fields')</script> ");
            }

            Con_Close();

        }
    }
}