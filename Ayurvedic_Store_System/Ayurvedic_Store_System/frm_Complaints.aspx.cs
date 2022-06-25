using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ayurvedic_Store_System
{
    public partial class frm_Complaints : System.Web.UI.Page
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

        int Auto_Incr()
        {
            int Cnt = 0;
            Con_Open();
            SqlCommand Cmd = new SqlCommand();

            Cmd.CommandText = "Select Count(Complaint_ID) from Complaints_Details";
            Cmd.Connection = Con;
            Cnt = Convert.ToInt32(Cmd.ExecuteScalar());
            Cmd.Dispose();

            if (Cnt > 0)
            {
                Cnt = Cnt + 101;
            }
            else
            {
                Cnt = 101;
            }
            Con_Close();
            return Cnt;
        }

        void Clear_Controls()
        {
            txt_Cust_ID.Text = "";
            txt_CName.Text = "";
            
            Txt_Complaint.Text = "";
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            txt_Cust_ID.Focus();
            txt_Comp_ID.Text = Convert.ToString(Auto_Incr());
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            Con_Open();
            SqlCommand Cmd2 = new SqlCommand("Select Customer_Name from Customer_Details where Customer_ID = " + txt_Cust_ID.Text + " ", Con);
            var obj = Cmd2.ExecuteReader();
            if (obj.Read())
            {
                txt_CName.Text = obj.GetString(obj.GetOrdinal("Customer_Name"));

            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid Customer ID !!')</script> ");
            }
            Con_Close();

        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            Con_Open();
            if(txt_Comp_ID.Text != "" && txt_Cust_ID.Text != "" && txt_CName.Text != "" && ddl_Pname.Text != "" && Txt_Complaint.Text != "" )
            {
                SqlCommand Cmd = new SqlCommand();
                Cmd.Connection = Con;
                Cmd.CommandText = "Insert into Complaints_Details(Complaint_ID,Customer_ID,Customer_Name,Product_Name,Complaint) Values ('" + txt_Comp_ID.Text + "', '" + txt_Cust_ID.Text + "', '" + txt_CName.Text + "', '" + ddl_Pname.Text + "',  '" + Txt_Complaint.Text + "')";
                Cmd.ExecuteNonQuery();

                Response.Write("<script LANGUAGE='JavaScript'>alert('Record Save Successfully!!!')</script> ");
                //Clear_Controls();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('First fill all the fields')</script> ");
            }

            Con_Close();
            Clear_Controls();
        }
    }
}