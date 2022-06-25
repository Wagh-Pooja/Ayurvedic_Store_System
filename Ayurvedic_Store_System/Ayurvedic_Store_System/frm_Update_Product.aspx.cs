using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ayurvedic_Store_System
{
    public partial class frm_Update_Product : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Ayurvedic_Store_SystemDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Con_Open();
            SqlCommand cmd = new SqlCommand("Select Distinct (Category_Name)from Category_Details", Con);
            var obj = cmd.ExecuteReader();
            while (obj.Read())
            {
                cmb_Category.Items.Add(obj.GetString(obj.GetOrdinal("Category_Name")));
            }
            obj.Dispose();


            SqlCommand cmd1 = new SqlCommand("Select Distinct(Product_Name) from Product_Details", Con);
            var obj1 = cmd1.ExecuteReader();
            while (obj1.Read())
            {
                cmb_Product_Name.Items.Add(obj1.GetString(obj1.GetOrdinal("Product_Name")));
            }
            obj1.Dispose();
            Con_Close();
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
            cmb_Category.SelectedIndex = -1;
            cmb_Product_Name.SelectedIndex = -1;
            tb_Purchase_Price.Text = "";
            tb_Sales_Price.Text = "";
            tb_Desc.Text = "";
            cmb_Category.Focus();
        }

        protected void cmb_Category_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
           
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            Con_Open();
            if (cmb_Category.Text != "" && cmb_Product_Name.Text != "" && tb_Purchase_Price.Text != "" && tb_Sales_Price.Text != "" && tb_Desc.Text != "")
            {
                SqlCommand cmd = new SqlCommand("Update Product_Details Set Category = '" + cmb_Category.Text + "',Product_Name = '" + cmb_Product_Name.Text + "', Purchase_price = '" + tb_Purchase_Price.Text + "', Sales_Price = '" + tb_Sales_Price.Text + "', Description = '" + tb_Desc.Text + "' ", Con);
                cmd.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('Record Update Successfully!!')</script>");
            
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('First Fill All the Fields')</script>");
            }
            Con_Close();             
            
        }

        protected void cmb_Category_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Con_Open();

            SqlCommand Cmd = new SqlCommand("Select Product_Name from Product_Details Where Category = '" + cmb_Category.Text + "'", Con);
            var obj = Cmd.ExecuteReader();

            while (obj.Read())
            {
                cmb_Product_Name.Items.Add(obj.GetString(obj.GetOrdinal("Product_Name")));
            }

            obj.Dispose();

            Con_Close();
        }
    }
}