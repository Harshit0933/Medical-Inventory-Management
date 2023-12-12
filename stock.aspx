<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock.aspx.cs" Inherits="inventory1.stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
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
       .auto-style3 {
         width: 809px;
         height: 352px;
         position: absolute;
         top: 143px;
         left: 357px;
         z-index: 1;
         border: 3px double #808080;
     }
     .auto-style4 {
         text-align: center;
     }
     .auto-style5 {
         text-align: justify;
     }
       .auto-style9 {
         position: absolute;
         top: 573px;
         left: 623px;
         z-index: 1;
         height: 25px;
     }
     .auto-style10 {
         position: absolute;
         top: 539px;
         left: 624px;
         z-index: 1;
     }
       </style>
       <link rel="stylesheet" href="csss/StyleSheet1.css" />
       <script type="text/javascript" src="script/JavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style5">
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
            <div class="auto-style4">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT * FROM [addmedicine]"
                    DeleteCommand="DELETE FROM [addmedicine] WHERE MediID = @MediID"></asp:SqlDataSource>
            </div>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Font-Bold="True" Font-Size="Large"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="Large"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BackImageUrl="~/image/render.jpg" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style3" DataKeyNames="MediID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField>
                    <ItemTemplate>
                        
                        <asp:LinkButton Runat="server" 
                            OnClientClick ="return confirm('Are you sure?');"
                            CommandName="Delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:BoundField DataField="MediID" HeaderText="Medicine ID" ReadOnly="True" SortExpression="MediID" />
                    <asp:TemplateField HeaderText="Medicine name" SortExpression="Mediname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Mediname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Mediname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Tprice" HeaderText="Tprice" SortExpression="Tprice" />

                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />

            </asp:GridView>
    <img src="image/30FIeP.png" aria-busy="False" class="auto-style1" />&nbsp;</div>
    </form>
    
</body>
</html>
