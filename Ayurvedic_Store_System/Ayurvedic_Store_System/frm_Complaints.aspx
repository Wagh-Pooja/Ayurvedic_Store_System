<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Complaints.aspx.cs" Inherits="Ayurvedic_Store_System.frm_Complaints" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Complaints</title>
    <style>
    *body {
        font-family:Arial Greek;
        padding:0px;
        margin:0px;
        }
        #container{}
        
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
        .div1
        {
            height:400px;
            width:80%;
            padding:10px;
            margin-left:260px;
            display:block;
            align:center;
        }
    </style>

</head>
<body bgcolor="#cccccc">
    <header><h1>Complaints</h1></header>
    <form id="frm_Complaints" runat="server">
    <div id = "container">
    <div class="div1">
    
    <br /><br />
        <asp:Label ID="lbl_CID" runat="server" Text="Complaint ID :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_Comp_ID" Font-Names="Arial" Font-Size="25px" 
                MaxLength="4" style="margin-left: 47px" Width="250px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="lbl_CustID" runat="server" Text="Customer ID :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_Cust_ID" Font-Names="Arial" Font-Size="25px" 
                MaxLength="6" style="margin-left: 50px" Width="250px"></asp:TextBox>
        <asp:Button runat="server" ID="btn_Search" CssClass="Searchbtn" Text="Search" BackColor="#FF9900" 
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Size="25px" 
                ForeColor="White" style="margin-left: 10px" 
            onclick="btn_Search_Click"/>
        <br /><br />


        <asp:Label ID="lbl_CName" runat="server" Text="Customer Name :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        
        <asp:TextBox runat="server" ID="txt_CName" Font-Names="Arial" Font-Size="25px" 
                MaxLength="20" style="margin-left: 37px" Width="365px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="lbl_PName" runat="server" Text="Product Name :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>

        <asp:DropDownList runat="server" ID="ddl_Pname" Font-Names="Arial" Font-Size="25px" 
                 style="margin-left: 60px" Width="368px" DataSourceID="SqlDataSource1" 
            DataTextField="Product_Name" DataValueField="Product_Name" ></asp:DropDownList>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Ayurvedic_Store_SystemDBConnectionString %>" 
            SelectCommand="SELECT [Product_Name] FROM [Product_Details]">
        </asp:SqlDataSource>
        
        <br /><br />


        <asp:Label ID="lbl_Complaint" runat="server" Text="Complaint :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="Txt_Complaint" TextMode="Multiline" Rows="3" Font-Names="Arial" Font-Size="25px" 
            MaxLength="60" Width="365px"></asp:TextBox>
            <br /><br />

        <asp:Button runat="server" ID="btn_Save" CssClass="Savebtn" Text="Save" BackColor="#FF9900" 
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Size="40px" 
                ForeColor="White" style="margin-left: 160px" onclick="btn_Save_Click" 
            Width="213px"/>
    
    </div>
    </div>
    </form>
</body>
</html>
