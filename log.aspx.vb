Imports System.Data.OleDb

Partial Class log
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As OleDbConnection = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\newpro\website\adminaccounts.accdb")
        Try
            con.Open()
            Dim cmd As OleDbCommand = New OleDbCommand("delete from online", con)
            cmd.ExecuteNonQuery()
            con.Close()
            Server.Transfer("adminlogin.aspx")
        Catch ex As Exception

        End Try
    End Sub
End Class
