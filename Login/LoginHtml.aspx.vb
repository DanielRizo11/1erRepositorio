Public Class LoginHtml
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnLogin.Click
        Conexiones.AbrirConexion()
        Conexiones.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from tblUsuarios where usuarioId='" & txtUsuario.Text & "' and contrasena='" & txtContrasena.Text & "'", Conexiones.Cnn)
        Dim ds As New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then

            Response.Redirect("~/Default.aspx")

        Else
            MsgBox("usuario incorrecto! ", vbCritical, "Login Error")

        End If

        Conexiones.Cnn.Close()
    End Sub

End Class