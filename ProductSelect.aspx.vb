Imports System
Imports System.Data
Imports System.Data.Common
Imports System.Data.SqlClient
Partial Class ProductSelect
    Inherits System.Web.UI.Page
    Dim sqlq, str As String
    Dim da As SqlDataAdapter
    Dim dt As DataTable
    Dim con As New SqlConnection

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If RadioButtonList1.Items(0).Selected = True Then
            Session("Formals") = "C1"
            Response.Redirect("Formals.aspx")

        End If
        If RadioButtonList1.Items(1).Selected = True Then
            Session("Casuals") = "C2"
            Response.Redirect("Casuals.aspx")

        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()
        If Session("Logid") = "" Then
            LinkButton2.Visible = False
        End If

        'If Page.IsPostBack Then
        ''g = "select case when count(sdno)=0 then 1 else (max(sdno)+1) end from shopping_details"
        ' ''g = "select case when count(sdno)=0 then 'S1' else 'S' + cast(max(substring(sdno,2,len(sdno))))as varchar end from shopping_Details"
        ''da = New SqlDataAdapter(g, con)
        ''dt = New DataTable
        ''da.Fill(dt)
        ''t = dt.Rows(0).Item(0)

        ''Session("Sno") = t
        'End If
    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        If Session("Logid") <> "" Then
            Response.Redirect("Homelogin.aspx")
        Else
            Response.Redirect("homesample.aspx")
        End If
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Session("Logid") = ""
        Response.Redirect("homesample.aspx")
    End Sub
End Class
