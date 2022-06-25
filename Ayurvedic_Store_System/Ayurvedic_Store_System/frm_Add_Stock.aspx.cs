using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ayurvedic_Store_System
{
    public partial class frm_Add_Stock : System.Web.UI.Page
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
            txt_PID.Text = "";
            txt_expdt.Text = "";
            txt_mfgdt.Text = "";
            tb_Category.Text = "";
            tb_PName.Text = "";
            Txt_CStock.Text = "";
            txt_date.Text = "";
            Txt_Nstock.Text = "";
            Txt_CStock.Text = "";
            Txt_Nstock.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {      
            txt_date.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            Con_Open();
            SqlCommand Cmd = new SqlCommand("Select * from Product_Details where Product_ID = " + txt_PID.Text + "  ",Con);
            var obj = Cmd.ExecuteReader();
            if (obj.Read())
            {
                tb_Category.Text = obj.GetString(obj.GetOrdinal("Category"));
                tb_PName.Text = obj.GetString(obj.GetOrdinal("Product_Name"));
                Txt_CStock.Text = (obj["Stock"].ToString());
                txt_mfgdt.Text = (obj["Mfg_Date"].ToString());
                txt_expdt.Text = (obj["Expiry_Date"].ToString());
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Product ID')</script>");
            }

            Con_Close();
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            Con_Open();

            int New_Stock = Convert.ToInt32(Txt_CStock.Text) + Convert.ToInt32(Txt_Nstock.Text);

            if (txt_PID.Text != "" && tb_Category.Text != "" && tb_PName.Text != "" && txt_date.Text != "" && Txt_CStock.Text != "" && Txt_Nstock.Text != "" && txt_mfgdt.Text != "" && txt_expdt.Text != "")
            {
                int Stock = 0;
                Stock = Convert.ToInt32(Txt_CStock.Text) + Convert.ToInt32(Txt_Nstock.Text);

                SqlCommand Cmd2 = new SqlCommand("Update Stock_Details Set Current_Stock = " + Stock + " where Product_ID = " + txt_PID.Text + " ",Con);
                Cmd2.ExecuteNonQuery();
                Cmd2.Dispose();

                SqlCommand Cmd1 = new SqlCommand("insert into Stock_Details Values (@Product_ID, @Category, @Product_Name, @Date, @Current_Stock, @New_Stock, @Mfg_Date, @Expiry_Date)", Con);
                Cmd1.Parameters.Add("@Product_ID", System.Data.SqlDbType.Int).Value = txt_PID.Text;
                Cmd1.Parameters.Add("@Category", System.Data.SqlDbType.VarChar).Value = tb_Category.Text;
                Cmd1.Parameters.Add("@Product_Name", System.Data.SqlDbType.VarChar).Value = tb_PName.Text;
                Cmd1.Parameters.Add("@Date", System.Data.SqlDbType.Date).Value = txt_date.Text;
                Cmd1.Parameters.Add("@Current_Stock", System.Data.SqlDbType.BigInt).Value = Stock;
                Cmd1.Parameters.Add("@New_Stock", System.Data.SqlDbType.BigInt).Value = Txt_Nstock.Text;
                Cmd1.Parameters.Add("@Mfg_Date", System.Data.SqlDbType.Date).Value = txt_mfgdt.Text;
                Cmd1.Parameters.Add("@Expiry_Date", System.Data.SqlDbType.Date).Value = txt_expdt.Text;

                Cmd1.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Stock Added Successfully')</script>");
                //Clear_Controls();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('First Fill All the Fields!!!')</script>");
            }
            
                
            Con_Close();
        }

        protected void ddl_Category_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void ddl_PName_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddl_Category_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}