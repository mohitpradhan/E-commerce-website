<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" Theme="" StyleSheetTheme="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="Stylesheet" type="text/css" href="designstylesheet.css" />
    <title>Login Page</title>
    <style type="text/css">

        .style1
        {
        }
        .style2
        {
            width: 297px;
        }
        .style3
        {
            width: 376px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 559px; margin-top: 0px;">
        <br />
        <br />
        <br />
        <br />
        
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />   
         <br />
        <h1>
            
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Names="Lucida Handwriting" Font-Size="XX-Large" ForeColor="#FF9933" 
                Text="Log In :"></asp:Label>
            
            
            
            </h1>
        <table style="width:100%; height: 315px;">
            
            <tr>
                
                <td align="center" class="style3">
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Label ID="Label1" runat="server" Text="Enter LoginID:" Font-Bold="True" 
                        Font-Italic="True" Font-Names="Lucida Handwriting" Font-Size="Large" 
                        ForeColor="#FFCC66"></asp:Label>
                </td>
                <td align="center" class="style2">
                    
                    <asp:TextBox ID="txtloginid" runat="server" TabIndex="1" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtloginid" ErrorMessage="*Enter Loginid" 
                        Font-Size="Large" ForeColor="#FFCC66"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                
                <td align="center" class="style3">
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Label ID="Label2" runat="server" Text="Enter Password:" Font-Bold="True" 
                        Font-Italic="True" Font-Names="Lucida Handwriting" Font-Size="Large" 
                        ForeColor="#FFCC66"></asp:Label>
                </td>
                <td align="center" class="style2">
                    
                    <asp:TextBox ID="txtpass" runat="server" TabIndex="2" TextMode="Password" 
                        Font-Size="X-Large"></asp:TextBox>
                </td>
                <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtpass" ErrorMessage="*Enter Password" 
                        Font-Size="Large" ForeColor="#FFCC66"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                
                <td class="style1" colspan="2">
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Button ID="Button1" runat="server" Text="Sign In" TabIndex="3" 
                        Font-Bold="True" Font-Names="Lucida Handwriting" Font-Size="Large" 
                        ForeColor="#000066" />
                
                </td>
                <td>
                    
                    &nbsp;</td>
            </tr>
            <tr>
                
                <td class="style3">
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" 
                        Font-Bold="True" ForeColor="#FFCC66" Font-Size="Large">Not Yet Registered? Register Here.</asp:HyperLink>
                </td>
                <td class="style2">
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:HyperLink ID="HyperLink3" runat="server" 
                        NavigateUrl="~/ForgotPassword.aspx" Font-Bold="True" ForeColor="#FFCC66" 
                        Font-Size="Large">Forgot 
                    Password?</asp:HyperLink>
                </td>
                <td>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl="~/ChangePassword.aspx" Font-Bold="True" ForeColor="#FFCC66" 
                        Font-Size="Large">Change 
                    Password.</asp:HyperLink>
                </td>
            </tr>
        </table>
   
    &nbsp;</div>

</form>
</body>
</html>
