
Partial Class Shipping
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        If Session("LogId") = "" Then
            Response.Redirect("homesample.aspx")
        Else
            Response.Redirect("Homelogin.aspx")
        End If
    End Sub
End Class
