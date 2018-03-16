Imports System.Data.OleDb


Partial Class deleteacc
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As OleDbConnection = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\newpro\website\accounts.accdb")
        Try
            con.Open()
            ' Dim i As Integer
            Dim cmd As OleDbCommand = New OleDbCommand("select * from accounts where usrnm='" & TextBox1.Text & "'", con)
            Dim dr As OleDbDataReader = cmd.ExecuteReader

        Catch ex As Exception

        End Try
    End Sub
End Class
