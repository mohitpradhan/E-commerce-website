Imports System.Data
Imports System.Data.SqlClient
Partial Class Homelogin
    Inherits System.Web.UI.Page
    Dim da, da1 As SqlDataAdapter
    Dim ds, ds1 As DataSet
    Dim con As SqlConnection
    Dim str As String
    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        If Menu1.SelectedItem.Text = "Logout" Then
            Session("LogId") = ""
            Session("Sno") = ""
            Session("Ono") = ""
            Response.Redirect("homesample.aspx")
        End If
        

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim s, s1 As String
        connect()
        s = "select (max(sdno)+1) from shopping_details"
        da = New SqlDataAdapter(s, con)
        ds = New DataSet
        da.Fill(ds)

        Session("Sno") = ds.Tables(0).Rows(0).Item(0)

        s1 = "select (max(orderno)+1) from shopping_details"
        da1 = New SqlDataAdapter(s, con)
        ds1 = New DataSet
        da1.Fill(ds1)
        Session("Ono") = ds.Tables(0).Rows(0).Item(0)
    End Sub

    Protected Sub Timer2_Tick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Timer2.Tick
        Page_Load(sender, e)
    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub
End Class
