Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class Feedback
    Inherits System.Web.UI.Page
    Dim sqlq, str As String
    Dim da As SqlDataAdapter
    Dim dt As DataTable
    Dim con As New SqlConnection
    Dim fbid As String
    Dim cmd As SqlCommand
    Dim i As Integer
    Dim type As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()
        txtloginid.Text = Session("LogId")
        txtloginid.Enabled = False

    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub

    Protected Sub RadioButton2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles optappreciation.CheckedChanged
        If optappreciation.Checked = True Then
            type = "Appreciation"

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Call generatefbid()
        'txtemailid.Text = ("Emailid")
        sqlq = "insert into feedback(fbid,fbtype,emailid,fdbk) values('" & fbid & "','" & type & "','" & txtemailid.Text & "','" & txtfdbk.Text & "')"
        cmd = New SqlCommand(sqlq, con)
        cmd.ExecuteNonQuery()
        MsgBox("Your Valuable Feedback Would be considered and Thank You for the Response", vbInformation, "Thank You")
        Response.Redirect("Homelogin.aspx")
    End Sub
    Public Sub generatefbid()
        sqlq = "select max(substring(fbid,3,len(fbid))) from feedback"
        Dim ds1 As New DataSet
        da = New SqlDataAdapter(sqlq, con)
        da.Fill(ds1)
        If ds1.Tables(0).Rows(0).IsNull(0) Then
            fbid = "Fb" & 1
        Else
            fbid = "Fb" & ds1.Tables(0).Rows(0).Item(0) + 1
        End If
    End Sub

    Protected Sub optcomplaint_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles optcomplaint.CheckedChanged
        If optcomplaint.Checked = True Then
            type = "Complaint"
        End If
    End Sub

    Protected Sub optsuggestion_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles optsuggestion.CheckedChanged
        If optsuggestion.Checked = True Then
            type = "Suggestion"
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("LogId") = ""
        Session("Sno") = ""
        Session("Ono") = ""
        Response.Redirect("homesample.aspx")
    End Sub
End Class
