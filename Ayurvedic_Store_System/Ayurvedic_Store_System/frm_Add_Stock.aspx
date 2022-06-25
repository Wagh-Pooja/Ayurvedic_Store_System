<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Add_Stock.aspx.cs" Inherits="Ayurvedic_Store_System.frm_Add_Stock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
            height:300px;
            width:500px;
            padding:30px;
            margin:10px;
            }
        .div2
        {
            height:300px;
            width:600px;
            padding:20px;
            margin:13px;
            }
    </style>
    </style>
</head>
<body bgcolor="#cccccc">
    <header><h1>Add Stock</h1></header>
    <form id="frm_Add_Stock" runat="server">
    <div id="Container">
    <div class="div1">
        <asp:Label ID="lbl_PID" runat="server" Text="Product ID :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_PID" Font-Names="Arial" Font-Size="25px" 
                MaxLength="4" style="margin-left: 54px" Width="208px"></asp:TextBox>
        <br /><br />
           <asp:Button runat="server" ID="btnsearch" CssClass="Searchbtn" Text="Search" BackColor="#FF9900" 
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Size="20px" 
                ForeColor="White" style="margin-left: 310px" 
            onclick="btnsearch_Click"/>
        <br /><br />

        <asp:Label ID="lbl_PCategory" runat="server" Text="Product Category :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;
        <asp:TextBox runat="server" ID="tb_Category" Font-Names="Arial" Font-Size="25px" 
             Width="209px" style="margin-left: 33px" Height="33px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="lbl_PName" runat="server" Text="Product Name :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;        
        <asp:TextBox runat="server" ID="tb_PName" Font-Names="Arial" Font-Size="25px" 
             Width="209px" style="margin-left: 55px" Height="33px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="lbl_Date" runat="server" Text="Date :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_date" Font-Names="Arial" Font-Size="25px" 
             Width="209px" TextMode="date" style="margin-left: 139px" Height="33px"></asp:TextBox>
        <br /><br />
        
    </div>

    <div class="div2">
        <asp:Label ID="lbl_CStock" runat="server" Text="Current Stock :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        <asp:TextBox runat="server" ID="Txt_CStock" Font-Names="Arial" Font-Size="25px" 
                MaxLength="4" style="margin-left: 60px" Width="208px"></asp:TextBox>
        <br /><br /><br />

        <asp:Label ID="lbl_NStock" runat="server" Text="New Stock :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="Txt_Nstock" Font-Names="Arial" Font-Size="25px" 
                MaxLength="4" style="margin-left: 75px" Width="208px"></asp:TextBox>
        <br /><br />&nbsp;

        <asp:Label ID="lbl_MfgDate" runat="server" Text="Mfg Date :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_mfgdt" Font-Names="Arial" Font-Size="25px" 
             Width="215px" style="margin-left: 61px"></asp:TextBox>
        <br /><br /><br />

        <asp:Label ID="lbl_ExpDate" runat="server" Text="Expiry Date :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_expdt" Font-Names="Arial" Font-Size="25px" 
             Width="215px" style="margin-left: 43px"></asp:TextBox>
        <br /><br />        
    </div>
    
    <div id="div3">
    <asp:Button runat="server" ID="btn_Save" CssClass="Savebtn" Text="Save" BackColor="#FF9900" 
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Size="40px" 
                ForeColor="White" style="margin-left: 516px" onclick="btn_Save_Click"/>    
    </div>
    </div>
    </form>
</body>
</html>
