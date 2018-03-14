<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ProductDetails.aspx.vb" Inherits="ProductDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" type="text/css" href="designStyleSheet.css" />

    <title>Untitled Page</title>
    <style type="text/css">
        .style2
        {
            width: 194px;
        }
    </style>
</head>
<body background="images/MDIBg.bmp">
    <form id="form1" runat="server">
    <div id="prodpg" style="overflow:auto; height: 648px">
    
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" CssClass="linkbutton" runat="server" 
            NavigateUrl="~/ProductSelect.aspx">Products</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="linkbutton">Home</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkbutton">Logout</asp:LinkButton>
        <br />
        <br />
        
        
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <center>
        <asp:Image ID="Image1" runat="server" Width="250px" />
        </center>
        <br />
        <br />
       
        
        <table align="right" style="width: 64%; height: 198px;">
            <tr>
                <td class="style2" align="center">
                    <asp:Label CssClass="linkbutton" ID="Label1" runat="server" Text="Price:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" CssClass="linkbutton" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center">
                    <asp:Label ID="Label3" CssClass="linkbutton" runat="server" Text="Color:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" CssClass="linkbutton" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center">
                    <asp:Label ID="Label4" runat="server" CssClass="linkbutton" Text="Size:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1"  CssClass="textbox" runat="server" >
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>XL</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox" Visible="False" >
                        <asp:ListItem>28 Inches</asp:ListItem>
                        <asp:ListItem>30 Inches</asp:ListItem>
                        <asp:ListItem>32 Inches</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
            <td class="style2" align="center">
                <asp:Label ID="Label7" runat="server" Text="Quantity:" CssClass="linkbutton"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtqty" CssClass="textbox" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="linkbutton" runat="server" 
                    ControlToValidate="txtqty" ErrorMessage="Enter a number" 
                    ValidationExpression="^-[0-9]+$|^[0-9]+$"></asp:RegularExpressionValidator>
            </td>
            </tr>
            <tr>
            <td class="style2" align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            </tr>
            <tr>
            <td class="style2" align="center">
                <asp:Button ID="cmdCart" runat="server" Text="Add To Cart" />
                
            </td>
            <td>
                <asp:Button ID="cmdBack" runat="server" Text="Back" />
                
            </td>
            </tr>
        </table>
        
&nbsp;</div>
    </form>
</body>
</html>
