Imports System.Data
Imports System.Data.SqlClient
Partial Class Trousers
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim dt As DataTable
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim str, a As String

    
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub

    Public Sub retrievepic()
        Call connect()
        Dim c As String
        c = Session("Formals")
        'da = New SqlDataAdapter("select images from product where categoryid='" & c & "'", con)
        da = New SqlDataAdapter("select product_img from product where categoryid='" & c & "'", con)
        ds = New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count < 1 Then
            MsgBox("no records to display")
        Else
            'Dim i As Integer
            '  For i = 0 To ds.Tables(0).Rows.Count - 1
            'ImageMap1.ImageUrl = "images/" & ds.Tables(0).Rows(0).Item("images")
            ImageMap1.ImageUrl = "~/ShowImage.ashx?id=p47"
            'ImageMap2.ImageUrl = "images/" & ds.Tables(0).Rows(1).Item("images")
            ImageMap2.ImageUrl = "~/ShowImage.ashx?id=p50"
            'ImageMap3.ImageUrl = "images/" & ds.Tables(0).Rows(2).Item("images")
            ImageMap3.ImageUrl = "~/ShowImage.ashx?id=p53"
            'ImageMap4.ImageUrl = "images/" & ds.Tables(0).Rows(3).Item("images")
            ImageMap4.ImageUrl = "~/ShowImage.ashx?id=p56"
            'ImageMap5.ImageUrl = "images/" & ds.Tables(0).Rows(4).Item("images")
            ImageMap5.ImageUrl = "~/ShowImage.ashx?id=p59"
            'ImageMap6.ImageUrl = "images/" & ds.Tables(0).Rows(5).Item("images")
            ImageMap6.ImageUrl = "~/ShowImage.ashx?id=p61"
            ''Next

        End If
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        a = Label1.Text
        Session("image") = ImageMap1.ImageUrl
        Session("product") = a
        Call chkqty()

    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        a = Label2.Text
        Session("image") = ImageMap2.ImageUrl
        Session("product") = a
        Call chkqty()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        a = Label3.Text
        Session("image") = ImageMap3.ImageUrl
        Session("product") = a
        Call chkqty()
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        a = Label4.Text
        Session("image") = ImageMap4.ImageUrl
        Session("product") = a
        Call chkqty()
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        a = Label5.Text
        Session("image") = ImageMap5.ImageUrl
        Session("product") = a
        Call chkqty()
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        a = Label6.Text
        Session("image") = ImageMap6.ImageUrl
        Session("product") = a
        Call chkqty()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()
        Call retrievepic()
        Session("Trousers") = "Trousers"
        If Session("LogId") = "" Then
            Button1.Visible = False
            Button2.Visible = False
            Button3.Visible = False
            Button4.Visible = False
            Button5.Visible = False
            Button6.Visible = False
        End If
    End Sub

    Public Sub chkqty()
        Dim sqlq As String
        sqlq = "select qtyonhand from product where productname='" & Session("product") & "'"
        da = New SqlDataAdapter(sqlq, con)
        ds = New DataSet
        da.Fill(ds)
        Dim qtt As Integer
        qtt = ds.Tables(0).Rows(0).Item(0)
        ' MsgBox(qtt)
        If qtt <= 0 Then
            qtt = qtt + 10
            MsgBox("Sorry this product is not available now.pls give us 2 working days to process your order", MsgBoxStyle.Information)
            sqlq = "update product set qtyonhand=" & qtt & ""
            da = New SqlDataAdapter(sqlq, con)
            ds = New DataSet
            da.Fill(ds)
            Response.Redirect("Formals.aspx")
        Else
            Response.Redirect("ProductDetails.aspx")
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("Formals.aspx")
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Session("LogId") = ""
        Response.Redirect("homesample.aspx")

    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        If Session("LogId") = "" Then
            Response.Redirect("homesample.aspx")
        Else
            Response.Redirect("Homelogin.aspx")
        End If
        Session("Trousers") = ""
    End Sub
End Class
