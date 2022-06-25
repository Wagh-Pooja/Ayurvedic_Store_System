<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_View_Product.aspx.cs" Inherits="Ayurvedic_Store_System.frm_View_Product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Product</title>
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
            margin-top:20px;    
        }
    
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="frm_View_Product" runat="server">
    <header><h2>View Product</h2></header>
    <div id="container">
        <asp:GridView ID="gv_View_Product" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Height="16px" Width="1252px">
            <Columns>
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" 
                    SortExpression="Product_ID" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                    SortExpression="Product_Name" />
                <asp:BoundField DataField="Purchase_Price" HeaderText="Purchase_Price" 
                    SortExpression="Purchase_Price" />
                <asp:BoundField DataField="Sales_Price" HeaderText="Sales_Price" 
                    SortExpression="Sales_Price" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                <asp:BoundField DataField="Mfg_Date" HeaderText="Mfg_Date" 
                    SortExpression="Mfg_Date" />
                <asp:BoundField DataField="Expiry_Date" HeaderText="Expiry_Date" 
                    SortExpression="Expiry_Date" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Ayurvedic_Store_SystemDBConnectionString %>" 
            SelectCommand="SELECT * FROM [Product_Details]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
