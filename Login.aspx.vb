Imports System
Imports System.Data
Imports System.Data.Common
Imports System.Data.SqlClient
Partial Class Login
    Inherits System.Web.UI.Page
    Dim sqlq, str As String
    Dim da As SqlDataAdapter
    Dim dt As DataTable
    Dim da1 As New SqlDataAdapter
    Dim dt1 As New DataTable
    Dim da2 As New SqlDataAdapter
    Dim dt2 As New DataTable
    Dim con As New SqlConnection
    Dim a As SqlCommand
    Dim i As Integer
    Dim c, b As String
    Dim utype As String
    Dim count As Integer
    Dim cnt As Integer
    Dim atmpt As Integer

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Page.IsPostBack = True Then
            'If Session("count") >= 3 Then
            '    MsgBox("Ur attempts r over")
            'Else

            'End If
            Dim da As New SqlDataAdapter
            Dim dt As New DataTable

            sqlq = "select Type from login where loginid='" & txtloginid.Text & "' and password = '" & txtpass.Text & "'"
            da = New SqlDataAdapter(sqlq, con)
            dt = New DataTable
            da.Fill(dt)

            If dt.Rows.Count > 0 Then
                utype = dt.Rows(0).Item(0)
                Session("type") = utype
                If utype = "Admin" Then
                    Response.Redirect("AdminRegisterView.aspx")
                Else
                    Session("LogId") = txtloginid.Text
                    Dim g, t As String

                    'g = "select (max(sdno)+1) from shopping_details"
                    g = "select case when count(sdno)=0 then 1 else (max(sdno)+1) end from shopping_details"
                    da1 = New SqlDataAdapter(g, con)
                    dt1 = New DataTable
                    da1.Fill(dt1)
                    t = dt1.Rows(0).Item(0)

                    Session("Sno") = t
                    Dim w As String
                    'w = "select (max(orderno)+1) from shopping_details"
                    w = "select case when count(orderno)=0 then 1 else (max(orderno)+1) end from shopping_details"
                    '''''''''''''''''''


                    da2 = New SqlDataAdapter(w, con)
                    dt2 = New DataTable
                    da2.Fill(dt2)
                    Try
                        Session("Ono") = dt2.Rows(0).Item(0)
                    Catch ex As Exception
                        Session("Ono") = 1
                    End Try

                    Session("count") = 0
                    'End If
                    Response.Redirect("Homelogin.aspx")

                End If
            Else
                'Session("count") = 1
                'count = Session("count")
                'Session("count") = count + 1
                MsgBox("Invalid Loginid and Password", MsgBoxStyle.Critical, "Invalid")


                Session("cnt1") = Session("cnt1") + 1
                'Session("cnt1") = cnt + 1
                cnt = Session("cnt1")
                atmpt = 3 - cnt
                If cnt <= 3 Then

                    MsgBox("U hav " & atmpt & " attempts left", MsgBoxStyle.Information, "Attempts")
                    'Session("cnt") = 0

                End If
                If cnt = 3 Then
                    MsgBox("Your Attempts are over.Please Login after sometime!", MsgBoxStyle.Critical, "Attempts Over")
                    'cnt = 0
                    Session.Abandon()
                    cnt = 0
                    Response.Redirect("HomeSample.aspx")
                End If
                'If Session("count") >= 3 Then
                '    MsgBox("ur attempt r over")
                '    Session("count") = "0"

            End If
            End If

        'End If
        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()
        'Session("cnt") = 0
        'Session("Sno") = ""
        'Session("Ono") = ""
    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub
End Class
