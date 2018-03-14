﻿<%@ WebHandler Language="VB" Class="ShowImage" %>

Imports System
Imports System.Configuration
Imports System.Web
Imports System.IO
Imports System.Data
Imports System.Data.SqlClient

Public Class ShowImage : Implements IHttpHandler
    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim no As String
        If Not context.Request.QueryString("id") Is Nothing Then
            no = context.Request.QueryString("id")
        Else
            Throw New ArgumentException("No parameter specified")
        End If
        
        context.Response.ContentType = "image/jpeg"
        Dim strm As Stream = ShowEmpImage(no)
        Dim buffer As Byte() = New Byte(4095) {}
        If strm.Length <> 0 Then
            Dim byteSeq As Integer = strm.Read(buffer, 0, 4096)
 
            Do While byteSeq > 0
                context.Response.OutputStream.Write(buffer, 0, byteSeq)
                byteSeq = strm.Read(buffer, 0, 4096)
            Loop
        End If
        context.Response.BinaryWrite(buffer)
    End Sub
 
    Public Function ShowEmpImage(ByVal no As String) As Stream
        Dim conn As String = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        Dim connection As SqlConnection = New SqlConnection(conn)
        connection.Open()
        Dim sql As String = "SELECT product_img FROM Product WHERE productid ='" & no & "'"
  
        Dim cmd As SqlCommand = New SqlCommand(sql, connection)
        cmd.CommandType = CommandType.Text
        
        
        
        
        Dim bt As Object = cmd.ExecuteScalar
        Return New MemoryStream(CType(bt, Byte()))
       
        connection.Close()
       
    End Function
 
    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class