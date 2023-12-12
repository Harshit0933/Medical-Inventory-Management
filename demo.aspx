<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="demo.aspx.cs" Inherits="inventory1.demo" %>



    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
            .auto-style2 {
                width: 374px;
                height: 213px;
                position: absolute;
                top: 302px;
                left: 571px;
                z-index: 1;
            }
        </style>
       </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
        <body><form>
    <table class="auto-style2">
         <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Medicine ID" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Sell QTY" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="220px" BorderColor="#999999" Height="28px" ></asp:TextBox>
        </td>
    </tr>
    
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Price" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="220px" BorderColor="#999999" Height="28px"  AutoPostBack="true"></asp:TextBox>
        </td> 
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Total Price" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="220px" BorderColor="#999999" Height="28px" ReadOnly="true" AutoPostBack="true"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button" runat="server" Text="Add to Bill" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="140px" Font-Bold="True" Height="30px" style="margin-left: 0px"  CssClass="auto-style11"></asp:Button>
        </td>
    </tr>
   
    </table>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT [Mediname] FROM [addmedicine] ORDER BY [Mediname]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" CssClass="auto-style9" DataSourceID="SqlDataSource1" DataTextField="Mediname" DataValueField="Mediname" style="z-index: 1; position: absolute; top: 249px; left: 714px">
        </asp:DropDownList>
        <asp:Button ID="Button2" runat="server" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" CssClass="auto-style10" Font-Size="Medium"  Text="Generate Bill" style="z-index: 1; position: absolute; top: 539px; left: 715px" />
           </form>
            </body>
</asp:Content>






