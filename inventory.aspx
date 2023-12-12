<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inventory.aspx.cs" Inherits="inventory1.inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title></title>
       <style type="text/css">
           body {
               background-color: white;
               height: 730px;
               width: 1500px;
           }
           .auto-style1 {
               width: 184px;
           }
           .auto-style2 {
               width: 340px;
               height: 222px;
               position: absolute;
               top: 232px;
               left: 613px;
               z-index: 1;
           }
           .auto-style3 {
               margin-top: 0px;
           }
           .auto-style4 {
               height: 577px;
               width: 1497px;
           }
           </style>
       <link rel="stylesheet" href="csss/StyleSheet1.css" />
       <script type="text/javascript" src="script/JavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
  
        <asp:Label ID="lbl" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" OnDataBinding="Page_Load"></asp:Label>
    
       
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large" Font-Underline="true" OnDataBinding="Page_Load"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
       
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Search Medicine" BackColor="#E1E2E0" BorderStyle="None" CssClass="auto-style3" Height="40px" Width="330px" Font-Size="Medium" OnClick="Button1_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button2" runat="server" Text="Add Medicine" BackColor="#E1E2E0" BorderStyle="None" Height="40px" Width="330px" Font-Size="Medium" OnClick="Button2_Click"/>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button6" runat="server" Text="Update Stock" BackColor="#E1E2E0" BorderStyle="None" CssClass="auto-style3" Height="40px" Width="330px" Font-Size="Medium" OnClick="Button6_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button4" runat="server" Text="Bill Generate" BackColor="#E1E2E0" BorderStyle="None" Height="40px" Width="330px" Font-Size="Medium" OnClick="Button4_Click" />
                </td>
            </tr>
             <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button5" runat="server" Text="Stock Details" BackColor="#E1E2E0" BorderStyle="None" Height="40px" Width="330px" Font-Size="Medium" OnClick="Button5_Click" />
                </td>
            </tr>
            </table>
        <span style="font-size:30px; cursor:pointer;" onclick="opennevmenu()">
            &#9776Menu</span>
       <div class="navmenu" id="mymenu">
             <a href="javascript:void(0)" class="closebtn" onclick="closenevmenu()">&times;</a>
            <br />
            <br />
            <br />
            <br />
            <br />
            <a href="dashboard.aspx">Home</a>
                <a href="inventory.aspx">Inventory</a>
            <a href="about.aspx">AboutUs</a>
                
            
                
        </div>
    </form>
    &nbsp;
    <img src="image/30FIeP.png" class="auto-style4" />
</body>
</html>
