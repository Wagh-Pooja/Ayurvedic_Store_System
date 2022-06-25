<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Registration.aspx.cs" Inherits="Ayurvedic_Store_System.frm_Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        header{
            background-color:black;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
        }
        header>h1{
            color: white;
            font-size: 40px;
            font-style: bold;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        
        .Regbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .container 
        {
            padding: 16px;
        }
       
       
        .frmalg {
            margin-top:30px;
            margin-left:30%;
            width: 40%;
        }
    </style>

</head>
<body>
    <header><h1>Ayurvedic Store System</h1></header>
    <form id="form1" runat="server" class="frmalg">
    <div class="container">
            <center>
                <h2>Register Here</h2>
            </center>

            <label for="lbl_Name"><b>Name</b></label>
            <asp:TextBox runat="server" ID="tb_Username" placeholder="Enter Name Here" 
                ></asp:TextBox>

            <label for="lbl_Email"><b>Email ID</b></label>
            <asp:TextBox runat="server" ID="tb_Email" 
                placeholder="Enter Email Here" ></asp:TextBox>

            <label for="lbl_Password"><b>Password</b></label>
            <asp:TextBox runat="server" ID="tb_Password" TextMode="Password" 
                placeholder="Enter Password" ></asp:TextBox>

            <asp:Button runat="server" ID="btn_Register"  
                CssClass="Regbtn" Text="Register" 
                onclick="btn_Register_Click" Width="415px" Font-Size="25px"/>
        </div>
    </form>
</html>
