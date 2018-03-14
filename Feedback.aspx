<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Feedback.aspx.vb" Inherits="Feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link rel="Stylesheet" type="text/css" href="designStyleSheet.css" />
    <style type="text/css">
        .style1
        {
            width: 388px;
        }
        .style2
        {
            width: 388px;
            height: 34px;
        }
        .style3
        {
            height: 34px;
        }
    </style>
</head>
<body background="images/WinXP_108.jpg">
    <form id="form1" runat="server">
    <div style="height: 500px">
        <h2>&nbsp;</h2>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="linkbutton" 
                NavigateUrl="~/Homelogin.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkbutton">Logout</asp:LinkButton>
&nbsp;
        </h2>
        <h2>&nbsp;</h2>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" CssClass="linkbutton" runat="server" 
                Text="Feedback Form :" Font-Size="X-Large"></asp:Label>
        </h2>
        <table style="width:100%; height: 318px;">
            <tr>
                <td class="style2">
                    </td>
                <td class="style3">
                    </td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:Label CssClass="linkbutton" ID="Label2" runat="server" Text="Enter LoginID :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="textbox" ID="txtloginid" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:Label CssClass="linkbutton" ID="Label3" runat="server" Text="Enter EmailID :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="textbox" ID="txtemailid" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator  CssClass="linkbutton" ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemailid" ErrorMessage="Enter Proper Email ID" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtemailid" CssClass="label" ErrorMessage="Enter emailid"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:Label ID="Label4" runat="server" CssClass="linkbutton" Text="Select Feedback Type :"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="optcomplaint" runat="server"  CssClass="linkbutton" GroupName="a1" 
                        Text="Complaint" /><br>
                    <asp:RadioButton ID="optappreciation" runat="server" CssClass="linkbutton" GroupName="a1" 
                        Text="Appreciation" /><br>
                    <asp:RadioButton ID="optsuggestion" CssClass="linkbutton" runat="server" GroupName="a1" 
                        Text="Suggestion" Checked="True" />
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
                <td class="style1" align="center">
                    <asp:Label ID="Label5" runat="server" CssClass="linkbutton" Text="Enter your Feedback Here :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfdbk" CssClass="textbox" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtfdbk" CssClass="label" ErrorMessage="Enter a Feedback"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    <center>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Post Feedback" Height="33px" 
            Width="137px" />
    </center>
    </div>
    </form>
</body>
</html>
