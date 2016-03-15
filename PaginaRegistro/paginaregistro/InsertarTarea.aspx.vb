Imports System.Data.SqlClient

Public Class InsertarTarea

    Inherits System.Web.UI.Page

    Private dAdapter As SqlDataAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("dAdapter") = dAdapter
    End Sub

    Protected Sub btnAñadir_Click(sender As Object, e As EventArgs) Handles btnAñadir.Click

        Dim dTable As DataTable
        Dim dSet As DataSet = New DataSet()

        Dim strSql As String

        strSql = "SELECT * FROM TareasGenericas"
        dAdapter = New SqlDataAdapter(strSql, Session("Conexion"))




    End Sub
End Class