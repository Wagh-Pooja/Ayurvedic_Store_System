<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Add_Customer.aspx.cs" Inherits="Ayurvedic_Store_System.frm_Add_Customer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Customer</title>
     <style>        
        *body {
        font-family:Arial Greek;
        padding:0px;
        margin:0px;
        }
        
        header{
            background-color:black;
            display: flex;
            justify-content: center;
            align-items: center;
           
        }
        header>h1{
            color: white;
            font-size: 40px;
            font-style: bold;
        }
        #Container
        {
            display:flex;
            flex-wrap: wrap;
            flex-direction: row;
            }
        .div1
        {
           
            padding:10px;
            margin:10px;
            top:80px;
            }
        .div2
        {
           
            padding:10px;
            margin:10px;
            top:80px;
            }
        .div3
        {
            
            padding:10px;
            margin:10px;
            top:80px;
            }
    </style>

</head>
<body bgcolor="#cccccc">
    <header><h1>Add New Customer</h1></header>
    <form id="form1" runat="server">
    <div id = "container">
        
        <div class = "div1">
        
        <asp:Label ID="lbl_CID" runat="server" Text="Customer ID :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="tb_Customer_ID" Font-Names="Arial" Font-Size="25px" 
                MaxLength="5" style="margin-left: 47px" Width="258px"></asp:TextBox>


        <asp:Label ID="lbl_Date" runat="server" Text="Date :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px" style="margin-left: 40px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="tb_Date" Font-Names="Arial" Font-Size="25px" 
             Width="258px" TextMode="date" style="margin-left: 130px"></asp:TextBox>


        <br /><br />

        <asp:Label ID="lbl_Name" runat="server" Text="Customer Name :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="tb_Customer_Name" Font-Names="Arial" Font-Size="25px" 
                MaxLength="25" style="margin-left: 8px" Width="258px"></asp:TextBox>
       

        <asp:Label ID="lbl_Mobile_No" runat="server" Text="Mobile Number :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px" style="margin-left: 40px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="tb_Mobile_Number" Font-Names="Arial" Font-Size="25px" 
                MaxLength="10" style="margin-left: -20px" Width="258px"></asp:TextBox>


        

        </div>

        <div class = "div2">

        <asp:Label ID="lbl_Category_Name" runat="server" Text="Category Name :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px" style="margin-left: 5px"></asp:Label>

        <asp:Label ID="Label1" runat="server" Text="Product Name :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px" style="margin-left: 30px"></asp:Label>

         <asp:Label ID="lbl_Quantity" runat="server" Text="Quantity :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px" style="margin-left: 70px"></asp:Label>


         <asp:Label ID="lbl_Price" runat="server" Text="Price :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px" style="margin-left: 100px"></asp:Label>


         <asp:Label ID="lbl_Total_Price" runat="server" Text="Total Price :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px" style="margin-left: 90px"></asp:Label>
                <br />
        <asp:DropDownList runat="server" ID="cmb_Category_Name"  AutoPostBack="true" EnableViewState="true" Font-Names="Arial" Font-Size="20" 
                 style="margin-left: 5px" Width="200px" 
                onselectedindexchanged="cmb_Category_Name_SelectedIndexChanged" AppendDataBoundItems="true"  ></asp:DropDownList>

        <asp:DropDownList runat="server" ID="cmb_Product_Name" AutoPostBack="True" 
                Font-Names="Arial" Font-Size="20pt" 
                 style="margin-left: 10px" Width="200px" 
               onselectedindexchanged="cmb_Product_Name_SelectedIndexChanged" 
                AppendDataBoundItems="True" ></asp:DropDownList>

        <asp:TextBox runat="server" ID="tb_Quantity" AutoPostBack="true" Font-Names="Arial" Font-Size="20" 
                MaxLength="10" style="margin-left: 5px" Width="180px" ontextchanged="tb_Quantity_TextChanged" 
                ></asp:TextBox>

        <asp:TextBox runat="server" ID="tb_Price" Font-Names="Arial" Font-Size="20" 
                MaxLength="10" style="margin-left: 5px" Width="180px"></asp:TextBox>

        <asp:TextBox runat="server" ID="tb_Total_Price" Font-Names="Arial" Font-Size="20" 
                MaxLength="10" style="margin-left: 5px" Width="180px"></asp:TextBox>


        <asp:Button runat="server" ID="btn_Add" CssClass="Addbtn" Text="Add" BackColor="#FF9900" 
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Size="20" 
                ForeColor="White" style="margin-left: 5px" onclick="btn_Add_Click"  />

        <br />

        </div>


        <div class = "div3">

        <asp:Label ID="lbl_Bill" runat="server" Text="Bill :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px" style="margin-left: 150px"></asp:Label>

        <asp:Label ID="lbl_GST" runat="server" Text="GST :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px" style="margin-left: 250px"></asp:Label>

         <asp:Label ID="lbl_Final_Bill" runat="server" Text="Final Bill :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px" style="margin-left: 260px"></asp:Label>

         <br />

         <asp:TextBox runat="server" ID="tb_Bill" Font-Names="Arial" Font-Size="25px" 
                MaxLength="5" style="margin-left: 5px" Width="300px" 
                ontextchanged="tb_Bill_TextChanged"></asp:TextBox>

        <asp:TextBox runat="server" ID="tb_GST" Font-Names="Arial" Font-Size="25px" 
                MaxLength="5" style="margin-left: 35px" Width="300px" ontextchanged="tb_GST_TextChanged" 
                ></asp:TextBox>

        <asp:Label ID="lbl_Percent" runat="server" Text="%" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px" style="margin-left: 10px"></asp:Label>

        <asp:TextBox runat="server" ID="tb_Final_Bill" Font-Names="Arial" Font-Size="25px" 
                MaxLength="5" style="margin-left: 35px" Width="300px"></asp:TextBox>

        </div>

    </div>

    <br />

    <asp:Button runat="server" ID="btn_Save" CssClass="Savebtn" Text="Save" BackColor="#FF9900" 
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Size="40px" 
                ForeColor="White"  style="margin-left: 350px" onclick="btn_Save_Click" 
        />

    <asp:Button runat="server" ID="btn_Refresh" CssClass="Refreshbtn" 
        Text="Refresh" BackColor="#FF9900" 
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Size="40px" 
                ForeColor="White"  style="margin-left: 75px" 
        />
    </form>
</body>
</html>
