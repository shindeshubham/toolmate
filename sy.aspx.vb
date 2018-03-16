Imports System.Data.OleDb

Partial Class sy
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As OleDbConnection = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\newpro\website\adminaccounts.accdb")
        Dim usr As String
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
