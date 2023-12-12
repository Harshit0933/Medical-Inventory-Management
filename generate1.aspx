<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="generate1.aspx.cs" Inherits="inventory1.generate1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 356px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            margin-right: 0px;
        }
        .auto-style5 {
            position: absolute;
            top: 423px;
            left: 422px;
            z-index: 1;
            width: 154px;
            font-weight: bold;
            height: 35px;
        }
        .auto-style6 {
            height: 37px;
        }
        .auto-style7 {
            text-align: center;
            height: 83px;
        }
        .auto-style9 {
            height: 26px;
            text-align: left;
        }
        .auto-style10 {
            text-align: center;
            height: 35px;
        }
        .newStyle1 {
            padding: inherit;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            position: absolute;
            top: 423px;
            left: 678px;
            z-index: 1;
            width: 154px;
            font-weight: bold;
            height: 35px;
        }
        </style>
    </head>
<body>
    <form id="form1" runat="server">
       
         <div class="auto-style3">
       
         <asp:Panel ID="Panel1" runat="server" CssClass="auto-style4" Height="408px" Width="1120px">
        <table class="auto-style1" border="1">
          
                        
                            <tr>
                                <td class="auto-style10" style="background-image: url('image/render.jpg')">
                                    <h2><strong class="newStyle1">MEDICAL STORE</strong></h2>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Date :&nbsp;
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            
                            <tr>
                                <td class="auto-style7">
                                    
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Medicinename" DataSourceID="SqlDataSource1" Width="1111px" BackImageUrl="~/image/render.jpg">
                                        <Columns>
                                            <asp:BoundField DataField="Medicinename" HeaderText="Medicinename" ReadOnly="True" SortExpression="Medicinename" />
                                            <asp:BoundField DataField="Medicine" HeaderText="Medicine" SortExpression="Medicine" />
                                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT * FROM [bill]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="border-style: solid; border-width: thin; background-image: url('image/render.jpg')">
                                    <h3 class="auto-style11"><strong>&nbsp;Total Amount:
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                        </strong></h3>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3" style="background-image: url('image/render.jpg')">THANKYOU !!!</td>
                            </tr>
            
        </table>
         </asp:Panel>
            
             <strong>
            
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GENERATE" CssClass="auto-style12" />
             </strong>
         </div>
         <asp:Button ID="Button2" runat="server" CssClass="auto-style5" OnClick="Button2_Click" Text="Back" Width="135px" />
    </form>
    
</body>
    
</html>
