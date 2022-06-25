<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Add_Category.aspx.cs" Inherits="Ayurvedic_Store_System.frm_Add_Category" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Category</title>
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
            justify-content: space-around;
            align-items: center;
            margin:80px;
      } 
      #div1
      {          
          background-color:#cccccc;   
          height:280px;
          width:500px;
          margin:20px;       
          padding:20px;
          margin-top:10px;
      }
    
    </style>
</head>
<body>
    <form id="frm_Add_Category" runat="server">
    <div>
        <header><h2>Add Category</h2></header>
        <div id="container">
            <div id="div1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_ID" runat="server" Text="ID" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tb_ID" runat="server" Font-Names="Arial" Font-Size="25px" 
                MaxLength="4" style="margin-left: 68px" Width="205px"></asp:TextBox><br /><br /><br /><br />

                <asp:Label ID="lbl_CName" runat="server" Text="Category Name" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tb_CName" runat="server" Font-Names="Arial" Font-Size="25px" 
                MaxLength="20" style="margin-left: 21px" Width="213px"></asp:TextBox><br /><br /><br /><br /><br />
        
         <asp:Button ID="btn_Save" runat="server" Text="Save" Height="50px" 
                    style="margin-left: 162px; margin-top: 0px;" Width="153px" 
                    Font-Bold="True" Font-Names="Arial" Font-Size="40px" BackColor="#FF6600" 
                    ForeColor="White" onclick="btn_Save_Click" />

                <br />
                <br />
           

            </div>           
        </div>
    </div>
    </form>
</body>
</html>
