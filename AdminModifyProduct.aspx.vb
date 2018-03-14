Imports System.Data
Imports System.Data.SqlClient

Partial Class AdminModifyProduct
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim dt As DataTable
    Dim con As SqlConnection
    Dim sqlq, str As String
    Dim si As Integer


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()

        sqlq = "select * from product"
        da = New SqlDataAdapter(sqlq, con)
        ds = New DataSet
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()

    End Sub



    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        sqlq = "update product set price='" & Val(TextBox1.Text) & "' where productname='" & GridView1.Rows(Session("si")).Cells(2).Text & "'"
        da = New SqlDataAdapter(sqlq, con)
        ds = New DataSet
        da.Fill(ds)
        MsgBox("Price updated")

        Call gridfill()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        si = GridView1.SelectedIndex
        Session("si") = si
        GridView1.Rows(GridView1.SelectedIndex).BackColor = Drawing.Color.Chocolate
        Label1.Visible = True
        TextBox1.Visible = True
        Button1.Visible = True
    End Sub

    Public Sub gridfill()
        sqlq = "select * from product"
        da = New SqlDataAdapter(sqlq, con)
        ds = New DataSet
        da.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("LogId") = ""
        Session("Sno") = ""
        Session("Ono") = ""
        Response.Redirect("homesample.aspx")
    End Sub
End Class
