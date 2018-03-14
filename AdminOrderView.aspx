<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminOrderView.aspx.vb" Inherits="AdminOrderView" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" type="text/css" href="designStyleSheet.css" />
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 579px">
    
       
    
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkbutton">Logout</asp:LinkButton>
        <br />
        <br />
        <br />
    
       
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
       
    
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="linkbutton" 
            NavigateUrl="~/AdminFeedbackView.aspx" Font-Bold="True" Font-Size="Medium">View 
            Feedbacks</asp:HyperLink>
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="linkbutton" 
            NavigateUrl="~/AdminRegisterView.aspx" Font-Bold="True" Font-Size="Medium">View Registeration</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="linkbutton" Font-Bold="True" 
            Font-Size="Medium" Font-Underline="True" 
            NavigateUrl="~/AdminUpdateProducts.aspx">Update Products</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="linkbutton" Font-Bold="True" 
            Font-Size="Medium" Font-Underline="True" 
            NavigateUrl="~/AdminModifyProduct.aspx">Modify Product</asp:HyperLink>
       
        &nbsp;
    
            <br />
        <br />
        <br />
<center>
        <asp:Label CssClass="label" ID="Label2" runat="server" Text="Orders" 
            Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Strikeout="False" 
            Font-Underline="True" ForeColor="#FFCC00"></asp:Label>
        <br />
        <br />

    
            <br />

    
            <asp:Label CssClass="label" ID="Label1" runat="server" 
            Text="Select Login Id:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                Height="23px" Width="122px">
            </asp:DropDownList>
        
            <br />
    
        <br />
&nbsp;<div style="overflow:auto; height: 190px;"><asp:GridView ID="GridView1" CssClass="label" runat="server" Width="398px">
            <Columns>
                <asp:CommandField HeaderText="Delivered" ShowSelectButton="True" 
                    SelectText="Delivered" />
            </Columns>
        </asp:GridView>
        </div>
    </center>
    </div>
    </form>
</body>
</html>
