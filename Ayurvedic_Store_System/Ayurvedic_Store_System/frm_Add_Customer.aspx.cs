using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ayurvedic_Store_System
{
    public partial class frm_Add_Customer : System.Web.UI.Page
    {
        SqlConnection Con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Ayurvedic_Store_SystemDB;Integrated Security=True");

        int pCnt = 1, Current_Stock = 0;

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

            Cmd.CommandText = "Select Count(Customer_ID) from Customer_Details";
            Cmd.Connection = Con;
            Cnt = Convert.ToInt32(Cmd.ExecuteScalar());
            Cmd.Dispose();

            if (Cnt > 0)
            {
                Cnt = Cnt + 1001;
            }
            else
            {
                Cnt = 10001;
            }
            Con_Close();
            return Cnt;
        }
        void Bind_ComboBox()
        {
            Con_Open();

            cmb_Category_Name.Items.Clear();

            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "Select Distinct(Category_Name) From Category_Details";
            cmd.Connection = Con;

            SqlDataReader obj = cmd.ExecuteReader();

            while (obj.Read())
            {
                cmb_Category_Name.Items.Add(obj.GetString(obj.GetOrdinal("Category_Name")));
            }

            obj.Dispose();
            cmd.Dispose();

            Con_Close();
        }

        void Clear_Controls()
        {
            tb_Customer_ID.Text = Convert.ToString(Auto_Incr());
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Con_Open();

            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "Select Distinct(Product_Name) From Product_Details";
            cmd.Connection = Con;

            SqlDataReader obj = cmd.ExecuteReader();

            while (obj.Read())
            {
                cmb_Product_Name.Items.Add(obj.GetString(obj.GetOrdinal("Product_Name")));
            }
            obj.Dispose();
            cmd.Dispose();
            Con_Close();
            Clear_Controls();
            Bind_ComboBox();
        }

        protected void cmb_Category_Name_SelectedIndexChanged(object sender, EventArgs e)
        {
            Con_Open();

            string Category_Name = Convert.ToString(cmb_Category_Name.SelectedValue);

            SqlCommand Cmd = new SqlCommand("Select Product_Name from Product_Details Where Category = '" + Category_Name + "' ", Con);

            SqlDataReader obj = Cmd.ExecuteReader();
          

            while(obj.Read())
            {
                cmb_Product_Name.Items.Add(obj.GetString(obj.GetOrdinal("Product_Name")));
            }

            obj.Dispose();
            Cmd.Dispose();

            Con_Close();
        }

        protected void cmb_Product_Name_SelectedIndexChanged(object sender, EventArgs e)
        {
            Con_Open();

            SqlCommand Cmd = new SqlCommand("Select Sales_Price From Product_Details where  Product_Name =  '" + cmb_Product_Name.Text + "' ", Con);

            SqlDataReader obj = Cmd.ExecuteReader();

            while(obj.Read())
            {
                tb_Price.Text = (obj["Sales_Price"].ToString());
            }

            tb_Quantity.Enabled = true;

            obj.Dispose();
            Cmd.Dispose();

            Con_Close();

        }

        protected void tb_Quantity_TextChanged(object sender, EventArgs e)
        {
            double Total_Price = 0;
            
            Total_Price = Convert.ToDouble(tb_Quantity.Text) * Convert.ToDouble(tb_Price.Text);

            tb_Total_Price.Text = Convert.ToString(Total_Price);
        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            tb_Bill.Text = "0";
            double Bill = 0;
            
            Bill = Convert.ToDouble(tb_Bill.Text) + Convert.ToDouble(tb_Total_Price.Text);

            tb_Bill.Text = Convert.ToString(Bill);
            pCnt++;
        }

        protected void tb_Bill_TextChanged(object sender, EventArgs e)
        {
         
        }

        protected void tb_GST_TextChanged(object sender, EventArgs e)
        {
            double Final_Bill = (Convert.ToDouble(tb_Total_Price.Text) + (Convert.ToDouble(tb_Total_Price.Text) * Convert.ToDouble(tb_GST.Text) / 100));

            tb_Final_Bill.Text = Convert.ToString(Final_Bill);
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            if (tb_Customer_ID.Text != "" && tb_Customer_Name.Text != "" && tb_Date.Text != "" && tb_Mobile_Number.Text != "" && tb_Bill.Text != "" && tb_Final_Bill.Text != "" && tb_GST.Text != "")
            {
                Con_Open();

                SqlCommand cmd = new SqlCommand("Insert Into Customer_Details Values (@Customer_ID, @Customer_Name, @Mobile_Number, @Date, @Bill, @GST, @Final_Bill )", Con);

                cmd.Parameters.Add("@Customer_ID", System.Data.SqlDbType.Int ).Value = tb_Customer_ID.Text;
                cmd.Parameters.Add("@Customer_Name", System.Data.SqlDbType.NVarChar).Value = tb_Customer_Name.Text;
                cmd.Parameters.Add("@Date", System.Data.SqlDbType.Date).Value = tb_Date.Text;
                cmd.Parameters.Add("@Mobile_Number", System.Data.SqlDbType.Decimal).Value = tb_Mobile_Number.Text;
                cmd.Parameters.Add("@Bill", System.Data.SqlDbType.Money).Value = tb_Bill.Text;
                cmd.Parameters.Add("@GST", System.Data.SqlDbType.Float).Value = tb_GST.Text;
                cmd.Parameters.Add("@Final_Bill", System.Data.SqlDbType.Money).Value = tb_Final_Bill.Text;

                cmd.ExecuteNonQuery();
                cmd.Dispose();

            
                    SqlCommand cmd1 = new SqlCommand("Insert Into Purchase_Details Values (@Customer_ID, @Category_Name, @Product_Name, @Quantity, @Price, @Total_Price )", Con);

                    cmd1.Parameters.Add("@Customer_ID", System.Data.SqlDbType.Int).Value = tb_Customer_ID.Text;
                    cmd1.Parameters.Add("@Category_Name", System.Data.SqlDbType.NVarChar).Value = cmb_Category_Name.Text;
                    cmd1.Parameters.Add("@Product_Name", System.Data.SqlDbType.NVarChar).Value = cmb_Product_Name.Text;
                    cmd1.Parameters.Add("@Quantity", System.Data.SqlDbType.Int).Value = tb_Quantity.Text;
                    cmd1.Parameters.Add("@Price", System.Data.SqlDbType.Money).Value = tb_Price.Text;
                    cmd1.Parameters.Add("@Total_Price", System.Data.SqlDbType.Money).Value = tb_Total_Price.Text;

                    cmd1.ExecuteNonQuery();
                    cmd1.Dispose();

                    int Saled_Quantity = Convert.ToInt32(tb_Quantity.Text);
                    int Product_Current_Stock = 0;
                    int Product_ID = 0;
                    int New_Stock = 0;

                    cmd1.CommandText = "Select Product_ID, Stock From Product_Details where  Product_Name = '" + cmb_Product_Name.Text + "'";
                    cmd1.Connection = Con;

                    var obj = cmd1.ExecuteReader();

                    if (obj.Read())
                    {
                        Product_ID = Convert.ToInt32((obj["Product_ID"].ToString()));
                        Product_Current_Stock = Convert.ToInt32((obj["Stock"].ToString()));
                    }

                    New_Stock = Product_Current_Stock - Saled_Quantity;
                    obj.Close();
                    cmd1.Dispose();

                    SqlCommand Cmd3 = new SqlCommand(" Update Product_Details Set Stock = " + New_Stock + " where Product_ID = " + Product_ID + "", Con);
                    Cmd3.ExecuteNonQuery();
                    Cmd3.Dispose();
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Record Save Successfully!!!')</script> ");
                }
                Con_Close();
            }
        }


    
}