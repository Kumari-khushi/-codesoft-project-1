Imports System.Data.SqlClient
Imports System.Configuration

Public Class EmployeeLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click
        If txtUsername.Text = "" Or txtPassword.Text = "" Or ddlRole.SelectedValue = "" Then
            lblMessage.Text = "All fields are required."
            Return
        End If

        Dim conStr As String = ConfigurationManager.ConnectionStrings("EmployeeDB").ConnectionString
        Using con As New SqlConnection(conStr)
            Dim query As String = "SELECT COUNT(*) FROM Employees WHERE Username=@Username AND Password=@Password AND Role=@Role"
            Using cmd As New SqlCommand(query, con)
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim())
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim())
                cmd.Parameters.AddWithValue("@Role", ddlRole.SelectedValue)

                con.Open()
                Dim result As Integer = Convert.ToInt32(cmd.ExecuteScalar())
                con.Close()

                If result > 0 Then
                    Session("Username") = txtUsername.Text
                    Session("Role") = ddlRole.SelectedValue
                    Response.Redirect("Dashboard.aspx")
                Else
                    lblMessage.Text = "Invalid username, password or role."
                End If
            End Using
        End Using
    End Sub
End Class