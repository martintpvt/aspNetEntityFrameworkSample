<%@ Page Title="" Language="C#" MasterPageFile="~/mstPrincipal.Master" AutoEventWireup="true" CodeBehind="frmReporteFiltros.aspx.cs" Inherits="CapaPresentacion.admin.frmReporteFiltros" %>
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
                <li><a href="frmUsuariosSistema.aspx">Usuarios de Sistema</a>                </li>
                <li><a href="frmProveedores.aspx">Proveedores</a></li>
                <li><a href="frmBodegas.aspx">Bodegas</a></li>
                <li><a href="frmCategorias.aspx">Categorías</a></li>
                <li><a href="frmTipoLlanta.aspx">Tipo de Llanta</a></li>
                <li><a href="frmDevolucionProducto.aspx">Devolución de Producto</a></li>
                <li class="dropdown active"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Reportes <span class="caret" /></a>
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
        <div class="span12 col-md-12">
            <div class="span12 col-md-12">
                <label for="Contenido_ddlTiposLlanta">Tipo de llanta:</label>
                <asp:DropDownList ID="ddlTiposLlanta" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlTiposLlanta_SelectedIndexChanged"></asp:DropDownList>
            </div>
        </div>
        <div class="top-space span12 col-md-12">
            <div class="table-responsive">
                <asp:GridView ID="gvTipoLlanta" class="table table-bordered table-condensed table-striped" runat="server">
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
