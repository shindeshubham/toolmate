Imports System.Data.OleDb
Partial Class Default3

    Inherits System.Web.UI.Page
    Dim gen As String

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked = True Then
            Button1.Enabled = True
        ElseIf CheckBox1.Checked = False Then
            Button1.Enabled = False
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Server.Transfer("home.aspx")
        If RadioButton1.Checked = True Then
            gen = "Male"
        ElseIf RadioButton2.Checked = True Then
            gen = "Female"
        Else
            MsgBox("select a gender")
        End If
        If TextBox4.Text <> TextBox5.Text Then
            MsgBox("error")

        End If
        Dim con As OleDbConnection = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\newpro\website\adminaccounts.accdb")
        Try
            con.Open()
            MsgBox("open")

            Dim cmd As OleDbCommand = New OleDbCommand("insert into accounts (Fname,Lname,usrnm,pwd,gender,mobile,dob) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & gen & "','" & TextBox6.Text & "','" & TextBox7.Text & "')", con)
            cmd.ExecuteNonQuery()
            con.Close()
            Server.Transfer("adminlogin.aspx")
        Catch ex As Exception
            'MsgBox(ex.Message)

        End Try
    End Sub

    Protected Sub RadioButton1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton1.CheckedChanged
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
