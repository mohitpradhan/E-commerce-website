Imports System.Data
Imports System.Data.SqlClient

Partial Class ProductDetails
    Inherits System.Web.UI.Page
    Dim prodname, color, sizeof As String
    Dim sqlq, str As String
    Dim da As SqlDataAdapter
    Dim dt As DataTable
    Dim con As New SqlConnection
    Dim a As SqlCommand
    Dim dt1 As DataSet
    Dim d As String
    Dim p, m, remqty As String
    Public Shared g, t As String





    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()

        If Session("Jeans") = "Jeans" Or Session("Trousers") = "Trousers" Then
            DropDownList2.Visible = True
            DropDownList1.Visible = False
            'ElseIf Session("Casuals") <> "" Or Session("Formals") <> "" Then
        Else
            DropDownList1.Visible = True
            DropDownList2.Visible = False
        End If
        'p = "select case when count(itemno)=0 then 1 else (max(itemno)+1) end from shopping_details"
        ''p = "select case when count(itemno)=0 then 'I1' else 'I' + cast(max(substring(itemno,2,len(itemno)))+1)as varchar end from shopping_Details"
        'da = New SqlDataAdapter(p, con)
        'dt = New DataTable
        'da.Fill(dt)
        'm = dt.Rows(0).Item(0)
        'If Session("count") = 1 Then

        'Session("Sno") += 1
        'Session("Ono") += 1
        'sqlq = "select max(itemno) from shopping_details where sdno=" & Session("Sno") & ""
        'Dim da As New SqlDataAdapter(sqlq, con) '("select max(itemno) from shopping_details where sdno=" & Session("Sno") & ", con")
        'Dim dt1 As New DataSet
        'da.Fill(dt1)
        'Try
        '    Session("Itemno") = dt1.Tables(0).Rows(0).Item(0) + 1
        'Catch ex As Exception
        '    Session("Itemno") = 1
        'End Try
        'd = Session("LogId")

        'Image1.ImageUrl = Session("image")
        'prodname = Session("product")
        '' DropDownList1.SelectedItem.Text = Session("sizeof")
        'sqlq = "select * from product where productname='" & prodname & "'"
        'da = New SqlDataAdapter(sqlq, con)
        'dt = New DataTable()
        'da.Fill(dt)
        'Label2.Text = dt.Rows(0).Item(2)
        'Label5.Text = dt.Rows(0).Item(5)

        'Else
        sqlq = "select max(itemno) from shopping_details where sdno=" & Session("Sno") & ""
        Dim da As New SqlDataAdapter(sqlq, con) '("select max(itemno) from shopping_details where sdno=" & Session("Sno") & ", con")
        Dim dt1 As New DataSet
        da.Fill(dt1)
        Try
            Session("Itemno") = dt1.Tables(0).Rows(0).Item(0) + 1
        Catch ex As Exception
            Session("Itemno") = 1
        End Try
        d = Session("LogId")

        Image1.ImageUrl = Session("image")
        prodname = Session("product")
        ' DropDownList1.SelectedItem.Text = Session("sizeof")
        sqlq = "select * from product where productname='" & prodname & "'"
        da = New SqlDataAdapter(sqlq, con)
        dt = New DataTable()
        da.Fill(dt)
        Label2.Text = dt.Rows(0).Item(2)
        Label5.Text = dt.Rows(0).Item(5)
        'Label6.Text = dt.Rows(0).Item(6)
        'DropDownList1.SelectedItem.Text = dt.Rows(0).Item(6)



        'TextBox2.Text = (IsNumeric(TextBox1.Text) * Label2.Text)
        'TextBox2.Enabled = False
        'End If
    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub


    Protected Sub cmdCart_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdCart.Click
        Dim s, l As String
        Dim tot As Integer
        If txtqty.Text <> "" Then
            tot = (Integer.Parse(txtqty.Text) * Integer.Parse(Label2.Text))
            Session("tot") = Val(tot)


            ''''
            Dim sz As String
            If DropDownList1.Visible = True Then
                sz = DropDownList1.SelectedItem.Text
            ElseIf DropDownList2.Visible = True Then
                sz = DropDownList2.SelectedItem.Text

            End If
            '''''
            Dim c As Integer
            c = Val(txtqty.Text)
            Session("qty") = c
            Dim sqlq1 As String
            sqlq1 = "select qtyonhand from product where productname='" & Session("product") & "'"
            da = New SqlDataAdapter(sqlq1, con)
            dt1 = New DataSet
            da.Fill(dt1)
            remqty = dt1.Tables(0).Rows(0).Item(0)
            'Dim ono As Integer
            'ono = Session("Ono")
            'MsgBox(ono)
            '' If remqty >= Session("qty") Then
            If remqty >= c Then


                Dim t As Integer
                t = Session("Sno")
                l = Session("Ono")
                ''''''''''''''''
                sqlq = "select sizeof from product where productname='" & Session("product") & "' and sizeof='" & sz & "'"
                da = New SqlDataAdapter(sqlq, con)
                dt = New DataTable
                da.Fill(dt)
                If dt.Rows.Count > 0 Then
                    'MsgBox("Available")

                    'Else
                    '   MsgBox("Unavailable")

                    'End If
                    ''''''''''''''''
                    Dim k, k1 As String
                    k = "select * from Product where Productname='" & prodname & "' "
                    da = New SqlDataAdapter(k, con)
                    dt = New DataTable
                    da.Fill(dt)
                    Dim a, f As String
                    a = dt.Rows(0).Item(0)
                    f = dt.Rows(0).Item(3)
                    k1 = "select * from customer where loginid='" & d & "' "
                    da = New SqlDataAdapter(k1, con)
                    dt = New DataTable
                    da.Fill(dt)
                    Dim t2 As String
                    t2 = dt.Rows(0).Item(0)
                    Dim sizes As String
                    If Session("Jeans") = "Jeans" Or Session("Trousers") = "Trousers" Then
                        sizes = DropDownList2.SelectedItem.Text
                    Else
                        sizes = DropDownList1.SelectedItem.Text
                    End If
                    If txtqty.Text <> "" Then
                        s = "insert into shopping_Details values(" & t & ",'" & Session("Itemno") & "','" & f & "','" & Session("Product") & "','" & a & "'," & txtqty.Text & ",'" & Label5.Text & "','" & sizes & "'," & Label2.Text & ",'" & l & "','" & Session("LogId") & "')"
                        da = New SqlDataAdapter(s, con)
                        dt = New DataTable
                        da.Fill(dt)
                        MsgBox("Product is added to the cart !", MsgBoxStyle.Information, "Success")

                        Response.Redirect("ShoppingCart.aspx")
                    Else
                        MsgBox("Enter Quantity")
                    End If
                Else
                    MsgBox("Sorry.This Size is currently unavailable", MsgBoxStyle.Critical, "Sorry")
                End If
            Else
                MsgBox("Not in stock. Pls try after sometime")
                Response.Redirect("ProductDetails.aspx")
            End If '''''''''''''
            '''''''''''''
        Else
            MsgBox("Please Enter Quantity", MsgBoxStyle.Exclamation)
        End If

    End Sub

    Protected Sub cmdBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdBack.Click
        Session("Jeans") = ""
        Session("Trousers") = ""
        Response.Redirect("ProductSelect.aspx")
    End Sub

    'Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
    '    sqlq = "select sizeof from product where productname='" & Session("product") & "' and sizeof='" & DropDownList1.SelectedItem.Text & "'"
    '    da = New SqlDataAdapter(sqlq, con)
    '    dt = New DataTable
    '    da.Fill(dt)
    '    If dt.Rows.Count > 0 Then
    '        MsgBox("Available")

    '    Else
    '        MsgBox("Unavailable")

    '    End If
    'End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("LogId") = ""
        Response.Redirect("HomePage.aspx")
    End Sub

    'Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged

    'End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click

        If Session("LogId") = "" Then
            Response.Redirect("homesample.aspx")
        Else
            Session("Jeans") = ""
            Session("Trousers") = ""
            Response.Redirect("Homelogin.aspx")
        End If

    End Sub
End Class
