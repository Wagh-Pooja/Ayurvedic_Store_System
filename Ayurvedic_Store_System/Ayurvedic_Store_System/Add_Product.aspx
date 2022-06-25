<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="Ayurvedic_Store_System.Add_Product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Product</title>
    <style>
        *body
        {
            margin:0px;
        }
        header{
            background-color:black;
            display: flex;
            justify-content: center;
            align-items: center;
            
        }
        header>h2{
            color: white;
            font-size: 35px;
            font-style: bold;
        }
      #container
      {
            display: flex;
            flex-wrap: wrap;
            flex-direction: row;
            margin:10px;   
      } 
      .div1
      {
          height:300px;
          width:500px;
          margin:10px;       
          padding:20px;
      }
      .div2
      {
          height:300px;
          width:600px;
          padding:20px;
          margin:10px;
      }
      
         
            
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="frm_Add_Product" runat="server">
    <header><h2>Add Product</h2></header>
    <div id="container">
        <div class="div1">
        <asp:Label ID="lbl_PID" runat="server" Text="Product ID" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tb_PID" runat="server" Font-Names="Arial" Font-Size="25px" 
                MaxLength="4" style="margin-left: 47px" Width="208px"></asp:TextBox><br /><br />

        <asp:Label ID="lbl_Category" runat="server" Text="Category" Font-Names="Arial" 
                Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;
        <asp:DropDownList ID="cmb_Category" runat="server" Font-Names="Arial" 
                Font-Size="25px" style="margin-left:80px" onselectedindexchanged="cmb_Category_SelectedIndexChanged" 
                Width="219px" Height="40px">
        </asp:DropDownList><br/><br />

        <asp:Label ID="lbl_PName" runat="server" Text="Product Name" Font-Names="Arial" 
                Font-Size="25px"></asp:Label>
        <asp:TextBox ID="tb_PName" runat="server" Font-Names="Arial" Font-Size="25px"  
                style="margin-left:35px" Width="212px"></asp:TextBox><br /><br />

        <asp:Label ID="lbl_Purchase_Price" runat="server" Text="Purchase Price" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        <asp:TextBox ID="tb_Purchase_Price" runat="server" Font-Names="Arial" 
                Font-Size="25px" style="margin-left:22px" Height="34px" Width="213px"></asp:TextBox><br /><br />

        <asp:Label ID="lbl_Sales_Price" runat="server" Text="Sales Price" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        <asp:TextBox ID="tb_Sales_Price" runat="server" Font-Names="Arial" Font-Size="25px" 
                style="margin-left:60px" Height="33px" Width="216px"></asp:TextBox><br /><br />

        </div>

        <div class="div2">
        <asp:Label ID="lbl_Stock" runat="server" Text="Stock" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tb_Stock" runat="server" Font-Names="Arial" Font-Size="25px" 
                MaxLength="4" style="margin-left:55px" Width="208px"></asp:TextBox><br /><br />

        <asp:Label ID="lbl_MfgD" runat="server" Text="Mfg Date" Font-Names="Arial" 
                Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tb_MfgD" runat="server" TextMode="Date" Font-Names="Arial" Font-Size="25px"  
                style="margin-left:40px" Width="212px"></asp:TextBox><br /><br />

        <asp:Label ID="lbl_ExpD" runat="server" Text="Expiry Date" Font-Names="Arial" 
                Font-Size="25px"></asp:Label>
        <asp:TextBox ID="tb_ExpD" runat="server" TextMode="Date" Font-Names="Arial" Font-Size="25px"  
                style="margin-left:35px" Width="212px"></asp:TextBox><br /><br />
    
           <asp:Label ID="lbl_Desc" runat="server" Text="Description" Font-Names="Arial" 
                Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:TextBox ID="tb_Desc" runat="server" Font-Names="Arial" Font-Size="25px"  
                style="margin-left:35px margin-top:10px" Width="222px" 
                TextMode="MultiLine"></asp:TextBox><br /><br />
        </div> 
        <div id="div3">
            <asp:Button ID="btn_save" runat="server" Text="Save" BackColor="#FF9900" 
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Size="40px" 
                ForeColor="White" style="margin-left: 516px" onclick="btn_save_Click" />
        </div>   
    </div>
    </form>
</body>
</html>
