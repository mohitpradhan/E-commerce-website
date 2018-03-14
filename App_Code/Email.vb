Imports Microsoft.VisualBasic
Imports System.Net
Imports System.Net.Mail
Public Class Email
    Public Shared Function SendMail(ByVal gMailAccount As String, ByVal password As String, ByVal tos As String, ByVal subject As String, ByVal message As String) As Integer
        Try
            Dim loginInfo As NetworkCredential
            loginInfo = New NetworkCredential(gMailAccount, password)
            Dim msg As MailMessage
            msg = New MailMessage()
            msg.From = New MailAddress(gMailAccount)
            msg.To.Add(New MailAddress(tos))
            msg.Subject = subject
            msg.Body = message
            msg.IsBodyHtml = True
            Dim client As SmtpClient
            client = New SmtpClient("smtp.gmail.com")
            client.EnableSsl = True
            client.UseDefaultCredentials = False
            client.Credentials = loginInfo
            client.Send(msg)
            MsgBox("EMail Sent Succsessfully !!!!", MsgBoxStyle.Information, "Email Sent")
            Return 0
        Catch ex As Exception
            MsgBox("Email Not Sent !!! " + vbCrLf + "Please Check Your Network Connection", MsgBoxStyle.Information, "Internet Error")
            Return 1
        End Try
    End Function
End Class
