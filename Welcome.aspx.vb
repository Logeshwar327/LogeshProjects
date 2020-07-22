Imports System.Drawing

Public Class Welcome
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim yourname As String
        yourname = txtName.Text
        Session("yname") = yourname
        If (rbMale.Checked = True) Then
            'lblWelcome.Text = "Welcome to SkillRary Mr." + yourname
            Session("Gender") = "M"
        Else
            'lblWelcome.Text = "Welcome to SkillRary Ms." + yourname
            Session("Gender") = "F"
        End If
        Response.Redirect("About.aspx")
    End Sub

    Protected Sub ddlTheme_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlTheme.SelectedIndexChanged
        'Dim theme As String
        Session("theme") = ddlTheme.SelectedItem.Text
    End Sub
End Class