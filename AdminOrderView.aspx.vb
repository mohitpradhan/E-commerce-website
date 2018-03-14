Imports System.Data
Imports System.Data.SqlClient
Imports CrystalDecisions.Web
Imports CrystalDecisions.Shared
Imports CrystalDecisions.CrystalReports.Engine
Partial Class AdminOrderView
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim ds As DataTable
    Dim dt As DataSet
    Dim str As String
    Dim con As SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        connect()
        If IsPostBack = False Then
            DropDownList1.Items.Clear()

            combofill()
        End If
    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub
    Public Sub combofill()
        Dim s As String
        s = "select distinct(loginid) from orders"
        da = New SqlDataAdapter(s, con)
        dt = New DataSet
        da.Fill(dt)
        Dim i As Integer
        '    DropDownList1.Items.Clear()
        For i = 0 To dt.Tables(0).Rows.Count - 1
            DropDownList1.Items.Add(dt.Tables(0).Rows(i).Item(0))
        Next
        
    End Sub
    Public Sub gridfill()
        Dim s As String
        s = "select * from orders where loginid='" & DropDownList1.SelectedItem.Text & "'"
        da = New SqlDataAdapter(s, con)
        dt = New DataSet
        da.Fill(dt)
        GridView1.DataSource = dt.Tables(0)
        GridView1.DataBind()
    End Sub
    

    'Protected Sub CrystalReportViewer1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles CrystalReportViewer1.Load
    '    Dim s As String
    '    s = "select * from orders where ono=" & DropDownList1.SelectedItem.Text & ""
    '    da = New SqlDataAdapter(s, con)
    '    ds = New DataTable
    '    da.Fill(ds)
    '    Dim rr As New ReportDocument()
    '    rr.Load("E:\Project\CrystalReportOrder.rpt")
    '    rr.SetDataSource(ds)
    '    CrystalReportViewer1.ReportSource = rr
    '    CrystalReportViewer1.RefreshReport()
    'End Sub

    'Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
    'Dim si As Integer
    'si = GridView1.SelectedIndex
    'Dim f As String
    'f = GridView1.Rows(si).Cells(5).Text
    'Dim da As SqlDataAdapter
    'Dim dt As DataSet
    'Dim sqlq As String
    'sqlq = "update orders set status='Delivered' where ono=" & f & ""
    'da = New SqlDataAdapter(sqlq, con)
    'dt = New DataSet
    'da.Fill(dt)
    'Dim s As String
    'Dim da1 As SqlDataAdapter
    'Dim dt1 As DataSet
    's = "select * from orders"
    'da1 = New SqlDataAdapter(s, con)
    'dt1 = New DataSet
    'da1.Fill(dt1)
    'GridView1.DataSource = dt1.Tables(0)
    'GridView1.DataBind()
    ''GridView1.DataSource = dt.Tables(0)
    'GridView1.DataBind()
    'End Sub


    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Dim si As Integer
        si = GridView1.SelectedIndex
        Dim f, k As String
        f = GridView1.Rows(si).Cells(5).Text
        k = GridView1.Rows(si).Cells(1).Text
        Dim da As SqlDataAdapter
        Dim dt As DataSet
        Dim sqlq As String
        sqlq = "update orders set status='Delivered' where status='" & f & "' and ono=" & k & ""
        da = New SqlDataAdapter(sqlq, con)
        dt = New DataSet
        da.Fill(dt)
        Dim s As String
        Dim da1 As SqlDataAdapter
        Dim dt1 As DataSet
        s = "select * from orders"
        da1 = New SqlDataAdapter(s, con)
        dt1 = New DataSet
        da1.Fill(dt1)
        GridView1.DataSource = dt1.Tables(0)
        GridView1.DataBind()


    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim s As String
        s = DropDownList1.SelectedItem.Text
        gridfill()

    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("LogId") = ""
        Session("Sno") = ""
        Session("Ono") = ""
        Response.Redirect("homesample.aspx")
    End Sub
End Class
