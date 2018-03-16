Imports System.Data.OleDb
Partial Public Class _Default1

    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim con As OleDbConnection = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\newpro\website\adminaccounts.accdb")
        Try
            Dim sel As String
            sel = DropDownList1.SelectedItem.Value
            con.Open()
            If sel = "Admin" Then
                Dim cmd As OleDbCommand = New OleDbCommand("select usrnm,pwd from adminaccounts where usrnm='" & TextBox1.Text & "' and pwd='" & TextBox2.Text & "' ", con)
                Dim dr As OleDbDataReader = cmd.ExecuteReader()
                If dr.Read = False Then
                    MsgBox("invalid user and pwd")
                Else
                    Server.Transfer("adminhome.aspx")

                End If
            ElseIf sel = "User" Then
                Dim cmd As OleDbCommand = New OleDbCommand("select usrnm,pwd from accounts where usrnm='" & TextBox1.Text & "' and pwd='" & TextBox2.Text & "' ", con)
                Dim dr As OleDbDataReader = cmd.ExecuteReader()
                If dr.Read = False Then
                    MsgBox("invalid user and pwd")
                Else
                    Dim cmd1 As OleDbCommand = New OleDbCommand("insert into online (usrnm) values('" & TextBox1.Text & "')", con)
                    cmd1.ExecuteNonQuery()


                End If
                Server.Transfer("home1.aspx")
            End If

        Catch ex As Exception

        End Try
        con.Close()



    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub
End Class
