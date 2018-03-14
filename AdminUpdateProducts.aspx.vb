Imports System.Data
Imports System.Data.SqlClient

Imports System.IO

Partial Class AdminUpdateProducts
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim dt As DataTable
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim str As String
    Dim pic, pic1 As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Call connect()

    End Sub
    Public Sub connect()
        str = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        con = New SqlConnection(str)
        con.Open()
    End Sub
    Public Function ReadFile(ByVal sPath As String) As Byte()
        'Initialize byte array with a null value initially.
        Dim data As Byte() = Nothing
        'Use FileInfo object to get file size.
        Dim fInfo As FileInfo = New FileInfo(sPath)
        Dim numBytes As Long = fInfo.Length
        'Open FileStream to read file
        Dim fStream As FileStream = New FileStream(sPath, FileMode.Open, FileAccess.Read)
        'Use BinaryReader to read file stream into byte array.

        Dim br As BinaryReader = New BinaryReader(fStream)
        'When you use BinaryReader, you need to supply number of bytes to read from file.
        'In this case we want to read entire file. So supplying total number of bytes.
        data = br.ReadBytes(CInt(numBytes))
        Return data
    End Function

    Public Sub picupload()
        Try
            If FileUpload1.HasFile Then

                pic = ("E:\proj pics\") & FileUpload1.FileName
                pic1 = FileUpload1.FileName
                'Dim pic2 As String
                'pic2 = FileUpload1.ResolveUrl(pic)
                ImageMap1.ImageUrl = pic
            End If
            FileUpload1.SaveAs(pic)

        Catch ex As Exception
            MsgBox("Provide Different Product Id")
        End Try

    End Sub

    Protected Sub cmdSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSave.Click
        picupload()

        Try
            con.Close()
            'Call connect()
            'Read Image Bytes into a byte array
            Dim imageData As Byte() = ReadFile(pic)
            'Initialize SQL Server Connection

            'Set insert query
            Dim qry As String
            qry = "insert into product(productid,productname,price,categoryid,qtyonhand,color,sizeof,images,product_img) values(@pid,@pname,@price,@catid,@qty,@color,@size,@img,@pimg)"
            'Dim qry As String = "insert into ImageStore(imgid,originalpath,imagedata)values(@idd,@OriginalPath, @ImageData)"
            'Initialize SqlCommand object for insert.
            Dim SqlCom As SqlCommand = New SqlCommand(qry, con)
            'We are passing Original Image Path and Image byte data as sql parameters.
            SqlCom.Parameters.Add(New SqlParameter("@pid", txtproductid.Text))
            SqlCom.Parameters.Add(New SqlParameter("@pname", txtproductname.Text))
            SqlCom.Parameters.Add(New SqlParameter("@price", txtprice.Text))
            SqlCom.Parameters.Add(New SqlParameter("@catid", txtcategoryid.Text))
            SqlCom.Parameters.Add(New SqlParameter("@qty", txtqtyonhand.Text))
            SqlCom.Parameters.Add(New SqlParameter("@color", txtcolor.Text))
            SqlCom.Parameters.Add(New SqlParameter("@size", txtsizeof.Text))
            SqlCom.Parameters.Add(New SqlParameter("@img", pic))
            SqlCom.Parameters.Add(New SqlParameter("@pimg", imageData))
            'Open connection and execute insert query.
            con.Open()
            SqlCom.ExecuteNonQuery()
            MsgBox("Product saved.")
            con.Close()

            
        Catch ex As Exception
            'MsgBox(ex.ToString())
            MsgBox("Enter Proper Details!", MsgBoxStyle.Exclamation)
        End Try
    End Sub

End Class
