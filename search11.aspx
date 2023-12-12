<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search11.aspx.cs" Inherits="inventory1.search11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <style type="text/css">
           body {
               background-color: white;
               height: 730px;
               width: 1500px;
           }
           .auto-style4 {
         position: absolute;
         top: 198px;
         left: 920px;
         z-index: 1;
         height: 30px;
         width: 95px;
     }
     .auto-style5 {
         position: absolute;
         top: 243px;
         left: 723px;
         z-index: 1;
         height: 18px;
     }
     .auto-style6 {
         position: absolute;
         top: 196px;
         left: 526px;
         z-index: 1;
         height: 30px;
         width: 185px;
         }
       .auto-style7 {
         position: absolute;
         top: 279px;
         left: 578px;
         z-index: 2;
         width: 401px;
         height: 202px;
     }
       .auto-style8 {
         height: 592px;
         width: 1499px;
     }
       .auto-style9 {
         position: absolute;
         top: 197px;
         left: 723px;
         z-index: 1;
         width: 167px;
         height: 30px;
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
        <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderColor="Gray" BorderStyle="None" CssClass="auto-style4" OnClick="Button1_Click" Text="Search" Font-Bold="true" Font-Size="Medium" />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style5" ForeColor="Red"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Font-Bold="true" Font-Size="large"></asp:Label>
    <table class="auto-style7">
         <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Medicine ID" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Stock" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Price" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Total Price" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button" runat="server" Text="Back" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="140px" Font-Bold="True" Height="30px" style="margin-left: 0px" OnClick="Button_Click"></asp:Button>
        </td>
    </tr>
   
    </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT [Mediname] FROM [addmedicine] ORDER BY [Mediname]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" CssClass="auto-style9" DataSourceID="SqlDataSource1" DataTextField="Mediname" DataValueField="Mediname" AutoPostBack="True">
        </asp:DropDownList>
    </form>
    <img src="image/30FIeP.png" class="auto-style8" />

</body>
</html>

