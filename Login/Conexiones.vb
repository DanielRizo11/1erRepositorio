Imports System.Data.SqlClient
Public Class Conexiones

    Public Shared Cnn As SqlClient.SqlConnection
    Public Shared Validar As String = "0"
    Public Shared Sub AbrirConexion()
        Cnn = New SqlConnection("Data Source=DESKTOP-G5QBQ0T;Initial Catalog=CRUDTutorial_DB;Integrated Security=True")

    End Sub

End Class
