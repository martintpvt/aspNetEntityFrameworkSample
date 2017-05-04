<%@ Page Title="" Language="C#" MasterPageFile="~/mstPrincipal.Master" AutoEventWireup="true" CodeBehind="frmUsuariosSistema.aspx.cs" Inherits="slnProyectoFinal.frmUsuariosSistema" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="frmInicio.aspx">Sistema de Venta de Llantas</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="frmInicio.aspx">Inicio</a></li>
                <li class="active"><a href="frmUsuariosSistema.aspx">Usuarios de Sistema</a></li>
                <li><a href="frmProveedores.aspx">Proveedores</a></li>
                <li><a href="frmBodegas.aspx">Bodegas</a></li>
                <li><a href="frmCategorias.aspx">Categorías</a></li>
                <li><a href="frmTipoLlanta.aspx">Tipo de Llanta</a></li>
                <li><a href="frmDevolucionProducto.aspx">Devolución de Producto</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Reportes <span class="caret" /></a>
                    <ul class="dropdown-menu">
                        <li><a href="frmReporteFiltros.aspx">Reporte Total por Filtros</a></li>
                        <li><a href="frmReporteVentasTotales.aspx">Reporte de Ventas Totales</a></li>
                        <li><a href="frmReporteIngresosGastos.aspx">Reporte de Ingresos vs Gastos</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/frmLogin.aspx"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
            </ul>
        </div>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contenido" runat="server">
    <div class="formulario span12 col-md-12">
        <div class="span12 col-md-12 top-space bottom-line">
            <div class="span12 col-md-12">
                <label for="Contenido_ddlUsuario">Usuario para modificar:</label>
                <asp:DropDownList ID="ddlUsuario" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlUsuario_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtUserName">Nuevo nombre de usuario:</label>
                <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="pedro123"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtEmail">Nuevo email:</label>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Gachet"></asp:TextBox>
            </div>
            <div class="form-group span12 col-md-12 top-space">
                <asp:Button ID="btnActualizarUsuario" runat="server" Text="Actualizar Usuario" class="btn btn-default" OnClick="btnActualizarUsuario_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space bottom-line bottom-space">
            <div class="span6 col-md-6">
                <label for="Contenido_ddlUsuarioEliminar">Usuario para eliminar:</label>
                <asp:DropDownList ID="ddlUsuarioEliminar" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <asp:Button ID="btnEliminarUsuario" runat="server" Text="Eliminar Usuario" class="btn btn-default" OnClick="btnEliminarUsuario_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space">
            <div class="span6 col-md-6">
                <asp:Button ID="btnMostrarUsuarios" runat="server" Text="Mostrar Usuarios" class="btn btn-default" OnClick="btnMostrarUsuarios_Click" />
            </div>
            <div class="span6 col-md-6">
                <div class="table-responsive">
                    <asp:GridView ID="gvUsuarios" class="table table-bordered table-condensed table-striped" runat="server">
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
