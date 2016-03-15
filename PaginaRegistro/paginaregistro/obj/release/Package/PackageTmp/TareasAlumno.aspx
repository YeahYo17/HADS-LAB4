<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TareasAlumno.aspx.vb" Inherits="PaginaRegistro.TareasAlumno" %>

<%@ Register src="CabeceraAlumno.ascx" tagname="CabeceraAlumno" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700">
    
        <uc1:CabeceraAlumno ID="CabeceraAlumno1" runat="server" />
        <br />
        Seleccionar Asignatura (solo se muestran aquellas en las que está matriculado):<br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="120px" DataSourceID="SqlDataSource1" DataTextField="codigoasig" DataValueField="codigoasig">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=tcp:hads21.database.windows.net,1433;Initial Catalog=HADS21;Persist Security Info=True;User ID=starkgs@hotmail.com@hads21;Password=HADS21perro" ProviderName="System.Data.SqlClient" SelectCommand="SELECT codigoasig FROM [GruposClase] INNER JOIN [EstudiantesGrupo]  ON codigo=Grupo WHERE email=@email">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" />
            </SelectParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel2" runat="server" style="margin-left: 295px" Width="135px">
            <asp:CheckBox ID="cbCodigo" runat="server" Text="Codigo" />
            <br />
            <asp:CheckBox ID="cbDescrip" runat="server" Text="Descripcion" />
            <br />
            <asp:CheckBox ID="cbHoras" runat="server" Text="Horas" />
            <br />
            <asp:CheckBox ID="cbTipo" runat="server" Text="Tipo Tarea" />
        </asp:Panel>
        <br />
&nbsp;&nbsp;
        <br />
        <asp:Button ID="btnTareasAlum" runat="server" Height="35px" Text="Ver Tareas" Width="150px" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="text-align: center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ButtonField ButtonType="Button" Text="Instanciar" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
