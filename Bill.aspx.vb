Imports System.Data
Imports System.Data.SqlClient
Imports CrystalDecisions.Web
Imports CrystalDecisions.Shared
Imports CrystalDecisions.CrystalReports.Engine
Partial Class Bill
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim ds As DataTable
    Dim str As String
    Dim con As SqlConnection
    Dim a As Integer
    'Public Sub combofill()
    '    Dim s As String
    '    s = "select distinct(loginid) from orders"
    '    da = New SqlDataAdapter(s, con)
    '    ds = New DataSet
    '    da.Fill(ds)
    '    Dim i As Integer
    '    For i = 0 To ds.Tables(0).Rows.Count - 1
    '        DropDownList1.Items.Add(ds.Tables(0).Rows(i).Item(0))
    '    Next
    'End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Call connect()
        Dim s As String
        connect()
        Dim da As SqlDataAdapter
        Dim ds As DataTable
        a = Session("Ono")
        s = "select loginid,itemno,productname,quantity,color,sizeof,price from Shopping_Details where orderno=" & a & " and loginid='" & Session("LogId") & "'"
        da = New SqlDataAdapter(s, con)
        ds = New DataTable
        da.Fill(ds)
        Dim ww As New ReportDocument()
        ww.Load("E:\Project\Bill.rpt")
        ww.SetDataSource(ds)
        CrystalReportViewer1.ReportSource = ww
        CrystalReportViewer1.RefreshReport()
        'If IsPostBack = False Then
        '    DropDownList1.Items.Clear()
        '    combofill()
        'End If


        'CrystalReportViewer1.SelectionFormula = "{orders.loginid}='" & Session("LogId") & "'"
        'CrystalReportViewer1.RefreshReport()
        'CrystalReportViewer1.SelectionFormula = "{Shopping_Details.orderno}='" & a & "'"
        'CrystalReportViewer1.RefreshReport()
    End Sub

    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub

    'Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
    '    CrystalReportViewer1.SelectionFormula = "{orders.loginid}='" & DropDownList1.SelectedItem.Text & "'"
    '    CrystalReportViewer1.RefreshReport()
    'End Sub

   
    Protected Sub CrystalReportViewer1_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles CrystalReportViewer1.Init
        
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("LogId") = ""
        Session("Sno") = ""
        Session("Ono") = ""
        Response.Redirect("homesample.aspx")
    End Sub
End Class
