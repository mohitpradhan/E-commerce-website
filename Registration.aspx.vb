Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim str, sqlq As String
    Dim con As SqlConnection
    Dim da As SqlDataAdapter
    Dim a As SqlCommand
    Dim ds1 As dataset
    Dim custid As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()
        ' Call generatecustid()
    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub

    Protected Sub cmdRegister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdRegister.Click
        Dim ds As DataSet
        sqlq = "select loginid from login where loginid='" & txtloginid.Text & "'"

        da = New SqlDataAdapter(sqlq, con)
        ds = New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            MsgBox("Please Enter a different LoginID")
            txtloginid.Text = ""
        Else

            Dim j As String
            Session("TAns") = txtans.Text
            j = Session("TAns")
            sqlq = "insert into Customer values('" & txtloginid.Text & "','" & txtfname.Text & "','" & txtlname.Text & "'," & txtcontact.Text & " ,'" & txtaddress.Text & "','" & RadioButtonList1.Text & "','" & txtcity.Text & "')"
            a = New SqlCommand(sqlq, con)
            a.ExecuteNonQuery()
            ' MsgBox("Data inserted in cust table ....")

            sqlq = "insert into Login(loginid,password,question,answer) values ('" & txtloginid.Text & "','" & txtpass.Text & "','" & DropDownList1.Text & "', '" & j & "')"
            a = New SqlCommand(sqlq, con)
            a.ExecuteNonQuery()
            'MsgBox("data insrted in login table")
            MsgBox("Thank You for Registering")
            Response.Redirect("login.aspx")
        End If
    End Sub
    ''''''''''   'Public Sub generatecustid()
    '    sqlq = "select max(substring(custid,1,len(custid))+1) from Customer"
    '    ' Dim ds1 As New DataSet
    '    Dim a As Integer
    '    da = New SqlDataAdapter(sqlq, con)
    '    ds1 = New DataSet
    '    da.Fill(ds1)
    '    If ds1.Tables(0).Rows(0).IsNull(0) Then
    '        custid = 1
    '    Else
    '        '  a = a + 1
    '        TextBox1.Text = ds1.Tables(0).Rows(0).Item(0)
    '    End If
    'End Sub

    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
    '    Call generatecustid()
    'End Sub
End Class
