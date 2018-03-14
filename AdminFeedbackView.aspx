<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminFeedbackView.aspx.vb" Inherits="AdminFeedbackView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" type="text/css" href="designStyleSheet.css" />
    <title>Untitled Page</title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
    <div style="height: 733px">
    
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkbutton">Logout</asp:LinkButton>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="linkbutton" Font-Bold="True" 
            Font-Size="Medium" Font-Underline="True" 
            NavigateUrl="~/AdminUpdateProducts.aspx">Update Products</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="linkbutton" Font-Bold="True" 
            Font-Size="Medium" Font-Underline="True" 
            NavigateUrl="~/AdminModifyProduct.aspx">Modify Product</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="linkbutton" 
            NavigateUrl="~/AdminRegisterView.aspx" Font-Bold="True" Font-Size="Medium">View Registeration</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="linkbutton" 
            NavigateUrl="~/AdminOrderView.aspx" Font-Bold="True" Font-Size="Medium">View Orders</asp:HyperLink>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label2" runat="server" CssClass="product" Font-Bold="True" 
            Font-Size="X-Large" Font-Underline="True" Text="Feedbacks"></asp:Label>
        <br />
        <br />
        <br />
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="fbid" DataSourceID="SqlDataSource2" Height="272px" 
            Width="612px" Font-Bold="False" Font-Names="Lucida Handwriting" 
            Font-Size="Large" ForeColor="#FFCC66">
            <Columns>
                <asp:BoundField DataField="fbid" HeaderText="fbid" ReadOnly="True" 
                    SortExpression="fbid" />
                <asp:BoundField DataField="fbtype" HeaderText="fbtype" 
                    SortExpression="fbtype" />
                <asp:BoundField DataField="emailid" HeaderText="emailid" 
                    SortExpression="emailid" />
                <asp:BoundField DataField="fdbk" HeaderText="fdbk" SortExpression="fdbk" />
                <asp:ButtonField CommandName="select" Text="Reply" />
            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Cloth shopConnectionString2 %>" 
            SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
    
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtreply" runat="server" Height="56px" TextMode="MultiLine" 
            Width="443px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Email ID" Font-Bold="True" 
            Font-Names="Lucida Handwriting" ForeColor="#FFCC66"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtemailid" runat="server" Height="24px" Width="315px" 
            Enabled="False"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="27px" Text="Send" 
            Width="123px" />
    
    </div>
    </form>
    </center>
</body>
</html>
