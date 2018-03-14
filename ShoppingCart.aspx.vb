Imports System.Data
Imports System.Data.SqlClient
Partial Class ShoppingCart
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim dt As DataSet
    Dim cmd As SqlCommand
    Dim str As String
    Dim con As SqlConnection
    Dim qty As Integer
    Shared si As Integer
    Dim ds As DataSet
    Dim remqty As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()
        Dim s, h As String
        TextBox1.Text = Val(Session("tot"))
        h = Session("Sno")
        s = "select itemno as 'Item No',productname as 'Product',quantity as 'Quantity',color as 'Color',sizeof as 'Size',price as 'Price',loginid from shopping_details where sdno='" & h & "'"
        da = New SqlDataAdapter(s, con)
        dt = New DataSet
        da.Fill(dt)
        GridView1.DataSource = dt.Tables(0)
        GridView1.DataBind()
        ''''''''''''''''''
        Dim ss As String
        ss = "select sum((quantity)*(price))from shopping_details where sdno=" & Session("Sno") & ""
        da = New SqlDataAdapter(ss, con)
        ds = New DataSet
        da.Fill(ds)
        'TextBox1.Text = ds.Tables(0).Rows(0).Item(0)

        ''''''''
        'Dim sqlq As String
        'sqlq = "select sum(price) from shopping_details where sdno='" & Session("Sno") & "'"
        'da = New SqlDataAdapter(sqlq, con)
        'dt = New DataSet
        'da.Fill(dt)

        If GridView1.Rows.Count = 0 Then
            MsgBox("Your cart is empty", MsgBoxStyle.Critical, "Empty")
        Else
            TextBox1.Text = ds.Tables(0).Rows(0).Item(0)
            TextBox1.Enabled = False
        End If


    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub

    Protected Sub cmdAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdAdd.Click
        Session("Jeans") = ""
        Session("Trousers") = ""
        Response.Redirect("ProductSelect.aspx")
    End Sub

    Protected Sub cmdShop_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdShop.Click
        'Dim s As String
        's = "select sum((quantity)*(price))from shopping_details where sdno=" & Session("Sno") & ""
        'da = New SqlDataAdapter(s, con)
        'ds = New DataSet
        'da.Fill(ds)
        ''TextBox1.Text = ds.Tables(0).Rows(0).Item(0)

        '''''''''
        ''Dim sqlq As String
        ''sqlq = "select sum(price) from shopping_details where sdno='" & Session("Sno") & "'"
        ''da = New SqlDataAdapter(sqlq, con)
        ''dt = New DataSet
        ''da.Fill(dt)

        'If GridView1.Rows.Count = 0 Then
        '    MsgBox("Your cart is empty")
        'Else
        '    TextBox1.Text = ds.Tables(0).Rows(0).Item(0)
        '    TextBox1.Enabled = False
        'End If

        
        'cmdDone.Enabled = True


    End Sub

    Protected Sub cmdDone_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdDone.Click
        Dim m As String
        m = MsgBox("Are you sure you want to place the order?", MsgBoxStyle.YesNo, "Confirm")
        If m = vbYes Then


            Dim sqlq1 As String
            sqlq1 = "select sum(quantity) from shopping_details where sdno=" & Session("Sno") & ""
            da = New SqlDataAdapter(sqlq1, con)
            dt = New DataSet
            da.Fill(dt)
            qty = dt.Tables(0).Rows(0).Item(0)
            Dim sqlq As String
            If TextBox1.Text <> "" Then
                sqlq = "insert into orders(ono,loginid,qty,totalcost)values(" & Session("Ono") & ",'" & Session("LogId") & "'," & qty & ",'" & TextBox1.Text & "')"
                da = New SqlDataAdapter(sqlq, con)
                dt = New DataSet
                da.Fill(dt)
                MsgBox("Your order is recieved.Thank you.", MsgBoxStyle.Information, "Received")
                MsgBox("Pls. pay cash on delivery", MsgBoxStyle.Information, "Note")
                Response.Redirect("Homelogin.aspx")
            End If
            '''''''''''''''''''''''


            Dim i As Integer
            For i = 0 To GridView1.Rows.Count - 1

                sqlq1 = "select qtyonhand from product where productid='" & GridView1.Rows(i).Cells(4).Text & "'"

                da = New SqlDataAdapter(sqlq1, con)
                dt = New DataSet
                da.Fill(dt)
                Dim j As Integer
                remqty = dt.Tables(0).Rows(0).Item(0)
                j = GridView1.Rows(i).Cells(5).Text
                If Val(remqty) >= Val(j) Then

                    sqlq1 = "update product set qtyonhand=" & remqty - GridView1.Rows(i).Cells(5).Text & " where productid='" & GridView1.Rows(i).Cells(4).Text & "'"
                    da = New SqlDataAdapter(sqlq1, con)
                    dt = New DataSet
                    da.Fill(dt)
                Else
                    GridView1.Rows(i).Cells(4).Text = "Not available"
                End If
            Next
        Else
            Response.Redirect("ShoppingCart.aspx")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        si = GridView1.SelectedIndex
        GridView1.Rows(GridView1.SelectedIndex).BackColor = Drawing.Color.DarkBlue
        cmdRemove.Enabled = True
    End Sub

    Protected Sub cmdRemove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdRemove.Click
        Dim f, g As Integer
        f = Val(TextBox1.Text)
        g = GridView1.Rows(GridView1.SelectedIndex).Cells(6).Text
        TextBox1.Text = Val(TextBox1.Text) - GridView1.Rows(GridView1.SelectedIndex).Cells(6).Text
        'TextBox1.Text = GridView1.Rows(1).Cells(6).Text
        Session("Itemno") = Session("Itemno") - 1

            Dim sqlq As String

        sqlq = "delete from shopping_Details where sdno=" & Session("Sno") & " and itemno='" & GridView1.Rows(si).Cells(1).Text & "'"

            Dim cmd As New SqlCommand(sqlq, con)
            cmd.ExecuteNonQuery()
            da.Fill(dt)


        sqlq = "select itemno as 'Item No',productname as 'Product',quantity as 'Quantity',color as 'Color',sizeof as 'Size',price as 'Price',loginid from shopping_details where sdno=" & Session("Sno") & " "

            da = New SqlDataAdapter(sqlq, con)
            ds = New DataSet

            da.Fill(ds)
            GridView1.DataSource = ds.Tables(0)
            GridView1.DataBind()



    End Sub

    Protected Sub cmdBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdBack.Click
        Response.Redirect("ProductSelect.aspx")
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click

        Dim zz As String
        zz = MsgBox("Do you really want to cancel the order?", MsgBoxStyle.YesNo, "Confirm")

        If zz = vbYes Then
            Dim sqlq As String
            sqlq = "delete from Shopping_Details where orderno='" & Session("Ono") & "'"
            da = New SqlDataAdapter(sqlq, con)
            ds = New DataSet
            da.Fill(ds)
            Response.Redirect("Homelogin.aspx")
        ElseIf zz = vbNo Then
            Page_Load(sender, e)
        End If


    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Response.Redirect("Bill.aspx")
    End Sub
End Class
