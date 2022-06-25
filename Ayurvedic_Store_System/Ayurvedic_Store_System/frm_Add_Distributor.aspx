<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Add_Distributor.aspx.cs" Inherits="Ayurvedic_Store_System.frm_Add_Distributor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Distributor</title>
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
            margin:10px;
            }
        
        #btn_Save
        {
            font-size:40px;
            }

    
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="frm_Add_Distributor" runat="server">
     <header><h1>Add Distributor</h1></header>
    <div>
        <div id = "Container">
    <div class="div1">
        <asp:Label ID="lbl_DID" runat="server" Text="Distributor ID :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_Dist_ID" Font-Names="Arial" Font-Size="25px" 
                MaxLength="4" style="margin-left: 47px" Width="215px"></asp:TextBox>
        <br /><br />
        
        <asp:Label ID="lbl_DName" runat="server" Text="Distributor Name :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_DName" Font-Names="Arial" MaxLength="20" 
            Width="215px" Font-Size="25px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="lbl_MNo" runat="server" Text="Mobile Number :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="Txt_MNo" Font-Names="Arial" Font-Size="25px" 
            MaxLength="10" Width="215px" ></asp:TextBox>
        <br /><br />


        <asp:Label ID="lbl_Addr" runat="server" Text="Address :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="Txt_Addr" TextMode="Multiline" Rows="3" Font-Names="Arial" Font-Size="25px" 
            MaxLength="60" Width="215px"></asp:TextBox>

    </div>

    

    <div class="div2">
        <asp:Label ID="lbl_Date" runat="server" Text="Date :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="txt_date" Font-Names="Arial" Font-Size="25px" 
             Width="215px" TextMode="date" style="margin-left: 137px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="lbl_AdNo" runat="server" Text="Aadhar Card No. :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="Txt_Ad_No" Font-Names="Arial" Font-Size="25px" 
            MaxLength="12" Width="215px"></asp:TextBox>
        <br /><br />

        <asp:Label ID="lbl_PANNo" runat="server" Text="PAN Card No :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="Txt_PAN_No" Font-Names="Arial" Font-Size="25px" 
            MaxLength="10" Width="215px"></asp:TextBox>
        <br /><br />


        <asp:Label ID="lbl_Note" runat="server" Text="Note :" Font-Bold="False" 
                Font-Names="Arial" Font-Size="25px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="Txt_Note" TextMode="Multiline" Rows="4" Font-Names="Arial" Font-Size="25px" 
            MaxLength="60" Width="215px"></asp:TextBox>
    </div>

   
    <div id="div3">
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="margin-left: 200px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Save" runat="server" BackColor="#FF6600" Font-Bold="True" 
            Font-Names="Arial" ForeColor="White" Height="50px" Text="Save" 
            Width="112px" Font-Size="35px" onclick="btn_Save_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </div>
    </form>
</body>
</html>
