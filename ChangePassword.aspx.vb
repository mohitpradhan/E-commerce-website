Imports System
Imports System.Data
Imports System.Data.Common
Imports System.Data.SqlClient
Partial Class ChangePassword
    Inherits System.Web.UI.Page
    Dim sqlq, str As String
    Dim da As SqlDataAdapter
    Dim dt As DataTable
    Dim ds As DataSet
    Dim reader As SqlDataReader
    Dim con As New SqlConnection
    Dim sqlcmd As SqlCommand
    Dim i As Integer

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        'reader.Close()
        sqlq = "select * from Login where loginid='" & txtloginid.Text & "' and password='" & txtoldpass.Text & "'"
        sqlcmd = New SqlCommand(sqlq, con)
        reader = sqlcmd.ExecuteReader()
        reader.Read()
        If reader.HasRows = True Then
            If txtnewpass.Text = txtrenewpass.Text Then
                reader.Close()
                sqlq = "update Login set password='" & txtrenewpass.Text & "' where password='" & txtoldpass.Text & "'"
                sqlcmd = New SqlCommand(sqlq, con)
                sqlcmd.ExecuteNonQuery()
                MsgBox("Password Changed", MsgBoxStyle.Information, "Info")
                reader.Close()
                Response.Redirect("Login.aspx")
            Else
                MsgBox("Retype New Password", MsgBoxStyle.Information, "Info")
                reader.Close()
                Response.Redirect("ChangePassword.aspx")
            End If
        Else
            MsgBox("Enter proper Details", MsgBoxStyle.Exclamation, "Info")
            reader.Close()
            Response.Redirect("ChangePassword.aspx")
        End If
        reader.Close()










        'sqlq = "update Login set password='" & txtrenewpass.Text & "' where password='" & txtoldpass.Text & "'"
        'a = New SqlCommand
        'a.ExecuteNonQuery()


        'da = New SqlDataAdapter(sqlq, con)
        'dt = New DataTable
        'da.Fill(dt)
        'If dt.Rows.Count > 0 = True Then
        ' If dt.Rows(0).Item(1) Then

        ' End If
        'If ds.Tables(0).Rows(i).Item(0) Then

        ' MsgBox("record change")
        'Else
        'MsgBox("Failed")
        'End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()
    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub
End Class
