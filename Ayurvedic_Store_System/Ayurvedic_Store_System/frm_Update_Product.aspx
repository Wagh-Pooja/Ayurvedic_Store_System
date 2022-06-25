<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Update_Product.aspx.cs" Inherits="Ayurvedic_Store_System.frm_Update_Product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Product</title>
    <style>
        *body
        {
            margin:0px;
            padding:0px;
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
          height:130px;
          width:550px;
          margin:10px;       
          padding:30px;
      }
      .div2
      {
          height:130px;
          width:500px;
          padding:30px;
          margin:10px;
      }
      .div3
      {
        height:150px;
        width:500px;
        padding:10px;
        margin-left:300px; 
      }
         
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="frm_Update_Product" runat="server">
    <div>        
     <header><h2>Update Product</h2></header>
    <div id="container">
        <div class="div1">
  
        <asp:Label ID="lbl_Category" runat="server" Text="Category" Font-Names="Arial" 
                Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="cmb_Category" runat="server" Height="30px" 
                onselectedindexchanged="cmb_Category_SelectedIndexChanged1" Width="205px" 
                Font-Size="20px" style="margin-left: 62px">
            </asp:DropDownList><br /><br />

        <asp:Label ID="lbl_PName" runat="server" Text="Product Name" Font-Names="Arial" 
                Font-Size="25px"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:DropDownList ID="cmb_Product_Name" runat="server" Height="30px" 
                Width="201px" Font-Size="20px">
            </asp:DropDownList><br /><br />
        
        </div>

        <div class="div2">

            <asp:Label ID="lbl_Purchase_Price" runat="server" Text="Purchase Price" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        <asp:TextBox ID="tb_Purchase_Price" runat="server" Font-Names="Arial" 
                Font-Size="25px" style="margin-left:22px" Height="34px" Width="213px"></asp:TextBox><br /><br />

        <asp:Label ID="lbl_Sales_Price" runat="server" Text="Sales Price" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        <asp:TextBox ID="tb_Sales_Price" runat="server" Font-Names="Arial" Font-Size="25px" 
                style="margin-left:60px" Height="33px" Width="216px"></asp:TextBox><br /><br />

        </div>

        <div class="div3">
            <asp:Label ID="lbl_Desc" runat="server" Text="Description" Font-Names="Arial" 
                Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:TextBox ID="tb_Desc" runat="server" Font-Names="Arial" Font-Size="25px"  
                style="margin-left:35px margin-top:10px" Width="316px" 
                TextMode="MultiLine" Height="80px"></asp:TextBox><br /><br />
        </div>
    </div>
    <div id="div4">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="btn_Update" runat="server" BackColor="#FF9933" Font-Bold="True" 
                Font-Size="32px" ForeColor="White" Height="51px" Text="Update" 
                Width="159px" onclick="btn_Update_Click" />
        </div> 

    </form>
</body>
</html>
