Imports System.Data.OleDb

Partial Class feed
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As OleDbConnection = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\newpro\website\adminaccounts.accdb")
        Try
            con.Open()
            MsgBox("open")

            Dim cmd As OleDbCommand = New OleDbCommand("insert into feed (name,mob,email,comment) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "')", con)
            cmd.ExecuteNonQuery()
            con.Close()
            MsgBox("Thanks for your feedback")
        Catch ex As Exception
            MsgBox("Exception")

        End Try
        con.Close()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = " "
        TextBox2.Text = " "
        TextBox3.Text = " "
        TextBox4.Text = " "
    End Sub

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
