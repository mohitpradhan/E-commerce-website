<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ChangePassword.aspx.vb" Inherits="ChangePassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" type="text/css" href="designStyleSheet.css" />
    <title>Untitled Page</title>
    <style type="text/css">

        .style1
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 426px">
        <br />
        <h2>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="linkbutton" 
                NavigateUrl="~/Homelogin.aspx">Home</asp:HyperLink>
        </h2>
        <h2>
            &nbsp;</h2>
        <h2>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                Font-Names="Lucida Handwriting" Font-Size="X-Large" ForeColor="#FF9933" 
                Text="Change Password:"></asp:Label>
        </h2>
        <table style="width:100%; height: 315px;">
            <tr>
                <td align="center" class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Enter LoginID :" Font-Bold="True" 
                        Font-Names="Lucida Handwriting" Font-Size="Large" ForeColor="#FFCC66"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="textbox" ID="txtloginid" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtloginid" ErrorMessage="Enter loginid"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Enter Old Password :" 
                        Font-Bold="True" Font-Names="Lucida Handwriting" Font-Size="Large" 
                        ForeColor="#FFCC66"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="textbox" ID="txtoldpass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtoldpass" ErrorMessage="Enter pasword"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Enter New Password :" 
                        Font-Bold="True" Font-Names="Lucida Handwriting" Font-Size="Large" 
                        ForeColor="#FFCC66"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="textbox" ID="txtnewpass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtnewpass" ErrorMessage="Enter new password"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Re-Type New Password :" 
                        Font-Bold="True" Font-Names="Lucida Handwriting" Font-Size="Large" 
                        ForeColor="#FFCC66"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtrenewpass" CssClass="textbox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtnewpass" ControlToValidate="txtrenewpass" 
                        ErrorMessage="Passwords do not match"></asp:CompareValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="Change" 
                        Width="100px" Font-Bold="True" Font-Names="Lucida Handwriting" 
                        Font-Size="Large" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
