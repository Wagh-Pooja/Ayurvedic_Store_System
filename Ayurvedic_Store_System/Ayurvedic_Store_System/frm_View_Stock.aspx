<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_View_Stock.aspx.cs" Inherits="Ayurvedic_Store_System.frm_View_Stock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <header><h2>View Product Stock</h2></header>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="dgv_Stock" runat="server" Width="1336px" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" 
                    SortExpression="Product_ID" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                    SortExpression="Product_Name" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Current_Stock" HeaderText="Current_Stock" 
                    SortExpression="Current_Stock" />
                <asp:BoundField DataField="New_Stock" HeaderText="New_Stock" 
                    SortExpression="New_Stock" />
                <asp:BoundField DataField="Mfg_Date" HeaderText="Mfg_Date" 
                    SortExpression="Mfg_Date" />
                <asp:BoundField DataField="Expiry_Date" HeaderText="Expiry_Date" 
                    SortExpression="Expiry_Date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Ayurvedic_Store_SystemDBConnectionString %>" 
            SelectCommand="SELECT [Product_ID], [Category], [Product_Name], [Date], [Current_Stock], [New_Stock], [Mfg_Date], [Expiry_Date] FROM [Stock_Details]">
        </asp:SqlDataSource>
    </div>
    </form>
    <p>
        i</p>
</body>
</html>
