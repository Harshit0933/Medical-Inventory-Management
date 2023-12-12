<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addmedicine.aspx.cs" Inherits="inventory1.addmedicine" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server">
    <title></title>
       <style type="text/css">
           body {
               background-color: white;
               height: 730px;
               width: 1500px;
           }
           .auto-style1 {
               width: 1499px;
               height: 591px;
               margin-top: 0px;
           }
           .auto-style2 {
               width: 378px;
               height: 218px;
               position: absolute;
               top: 259px;
               left: 554px;
               z-index: 1;
           }
           .auto-style3 {
               width: 147px;
           }
           .auto-style4 {
               position: absolute;
               top: 231px;
               left: 66px;
               z-index: 1;
               height: 26px;
           }
       </style>
       <link rel="stylesheet" href="csss/StyleSheet1.css" />
       <script type="text/javascript" src="script/JavaScript.js">
           
       </script>
</head>
<body>
    <form id="form1" runat="server">
  
        <asp:Label ID="lbl" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" OnDataBinding="Page_Load"></asp:Label>
    
       
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="XX-Large" Font-Underline="true" OnDataBinding="Page_Load"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
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
        <table class="auto-style2">
        <tr>
        <td class="auto-style3">
            <asp:Label ID="Label2" runat="server" Text="Medicine ID" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
          </td><td>  <asp:TextBox ID="txtmid" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label3" runat="server" Text="Medicine Name" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td>    <asp:TextBox ID="txtmname" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label4" runat="server" Text="No.of Medicine" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            </td><td><asp:TextBox ID="txtmno" runat="server" Width="220px" BorderColor="#999999" Height="28px" OnTextChanged="txtmno_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label5" runat="server" Text="Price" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td>  <asp:TextBox ID="txtmprice" runat="server"  Width="220px" BorderColor="#999999" Height="28px"  OnTextChanged="txtmprice_TextChanged" AutoPostBack="true"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label6" runat="server" Text="Total Price" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td>  <asp:TextBox ID="txttprice" runat="server"  Width="220px" BorderColor="#999999" Height="28px" ReadOnly="true" AutoPostBack="true"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td class="auto-style3">
            <asp:Button ID="signup" runat="server" Text="Back" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="132px" Font-Bold="True" Height="30px" OnClick="signup_Click"></asp:Button>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Add"  BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="132px" Font-Bold="True" Height="30px" OnClick="Button1_Click"></asp:Button>
        </td>
    </tr> 
        <tr>
        <td class="auto-style3" colspan="2">
            <asp:Label ID="lbl1" runat="server" ForeColor="Red" Font-Bold="True" Width="313px" CssClass="auto-style4"></asp:Label>
        </td>
    </tr>
    </table>
    </form>
    <img src="image/30FIeP.png" aria-busy="False" class="auto-style1" />

</body>
</html>