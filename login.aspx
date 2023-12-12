<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="inventory1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            height: 34px;
        }
        body{
            background-color:white;
            height: 730px;
            width: 1500px;
        }
        .auto-style2 {
            height: 25px;
        }
        #form1 {
           
        }
        .auto-style3 {
        height: 492px;
        width: 1501px;
    }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <table border="0" style="height: 175px; width: 300px; margin-left: 578px; position: relative; top: 267px; left: 20px;" translate="no">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Username" Width="100px" Font-Bold="True" Height="30px"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="txtu_name" runat="server" Width="210px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 280px" class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Password" Width="100px" Font-Bold="True" Height="30px"></asp:Label>
            </td>
        <td>
            <asp:Textbox ID="txtpassword" runat="server" Textmode="Password" Width="210px" BorderColor="#999999" Height="28px" ></asp:Textbox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="login"  BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="132px" Font-Bold="True" Height="30px" OnClick="Button1_Click"></asp:Button>
        </td>

    </tr>
   
        <tr>
        <td class="auto-style2" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lab2" runat="server" ForeColor="Red" Font-Bold="True" Height="30px" Width="313px"></asp:Label>
        </td>
    </tr>
    </table>
    </form>
    &nbsp;<img src="image/30FIeP.png" style="margin-top: 40px;" class="auto-style3" />
    </body>
</html>

