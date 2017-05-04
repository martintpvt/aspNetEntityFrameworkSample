<%@ Page Title="" Language="C#" MasterPageFile="~/mstPrincipal.Master" AutoEventWireup="true" CodeBehind="frmTipoLlanta.aspx.cs" Inherits="slnProyectoFinal.frmTipoLlanta" %>
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
                <li><a href="frmBodegas.aspx">Bodegas</a></li>
                <li><a href="frmCategorias.aspx">Categorías</a></li>
                <li class="active"><a href="frmTipoLlanta.aspx">Tipo de Llanta</a></li>
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
                <label for="Contenido_ddlBodega">Bodega:</label>
                <asp:DropDownList ID="ddlBodega" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_ddlCategoria">Categoría:</label>
                <asp:DropDownList ID="ddlCategoria" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_ddlProveedor">Proveedor:</label>
                <asp:DropDownList ID="ddlProveedor" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNombre">Nombre:</label>
                <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Llanta para lluvia"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtStock">Stock:</label>
                 <asp:TextBox ID="txtStock" runat="server" class="form-control" placeholder="1500" TextMode="Number"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtMarca">Marca:</label>
                <asp:TextBox ID="txtMarca" runat="server" class="form-control" placeholder="GoodYear"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtRin">Rin:</label>
                <asp:TextBox ID="txtRin" runat="server" class="form-control" placeholder="15" TextMode="Number"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtPrecioCompra">Precio Compra:</label>
                <asp:TextBox ID="txtPrecioCompra" runat="server" class="form-control" placeholder="55.00"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtPrecioUnitario">Precio Venta:</label>
                <asp:TextBox ID="txtPrecioUnitario" runat="server" class="form-control" placeholder="55.00"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtColor">Color:</label>
                <asp:TextBox ID="txtColor" runat="server" class="form-control" placeholder="Negro"></asp:TextBox>
            </div>
            <div class="form-group span12 col-md-12 top-space">
                <asp:Button ID="btnCrearTipoLlanta" runat="server" Text="Crear Tipo de Llanta" class="btn btn-default" OnClick="btnCrearTipoLlanta_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space bottom-line">
            <div class="span12 col-md-12">
                <label for="Contenido_ddlTiposLlanta">Tipo de llanta para modificar:</label>
           
                <asp:DropDownList ID="ddlTiposLlanta" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlTiposLlanta_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_ddlNuevoBodega">Nueva Bodega:</label>
                <asp:DropDownList ID="ddlNuevoBodega" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_ddlNuevoCategoria">Nueva Categoría:</label>
                <asp:DropDownList ID="ddlNuevoCategoria" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_ddlNuevoProveedor">Nuevo Proveedor:</label>
                <asp:DropDownList ID="ddlNuevoProveedor" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoNombre">Nuevo Nombre:</label>
                <asp:TextBox ID="txtNuevoNombre" runat="server" class="form-control" placeholder="Llanta para lluvia"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoStock">Nuevo Stock:</label>
                 <asp:TextBox ID="txtNuevoStock" runat="server" class="form-control" placeholder="1500" TextMode="Number"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoMarca">Nueva Marca:</label>
                <asp:TextBox ID="txtNuevoMarca" runat="server" class="form-control" placeholder="GoodYear"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoRin">Nuevo Rin:</label>
                <asp:TextBox ID="txtNuevoRin" runat="server" class="form-control" placeholder="15" TextMode="Number"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoPrecioCompra">Nuevo Precio Compra:</label>
                <asp:TextBox ID="txtNuevoPrecioCompra" runat="server" class="form-control" placeholder="55.00"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoPrecioUnitario">Nuevo Precio Venta:</label>
                <asp:TextBox ID="txtNuevoPrecioUnitario" runat="server" class="form-control" placeholder="55.00"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoColor">Nuevo Color:</label>
                <asp:TextBox ID="txtNuevoColor" runat="server" class="form-control" placeholder="Negro"></asp:TextBox>
            </div>
            <div class="form-group span12 col-md-12 top-space">
                <asp:Button ID="btnActualizarTipoLlanta" runat="server" Text="Actualizar Tipo de Llanta" class="btn btn-default" OnClick="btnActualizarTipoLlanta_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space bottom-line bottom-space">
            <div class="span6 col-md-6">
                <label for="Contenido_ddlTiposLlantaEliminar">Tipo de llanta para eliminar:</label>
                <asp:DropDownList ID="ddlTiposLlantaEliminar" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <asp:Button ID="btnEliminarTipoLlanta" runat="server" Text="Eliminar Tipo de Llanta" class="btn btn-default" OnClick="btnEliminarTipoLlanta_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space">
            <div class="span6 col-md-6">
                <asp:Button ID="btnMostrarTiposLlanta" runat="server" Text="Mostrar Tipos de Llanta" class="btn btn-default" OnClick="btnMostrarTiposLlanta_Click" />
            </div>
            <div class="span6 col-md-6">
                <div class="table-responsive">
                    <asp:GridView ID="gvTiposLlanta" class="table table-bordered table-condensed table-striped" runat="server">
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
