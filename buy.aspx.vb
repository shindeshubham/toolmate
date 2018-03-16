
Partial Class buy
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.Page.PreviousPage IsNot Nothing Then
            Dim rowIndex As Integer = Integer.Parse(Request.QueryString("RowIndex"))
            Label1.Text = rowIndex
        End If
    End Sub
End Class
