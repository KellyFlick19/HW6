
Partial Class newrecipe
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("./Default.aspx")
    End Sub

    Protected Sub DetailsView1_Load(sender As Object, e As EventArgs) Handles DetailsView1.Load
        DetailsView1.Focus()
    End Sub
End Class
