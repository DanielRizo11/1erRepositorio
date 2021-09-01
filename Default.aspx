<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplicationVB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style ="background-color:#56baed; font-size:xx-large; color:white" align="center">
        Ingreso de mercancia
    </div> 
    <br />
    <div style="padding:15px">

        <table class="nav-justified">
            <tr>
                <td style="width: 480px; height: 30px;">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product ID"></asp:Label>
                </td>
                <td style="height: 30px">
                    <asp:TextBox ID="txtProductID" runat="server" Font-Size="Medium" Width="200px" style="margin-left: 0 " TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td style="height: 30px; width: 481px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Item Name"></asp:Label>
                </td>
                <td style="height: 30px">
                    <asp:TextBox ID="txtItemname" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 481px; height: 30px;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Specification"></asp:Label>
                 </td>
                <td style="height: 30px">
                    <asp:TextBox ID="txtSpecification" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                 </td>
            </tr>
             <tr>
                <td style="width: 481px; height: 30px;">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Unit"></asp:Label>
                 </td>
                <td style="height: 30px">
                    <asp:DropDownList ID="Dropunit" runat="server" Font-Size="Medium" Width="200px">
                        <asp:ListItem>KG</asp:ListItem>
                        <asp:ListItem>LB</asp:ListItem>
                        <asp:ListItem>OZ</asp:ListItem>
                    </asp:DropDownList>
                 </td>
            </tr>
             <tr>
                <td style="width: 481px; height: 30px;">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Color"></asp:Label>
                 </td>
                <td style="height: 30px">
                    <asp:RadioButtonList ID="RadioColor" runat="server" RepeatDirection="Horizontal" Width="200px">
                        <asp:ListItem>RED</asp:ListItem>
                        <asp:ListItem>GREEN</asp:ListItem>
                        <asp:ListItem>BLACK</asp:ListItem>
                    </asp:RadioButtonList>
                 </td>
            </tr>
             <tr>
                <td style="width: 481px; height: 30px;">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Insert Date"></asp:Label>
                 </td>
                <td style="height: 30px">
                    <asp:TextBox ID="txtDate" runat="server" Font-Size="Medium" Width="200px" TextMode="number"></asp:TextBox>
                 </td>
            </tr>
             <tr>
                <td style="width: 481px; height: 30px;">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text="Open Quantity"></asp:Label>
                 </td>
                <td style="height: 30px">
                    <asp:TextBox ID="txtOpenqty" runat="server" Font-Size="Medium" Width="200px" TextMode="Number"></asp:TextBox>
                 </td>
            </tr>
             <tr>
                <td style="width: 481px; height: 30px;">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product Status"></asp:Label>
                 </td>
                <td style="height: 30px">
                    <asp:CheckBox ID="CheckRegular" runat="server" Text="Regular" />
                    <asp:CheckBox ID="CheckIrregular" runat="server" Text="Irregular" />
                 </td>
            </tr>
            <tr>
                <td style="width: 481px; height: 20px;">
                 </td>
                <td style="height: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 481px">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#56baed" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Agregar" />
                </td>
            </tr>

        </table>
        <div align="center">

            <hr />

            <asp:GridView ID="GridView1" runat="server" Width="80%">
                <HeaderStyle BackColor="#56baed" ForeColor="White" />
            </asp:GridView>

            <hr style="height: 42px" />

        </div>
    </div>

    
</asp:Content>
