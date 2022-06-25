using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ayurvedic_Store_System
{
    public partial class Add_Product : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Ayurvedic_Store_SystemDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            tb_MfgD.Text = DateTime.Today.ToString("yyyy-MM-dd");
            tb_ExpD.Text = DateTime.Today.ToString("yyyy-MM-dd");

            Con_Open();
            SqlCommand Cmd = new SqlCommand("Select Distinct(Category_Name) from Category_Details", Con);
            var obj = Cmd.ExecuteReader();
            while (obj.Read())
            {
                cmb_Category.Items.Add(obj.GetString(obj.GetOrdinal("Category_Name")));
            }
            obj.Dispose();
            tb_PID.Text = Convert.ToString(Auto_Incr());
            Con_Close();
        }

        protected void cmb_Category_SelectedIndexChanged(object sender, EventArgs e)
        {

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
            tb_PID.Text = Convert.ToString(Auto_Incr());
            cmb_Category.SelectedIndex = -1;
            tb_PName.Text = "";
            tb_Purchase_Price.Text = "";
            tb_Sales_Price.Text = "";
            tb_Stock.Text = "";
            tb_MfgD.Text = "";
            tb_ExpD.Text = "";
            tb_Desc.Text = "";
        }
        int Auto_Incr()
        {
            int Cnt = 0;
            Con_Open();
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = "Select Count(Product_ID) from Product_Details";
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
            Con_Close();
            return Cnt;
        }


        protected void btn_save_Click(object sender, EventArgs e)
        {
            Con_Open();
            if (tb_PID.Text != "" && cmb_Category.Text != "" && tb_PName.Text != "" && tb_Purchase_Price.Text != "" && tb_Sales_Price.Text != "" && tb_Stock.Text != "" && tb_MfgD.Text != "" && tb_ExpD.Text != "" && tb_Desc.Text != "")
            {
                SqlCommand Cmd = new SqlCommand("Insert into Product_Details values(" + tb_PID.Text + ",'" + cmb_Category.Text + "','" + tb_PName.Text + "'," + tb_Purchase_Price.Text + "," + tb_Sales_Price.Text + ", " + tb_Stock.Text + ",'" + tb_MfgD.Text + "','" + tb_ExpD.Text + "','" + tb_Desc.Text + "')", Con);
                Cmd.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Record Save Successfully')</script>");
                Clear_Controls();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('First Fill All the Fields')</script>");
            }
            Con_Close();
        }

       
    }
}