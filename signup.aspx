<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="inventory1.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
        #form1 {
            width: 379px;
            height: 3px;
        }
        body{
            background-color:white;
            height: 730px;
            width: 1500px;
        }
    </style>
</head>
<body style="width: 1245px; height: 774px">
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 401px; height: 269px; position: relative; top: 230px; left: 543px">
        <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Username" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="txtuname" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Password" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="txtpass" runat="server" Textmode="Password" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Re-Password" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="txtrepass" runat="server" Textmode="Password" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Email ID" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="txtemail" runat="server" Textmode="Email" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Mobile No" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="txtmobile" runat="server" Textmode="Phone" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
      <tr>
        <td class="auto-style1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Sign Up" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="140px" Font-Bold="True" Height="30px" style="margin-left: 0px" OnClick="Button1_Click"></asp:Button>
        </td>
    </tr>  
      <tr>
        <td class="auto-style1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lab1" runat="server" ForeColor="Red" Font-Bold="True" Height="30px" Width="314px"></asp:Label>
        </td>
    </tr>  
    </table>
    </form>
    <img src="image/30FIeP.png" style="height: 736px; width: 1499px; margin-top: 0px" />
</body>
</html>
