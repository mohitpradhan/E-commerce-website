Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports Email

Partial Class AdminFeedbackView
    Inherits System.Web.UI.Page
    Dim sqlq, str As String
    Dim da As SqlDataAdapter
    Dim dt As DataTable
    Dim con As New SqlConnection
    Dim cmd As SqlCommand
    Dim abc As String
    Dim mail As Email
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("abc").ConnectionString)
        con.Open()


    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        abc = GridView1.Rows(e.CommandArgument).Cells(0).Text

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        sqlq = "select emailid from feedback where fbid='" & abc & "'"
        da = New SqlDataAdapter(sqlq, con)
        Dim ds As New DataSet
        da.Fill(ds)

        txtemailid.Text = ds.Tables(0).Rows(0).Item(0)

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim c As Integer
        c = Email.SendMail("pradhanmohit310@gmail.com", "pswd", LCase(Trim(txtemailid.Text)), "testReply", txtreply.Text)
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("LogId") = ""
        Session("Sno") = ""
        Session("Ono") = ""
        Response.Redirect("homesample.aspx")
    End Sub
End Class
