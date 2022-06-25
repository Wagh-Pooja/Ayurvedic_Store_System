<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_MDI.aspx.cs" Inherits="Ayurvedic_Store_System.frm_MDI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
        .style1 {
            width: 100%;
        }
        
        *
        {
            margin: 0px;
            padding: 0px;
            }
             form {
            border: 3px solid #f1f1f1;
        }
          
          #Menu
          {
              height:100%;
              width:100%;
              }  
        #Menu ul
        {
            list-style: none;
            height:100%;
            width:100%;
            }
        
        header{
            background-color:black;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 38px;
        }
        header>h1
        {
            align-items: center;
            color: white;
            font-size: 40px;
            font-style: bold;
        }
        #Menu ul li 
        {
            background-color:black;
            color:White;
            border: 1px solid white;
            width: 229.2px;
            height: 35px;
            line-height: 35px;
            text-align: center;
            float: left;
            position: relative;
            align-content:stretch;
            }
            
        #Menu ul li a 
        {
            text-decoration: none;
            color: Black;
            display: block;
            }
            
         #Menu ul li a:hover
         {
             background-color:orange;
             }
             
         #Menu ul ul 
         {
             position: absolute;
             display:none;
             }
             
         #Menu ul li:hover > ul
         {
             display: block;
             }
             
           #Menu ul li a
         {
             background-color:rgb(46, 11, 13);
             color:White;
             }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="div1">
     <header><h1>Ayurvedic Store System</h1></header>
    </div>

    <div id="Menu">
        <ul>
            <li>
                <a href="#"> Customer </a>
                <ul>
                    <li>
                        <a href="#"> Add Customer </a>
                        <a href="#"> View All Customer </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#"> Products </a>
                <ul>
                    <li>
                        <a href="#"> Add Category </a>
                        <a href="#"> Add Product </a>
                        <a href="#"> Update Product </a>
                        <a href="#"> View Product Details </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#"> Stock </a>
                <ul>
                    <li>
                        <a href="#"> Add Stock </a>
                        <a href="#"> View Stock </a>
                    </li>
                </ul>
            </li>

            <li> 
                <a href="#"> Distributor </a>
                <ul>
                    <li>
                        <a href="#"> Add Distributor </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#"> Complaints </a>
            </li>
        </ul>
        
    </div>

    </div>
    </form>
</body>
</html>
