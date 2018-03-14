<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Stylesheet" type="text/css" href="designStyleSheet.css" />
    <title>Registration Page</title>
    <script type="text/javascript" >
    
function isNumeric(keyCode)
{
return ((keyCode >= 48 && keyCode <= 57)|| keyCode == 8 || keyCode == 9)
}

function isAlpha(keyCode)
{
return ((keyCode >= 97 && keyCode <= 122) || keyCode == 8 || keyCode == 9)
}

function isAlphaNumeric(keyCode)
{
return ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 97 && keyCode <= 122) || keyCode == 8 || keyCode == 9)
}

    </script>
    <style type="text/css">


        .style1
        {
            width: 263px;
        }
        .style2
        {
            width: 263px;
            height: 38px;
        }
        .style3
        {
            height: 38px;
            width: 342px;
        }
        .style4
        {
            width: 263px;
            height: 36px;
        }
        .style5
        {
            height: 36px;
            width: 342px;
        }
        .style6
        {
            height: 39px;
            width: 342px;
        }
        .style7
        {
            height: 78px;
            width: 342px;
        }
        .style8
        {
            height: 39px;
            width: 263px;
        }
        .style9
        {
            height: 78px;
            width: 263px;
        }
        .style10
        {
            width: 342px;
        }
        #mohit
        {
            height: 656px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div  id="mohit" >
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
  <center>
                <div style="overflow:auto; height: 496px;">
        <table style="width: 90%; height: 354px;" align="right">
            <tr>
                <td class="style1">
                    <h3>
                        <asp:Label ID="Label15" CssClass="linkbutton" runat="server" ForeColor="#FFCC00" 
                            Text="Personal Details:" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </h3>
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Label ID="Label3" CssClass="linkbutton" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox CssClass="textbox" ID="txtfname" runat="server" keypress="return isAlpha(event.keyCode);"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtfname" ErrorMessage="Enter only alphabets" 
                        ValidationExpression="^[a-zA-Z]+$" CssClass="label"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Label ID="Label4" CssClass="linkbutton" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtlname" CssClass="textbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtfname" ErrorMessage="Enter only alphabets" 
                        ValidationExpression="^[a-zA-Z]+$" CssClass="label"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Label ID="Label5" runat="server" CssClass="linkbutton" Text="Contact Number:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtcontact" CssClass="textbox" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                        CssClass="linkbutton" runat="server" 
                        ErrorMessage="Enter 10 numbers max" 
                        ValidationExpression="\d{10}" ControlToValidate="txtcontact"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Label ID="Label6" runat="server" CssClass="linkbutton" Text="Address:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtaddress" CssClass="textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Label ID="Label7" runat="server" CssClass="linkbutton" Text="Gender:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Label ID="Label8" runat="server" CssClass="linkbutton" Text="City:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtcity" runat="server"  CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <h3>
                        <asp:Label CssClass="linkbutton" ID="Label16" runat="server" 
                            Text="Login Details:" Font-Bold="True" Font-Size="X-Large" ForeColor="#FFCC00"></asp:Label>
                    </h3>
                </td>
                <td class="style5">
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Label ID="Label9" CssClass="linkbutton" runat="server" Text="Enter New LoginID:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtloginid" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="linkbutton" ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtloginid" ErrorMessage="Enter loginid"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Label ID="Label10" runat="server" CssClass="linkbutton" Text="Enter New Password:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtpass" CssClass="textbox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="linkbutton" runat="server" 
                        ControlToValidate="txtpass" ErrorMessage="Enter password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Label ID="Label13" runat="server" CssClass="linkbutton" Text="Re-enter Password:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtrepass" CssClass="textbox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server"  CssClass="linkbutton"
                        ControlToCompare="txtpass" ControlToValidate="txtrepass" 
                        ErrorMessage="Passwords do not match" SetFocusOnError="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style8">
                    <asp:Label ID="Label11" runat="server" Text="Enter Security Question:" CssClass="linkbutton"></asp:Label>
                </td>
                <td class="style6">
                    <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="textbox">
                        <asp:ListItem>What is your age?</asp:ListItem>
                        <asp:ListItem>What is your hobby?</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style9" align="center">
                    <asp:Label ID="Label12" runat="server" Text="Enter the Answer:"  CssClass="linkbutton"></asp:Label>
                    </td>
                <td class="style7">
                    <asp:TextBox ID="txtans" CssClass="textbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  CssClass="linkbutton"
                        ErrorMessage="Enter Answer" ControlToValidate="txtans"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9" align="center">
                    <asp:Label CssClass="linkbutton" ID="Label17" runat="server" Text="Note:The answer you entered will b asked if you forget
your password."></asp:Label>
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdRegister" runat="server" Height="33px" Text="Register" Width="160px" />    
            </td>
            </tr>
            <tr>
            <td colspan="2">
                &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <br />
        <br />
        </div>
        </center>
    </div>
</form>
</body>
</html>
