<%@ Page Title="" Language="C#" MasterPageFile="~/mstPrincipal.Master" AutoEventWireup="true" CodeBehind="frmBodegas.aspx.cs" Inherits="slnProyectoFinal.frmBodegas" %>
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
                <li><a href="frmUsuariosSistema.aspx">Usuarios de Sistema</a></li>
                <li><a href="frmProveedores.aspx">Proveedores</a></li>
                <li class="active"><a href="frmBodegas.aspx">Bodegas</a></li>
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
        <div class="bottom-line span12 col-md-12">
            <div class="span6 col-md-6">
                <label for="Contenido_txtNombre">Nombre:</label>
                <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Bodega Oeste"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtDireccion">Dirección:</label> 
                <asp:TextBox ID="txtDireccion" runat="server" class="form-control" placeholder="De los Carrizos N3-449 y los Fresnos" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtCapacidad">Capacidad:</label>
                 <asp:TextBox ID="txtCapacidad" runat="server" class="form-control" placeholder="2000" TextMode="Number"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtTelefono">Teléfono:</label>
                 <asp:TextBox ID="txtTelefono" runat="server" class="form-control" placeholder="022788372" TextMode="Number"></asp:TextBox>
            </div>
            <div class="form-group span12 col-md-12 top-space">
                <asp:Button ID="btnCrearBodega" runat="server" Text="Crear Bodega" class="btn btn-default" OnClick="btnCrearBodega_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space bottom-line">
            <div class="span12 col-md-12">
                <label for="Contenido_ddlBodegas">Bodega para modificar:</label>
                <asp:DropDownList ID="ddlBodegas" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlBodegas_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoNombre">Nuevo nombre:</label>         
                <asp:TextBox ID="txtNuevoNombre" runat="server" class="form-control" placeholder="Bodega Norte"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoDireccion">Nueva dirección:</label> 
                <asp:TextBox ID="txtNuevoDireccion" runat="server" class="form-control" placeholder="Av. 6 de Diciembre y Granados" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoCapacidad">Nueva Capacidad:</label>
                 <asp:TextBox ID="txtNuevoCapacidad" runat="server" class="form-control" placeholder="3000" TextMode="Number"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoTelefono">Nuevo teléfono:</label>
                <asp:TextBox ID="txtNuevoTelefono" runat="server" class="form-control" placeholder="022788619" TextMode="Number"></asp:TextBox>
            </div>
            <div class="form-group span12 col-md-12 top-space">
                <asp:Button ID="btnActualizarBodega" runat="server" Text="Actualizar Bodega" class="btn btn-default" OnClick="btnActualizarBodega_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space bottom-line bottom-space">
            <div class="span6 col-md-6">
                <label for="Contenido_ddlBodegasEliminar">Bodega para eliminar:</label>
                <asp:DropDownList ID="ddlBodegasEliminar" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <asp:Button ID="btnEliminarBodega" runat="server" Text="Eliminar Bodega" class="btn btn-default" OnClick="btnEliminarBodega_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space">
            <div class="span6 col-md-6">
                <asp:Button ID="btnMostrarBodegas" runat="server" Text="Mostrar Bodegas" class="btn btn-default" OnClick="btnMostrarBodegas_Click" />
            </div>
            <div class="span6 col-md-6">
                <div class="table-responsive">
                    <asp:GridView ID="gvBodegas" class="table table-bordered table-condensed table-striped" runat="server">
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
