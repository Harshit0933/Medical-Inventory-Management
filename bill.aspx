<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="inventory1.bill" %>

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
               width: 1499px;
               height: 598px;
               margin-top: 0px;
           }
       .auto-style2 {
         width: 374px;
         height: 213px;
         position: absolute;
         top: 228px;
         left: 552px;
         z-index: 1;
     }
       .auto-style3 {
         margin-top: 19px;
     }
     .auto-style4 {
         margin-top: 0px;
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
          <table class="auto-style2">
              <tr>
        <td class="auto-style3">
            <asp:Label ID="Label3" runat="server" Text="Medicine Name" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Mediname" DataValueField="Mediname" Height="30px" Width="228px"></asp:DropDownList>
        </td><td>
            <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderColor="Gray" BorderStyle="None" CssClass="auto-style4" OnClick="Button1_Click" Text="Submit" Font-Bold="true" Font-Size="Medium" Height="35px" />

             </td>
    </tr>
        
               <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Medicine ID" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
         </td><td>   <asp:TextBox ID="TextBox5" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
              <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Available Stock" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
         </td><td>   <asp:TextBox ID="TextBox1" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Sell QTY" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            </td><td><asp:TextBox ID="TextBox2" runat="server" Width="220px" BorderColor="#999999" Height="28px" OnTextChanged="txtmno_TextChanged"></asp:TextBox>
        </td>
    </tr>
    
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Price" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            </td><td><asp:TextBox ID="TextBox3" runat="server" Width="220px" BorderColor="#999999" Height="28px" OnTextChanged="txtmprice_TextChanged" AutoPostBack="true"></asp:TextBox>
        </td> 
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Total Price" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            </td><td><asp:TextBox ID="TextBox4" runat="server" Width="220px" BorderColor="#999999" Height="28px" ReadOnly="true" AutoPostBack="true"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            
            <asp:Button ID="Button" runat="server" Text="Add to Bill" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="140px" Font-Bold="True" Height="35px" style="margin-left: 0px" OnClick="Button_Click" CssClass="auto-style11"></asp:Button>
            </td><td>   
         
        <asp:Button ID="Button2" runat="server" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" CssClass="auto-style4" Font-Size="Medium" OnClick="Button2_Click" Text="Generate Bill" Font-Bold="True" Height="35px" Width="226px" />
              </td><td>   
         
            &nbsp;</td>
    </tr>
              <tr>
        <td colspan="2">
            <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
            </td>
    </tr>
    </table>

    <p class="auto-style4">
            <a href="inventory.aspx">
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT [Mediname] FROM [addmedicine] ORDER BY [Mediname]"></asp:SqlDataSource>
        </a>
    <img src="image/30FIeP.png" aria-busy="False" class="auto-style1" /></p>
&nbsp;

    </form>

    </body>
    <script type="text/javascript">
    function DeleteRows() {
        var rowCount = bill.rows.length;
        for (var i = rowCount - 1; i > 0; i--) {
            bill.deleteRow(i);
        }
    }
</script>
</html>