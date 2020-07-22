Imports System.Drawing

Public Class About
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim theme As String
        If (Session("theme") <> "---Select---") Then
            theme = Session("theme").ToString()
        Else
            theme = "Blue"
        End If
        Select Case theme
            Case "Blue"
                lblWelcome.ForeColor = Color.Blue
            Case "Red"
                lblWelcome.ForeColor = Color.Red
            Case "Brown"
                lblWelcome.ForeColor = Color.Brown
            Case "Green"
                lblWelcome.ForeColor = Color.Green
        End Select
        lblWelcome.Text = "Hello " + IIf(Session("Gender").ToString() = "M", "Mr", "Ms") + "." + Session("yname").ToString() + ", Welcome to SkillRary"

    End Sub
End Class