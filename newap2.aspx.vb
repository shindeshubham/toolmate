Imports System.Data.OleDb
Imports System.IO

Partial Class newap2
    Inherits System.Web.UI.Page
    Dim usr As String

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As OleDbConnection = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\newpro\website\adminaccounts.accdb")
        con.Open()
        Try


            Dim file_name As String = Path.GetFileName(FileUpload1.PostedFile.FileName)

            Dim size_img As Long = FileUpload1.PostedFile.InputStream.Length
            If (size_img <= 51200) Then


                FileUpload1.SaveAs(Server.MapPath("Files/Images/" + file_name))
                Label1.Text = "Image successfully added in images folder"

                Dim cmd As OleDbCommand = New OleDbCommand("insert into products (pname,pdesc,imgName,imgPath,yr,dept,price,user) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & file_name & "','" & "Files/Images/" + file_name & "','" & DropDownList2.Text & "','" & DropDownList1.Text & "','" & TextBox3.Text & "','" & usr & "')", con)

                cmd.ExecuteNonQuery()
                Label1.Text = "Image name and path inserted in database successfully "
                Server.Transfer("default.aspx")

            Else

                Label1.Text = "Please Upload image size less than equal to 50 kB "
            End If

        catch ex As Exception

            Label1.Text = ex.Message

        End Try
        con.Close()



    End Sub

    Protected Sub Button1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Load

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As OleDbConnection = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\newpro\website\adminaccounts.accdb")

        Try

            con.Open()
            Dim cmd As OleDbCommand = New OleDbCommand("select usrnm from online where id=( select max(id) from online)", con)
            Dim da As OleDbDataAdapter = New OleDbDataAdapter()
            Dim rdr As OleDbDataReader = cmd.ExecuteReader()
            While rdr.Read()
                usr = rdr("usrnm").ToString
            End While


        Catch ex As Exception

        End Try
        con.Close()
        Try
            con.Open()
            Dim cmd As OleDbCommand = New OleDbCommand("Select Fname from accounts where usrnm='" & usr & "'", con)
            Dim da As OleDbDataAdapter = New OleDbDataAdapter()
            Dim rdr As OleDbDataReader = cmd.ExecuteReader()
            While rdr.Read()
                Label1.Text = rdr("Fname").ToString
            End While
        Catch ex As Exception

        End Try

    End Sub
End Class
