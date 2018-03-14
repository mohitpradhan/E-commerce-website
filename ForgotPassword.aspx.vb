Imports System
Imports System.Data
Imports System.Data.Common
Imports System.Data.SqlClient
Partial Class ForgotPassword
    Inherits System.Web.UI.Page
    Dim sqlq, str As String
    Dim da As New SqlDataAdapter
    Dim dt As New DataTable
    Dim con As New SqlConnection
    Dim ds As DataSet
    Dim c, b As String
    Dim i As Integer
    Dim a As SqlCommand
    Dim reader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()
        'txtloginid.Text = Session("loginid")
    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'sqlq = "select question,answer from Login where loginid='" & txtloginid.Text & "' and "
        'sqlq = "select * from Login"
        'da = New SqlDataAdapter(sqlq, con)
        'ds = New DataSet
        'da.Fill(ds)
        ''Dim q As String
        ''q = dt.Rows(0).Item(0)
        ''Dim a As String
        ''a = dt.Rows(0).Item(1)
        'If ds.Tables(0).Rows.Count - 1 Then
        '    'If ds.Tables(0).Rows.Count = 1 Then
        '    DropDownList1.Text = ds.Tables(0).Rows(i).Item(2)
        '    b = ds.Tables(0).Rows(i).Item(3)
        'End If
        'c = txtans.Text
        'If b = c Then
        If DropDownList1.Text <> "" And txtans.Text <> "" Then


            sqlq = "Select password from Login where loginid='" & txtloginid.Text & "' and question='" & DropDownList1.Text & "' and answer='" & txtans.Text & "'"
            da = New SqlDataAdapter(sqlq, con)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                txtgetpass.Text = dt.Rows(0).Item(0)
                'MsgBox("valid")
            Else
                MsgBox("Invalid Loginid or Password", MsgBoxStyle.Critical, "Invalid")
                txtgetpass.Text = ""
            End If
            'Else
            'MsgBox("plz fill all the textboxes")

        End If

        'Else
        'MsgBox("invalid")
        'End If


    End Sub

End Class
