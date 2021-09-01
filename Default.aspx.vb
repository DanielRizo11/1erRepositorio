Imports System.Data.SqlClient
Imports System.Data

Public Class _Default
    Inherits Page
    Dim connect As New SqlConnection("Data Source=DESKTOP-G5QBQ0T;Initial Catalog=CRUDTutorial_DB;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ListProduct()

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim productid As Integer = txtProductID.Text
        Dim itemname As String = txtItemname.Text
        Dim specification As String = txtSpecification.Text
        Dim unit As String = Dropunit.SelectedValue
        Dim color As String = RadioColor.SelectedValue
        Dim insertdate As Integer = txtDate.Text
        Dim opening As Double = txtOpenqty.Text
        Dim status As String = ""

        If CheckRegular.Checked = True Then
            status = "Regular"
        Else
            status = "irregular"
        End If

        connect.Open()
        Dim command As New SqlCommand("insert into ProductInfo_tab values ('" & productid & "','" & itemname & "','" & specification & "','" & unit & "',
                                                                            '" & color & "','" & insertdate & "','" & opening & "','" & status & "')", connect)
        command.ExecuteNonQuery()
        MsgBox("Insersion exitosa", MsgBoxStyle.Information, "Message")
        connect.Close()
        ListProduct()
        txtProductID.Text = ""
        txtItemname.Text = ""
        txtSpecification.Text = ""
        txtDate.Text = ""
        txtOpenqty.Text = ""

    End Sub

    Private Sub ListProduct()

        Dim command As New SqlCommand("select * from ProductInfo_Tab", connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

End Class