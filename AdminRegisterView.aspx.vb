Imports System
Imports System.Data
Imports System.Data.Common
Imports System.Data.SqlClient

Partial Class AdminRegisterView
    Inherits System.Web.UI.Page
    Dim sqlq, str As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim con As New SqlConnection
    Dim cmd As SqlCommand
    Dim abc As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()
        Call retrieve()
    End Sub
    Public Sub retrieve()
        sqlq = "select * from customer"
        da = New SqlDataAdapter(sqlq, con)
        ds = New DataSet
        da.Fill(ds)

        GridView2.DataSource = ds.Tables(0)
        GridView2.DataBind()

    End Sub

    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub

    Protected Sub GridView2_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView2.RowCommand
        ' MsgBox(GridView2.Rows(e.CommandArgument).Cells(2).Text)

        abc = GridView2.Rows(e.CommandArgument).Cells(2).Text
        Dim d As Integer
        d = MsgBox("Are you Sure?", MsgBoxStyle.YesNo)

        If d = vbYes Then
            sqlq = "delete from customer where loginid='" & abc & "'"
            da = New SqlDataAdapter(sqlq, con)
            ds = New DataSet
            da.Fill(ds)
            Call retrieve()
        Else
            Response.Redirect("AdminRegisterView.aspx")
        End If
    End Sub

    'Protected Sub GridView2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView2.SelectedIndexChanged
    '    Dim si As Integer
    '    si = GridView2.SelectedIndex
    '    GridView2.Rows(si).BackColor = Drawing.Color.Blue

    'End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Session("LogId") = ""
        Session("Sno") = ""
        Session("Ono") = ""
        Response.Redirect("homesample.aspx")
    End Sub
End Class