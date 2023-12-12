<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="inventory1.deshboard" %>

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
               height: 632px;
               margin-top: 0px;
           }
           .auto-style2 {
               width: 349px;
               height: 190px;
               position: absolute;
               top: 241px;
               left: 602px;
               z-index: 1;
           }
       </style>
       
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
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Inventory" BackColor="#E1E2E0" BorderStyle="None" CssClass="auto-style3" Height="45px" Width="340px" Font-Size="Medium" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="About Us" BackColor="#E1E2E0" BorderStyle="None" CssClass="auto-style3" Height="45px" Width="340px" Font-Size="Medium" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Logout" BackColor="#E1E2E0" BorderStyle="None" CssClass="auto-style3" Height="45px" Width="340px" Font-Size="Medium" OnClick="Button3_Click" />
                </td>
            </tr>
            </table>
       
        
    </form>
    <img src="image/30FIeP.png" aria-busy="False" class="auto-style1" />

</body>
</html>

