<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Homelogin.aspx.vb" Inherits="Homelogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link rel="Stylesheet" type="text/css" href="stylesheet.css" />
    <style type="text/css">
        #form1
        {
            height: 21px;
        }
        .style1
        {
            width: 643px;
        }
    </style>
</head>
<body background="images/samplebg.png">
    
       
    
    <form id="form1" runat="server">
    
  <div style="position:absolute;margin-top:30px;margin-left:10px; top: 15px; left: 10px; height: 538px;">  
    
    
    
    
    
    <p>
        <asp:Image ID="Image3" runat="server" Height="74px" ImageUrl="~/images/ff2.png" 
            Width="671px" />
      </p>
      <center>
          <asp:Menu ID="Menu1" runat="server" BorderStyle="None" Font-Bold="True" 
    Font-Size="X-Large" ForeColor="White" Height="50px" Orientation="Horizontal" 
    Width="1000px" Font-Names="Lucida Handwriting">
        <StaticSelectedStyle BackColor="Black" />
        <DynamicHoverStyle BackColor="#006600" />
        <DynamicMenuStyle BackColor="#006600" />
        <DynamicSelectedStyle BackColor="Black" />
        <DynamicMenuItemStyle BackColor="#669900" Font-Size="Medium" />
        <StaticHoverStyle BackColor="#006600" />
        <Items>
            <asp:MenuItem NavigateUrl="~/ProductSelect.aspx" Text="View Products" 
                Value="Products">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Feedback.aspx" Text="Feedback" Value="Feedback">
            </asp:MenuItem>
            <asp:MenuItem Text="Settings" 
                Value="Settings">
                <asp:MenuItem NavigateUrl="~/ChangePassword.aspx" Text="Change Password" 
                    Value="Change Password"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Shipping" Value="About Us" NavigateUrl="~/Shipping.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Logout" Value="Logout"></asp:MenuItem>
        </Items>
</asp:Menu>

</center>
    <br />
    <div style="overflow:auto; height: 426px; width: 955px;">
      <table>
      <tr>
      <td class="style1">
          <asp:AdRotator ID="AdRotator2" runat="server" 
              AdvertisementFile="~/mainad.xml" />
      </td>
      <td>
                       
                   <asp:ScriptManager ID="ScriptManager1" runat="server">
      </asp:ScriptManager>
                   <asp:Timer ID="Timer1" runat="server" Interval="3000">
      </asp:Timer>
                   <asp:Timer ID="Timer2" runat="server" Interval="6000">
                   </asp:Timer>
      <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/newad.xml" 
                           Height="418px" Width="280px" />
      </td>
      </tr>
<%--      <tr>
      <td colspan="2">
          <asp:HyperLink ID="HyperLink2" runat="server" CssClass="label" 
              Font-Size="X-Large">Shipping Details</asp:HyperLink>
      </td>
      </tr>
--%>      </table>
      </div>
    
    </div>
    <asp:Image ID="Image1" runat="server" Height="134px" ImageAlign="Right" 
        ImageUrl="~/images/girl.png" Width="342px" />
    
</form>
</body>
</html>
