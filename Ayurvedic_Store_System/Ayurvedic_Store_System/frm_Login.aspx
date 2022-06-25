<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Login.aspx.cs" Inherits="Ayurvedic_Store_System.frm_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            border-style: none;
              border-color: inherit;
              border-width: medium;
              background-color: #4CAF50;
              color: white;
              padding: 14px 20px;
              margin: 8px 0;
              cursor: pointer;
            }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container 
        {
            padding: 16px;
        }
        span.tb_Password {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
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
       <form id="form2" runat="server" class="frmalg">
        <div class="container">
            <center>
                <h2>Login Here</h2>
            </center>

            <label for="lbl_Username"><b>Username</b></label>
            <asp:TextBox runat="server" ID="tb_Username" placeholder="Enter Username" 
                ></asp:TextBox>

            <label for="lbl_Password"><b>Password</b></label>
            <asp:TextBox runat="server" ID="tb_Password" TextMode="Password" 
                placeholder="Enter Password" ></asp:TextBox>

            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" 
                Width="422px" onclick="btn_Login_Click1" Font-Size="25px"/>
            <br />
            
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Note" runat="server" style="margin-left: 30px"></asp:Label>
            <br />
           <br />
            <asp:HyperLink ID="HyperLink1" runat="server" style="margin-left: 80px" NavigateUrl="~/frm_Registration.aspx">Don&#39;t Have an Account Register Now</asp:HyperLink>
        </div>

    </form>   
</body>
</html>
