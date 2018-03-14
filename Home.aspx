<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style2
        {
            width: 500px;
        }
        .style3
        {
            width: 500px;
            height: 333px;
        }
        .style4
        {
            height: 333px;
        }
    </style>
    
</head>
<body bgcolor="black">
    <form id="form1" runat="server">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <div>
           <asp:ImageMap ID="ImageMap1" runat="server" Height="137px" Width="929px" 
               ImageUrl="~/images/Welcome[1].gif" style="margin-left: 0px">
            </asp:ImageMap>
           <br />
           <asp:Menu ID="Menu1" runat="server" Height="50px" Orientation="Horizontal" 
               Width="925px" ForeColor="White" Font-Bold ="True" Font-Size="X-Large" 
               BackColor="Black" >
               <StaticMenuStyle BackColor="Black" />
               <StaticSelectedStyle BackColor="Black" />
               <StaticMenuItemStyle BackColor="Black" />
               <DynamicHoverStyle BackColor="#0033CC" />
               <DynamicMenuStyle BackColor="#CC33FF" />
               <DynamicSelectedStyle BackColor="Black" />
               <DynamicMenuItemStyle BackColor="Gray" />
               <StaticHoverStyle BackColor="Blue" />
               <Items>
                   
                   <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Home.aspx">
                       <asp:MenuItem Text="Sign In" Value="Sign In" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                       <asp:MenuItem Text="Register" Value="Register" 
                           NavigateUrl="~/Registration.aspx"></asp:MenuItem>
                   </asp:MenuItem>
                   
                   <asp:MenuItem Text="Products" Value="Products" 
                       NavigateUrl="~/ProductSelect.aspx"></asp:MenuItem>
                   
                   <asp:MenuItem Text="Log In" Value="Log In" NavigateUrl="~/Login.aspx">
                       <asp:MenuItem Text="Forgot Password" Value="Forgot Password" 
                           NavigateUrl="~/ForgotPassword.aspx"></asp:MenuItem>
                   
                   </asp:MenuItem>
                   
                   <asp:MenuItem Text="Register" Value="Register" 
                       NavigateUrl="~/Registration.aspx"></asp:MenuItem>
                   
                   <asp:MenuItem Text="About Us" Value="About Us"></asp:MenuItem>
                   
               </Items>
           </asp:Menu>
           </div>
           <br />
           <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div style="height: 1056px">    
         
          <center> 
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FFCC00" 
               Height="49px" Text="      We have variety of Formals and Casuals" 
               Width="621px" Font-Names="Lucida Handwriting" Font-Size="X-Large"></asp:Label>
                    &nbsp;<br />
           </center>
           <br />
           <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <table style="width: 100%; height: 396px;" >
               <tr>
                   <td class="style2">
                       &nbsp;</td>
                   <td>
                       &nbsp;</td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style2">
                       <asp:Image ID="Image1" runat="server" ImageUrl="~/images/mm-2011-04.jpg" 
                           Width="500px" />
                   </td>
                   <td>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                   <td>
                       <asp:Image ID="Image2" runat="server" Height="300px" 
                           ImageUrl="~/images/T-Shirts-Design.jpg" style="margin-left: 0px" 
                           Width="293px" />
                   </td>
               </tr>
               <tr>
                   <td class="style3">
                       <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/adxml.xml" 
                           Height="250px" Width="250px" />
                   </td>
                   <td class="style4">
                       </td>
                   <td class="style4">
                       </td>
               </tr>
           </table>
            
           
           </div>
    
    </form>
    
</body>
</html>
