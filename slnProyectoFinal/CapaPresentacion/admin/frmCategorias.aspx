<%@ Page Title="" Language="C#" MasterPageFile="~/mstPrincipal.Master" AutoEventWireup="true" CodeBehind="frmCategorias.aspx.cs" Inherits="slnProyectoFinal.frmCategorias" %>
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
                <li class="active"><a href="frmCategorias.aspx">Categorías</a></li>
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
                <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Pesado"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtDescripcion">Descripción:</label> 
                <asp:TextBox ID="txtDescripcion" runat="server" class="form-control" placeholder="Llanta para autos pesados." TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="form-group span12 col-md-12 top-space">
                <asp:Button ID="btnCrearCategoria" runat="server" Text="Crear Categoría" class="btn btn-default" OnClick="btnCrearCategoria_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space bottom-line">
            <div class="span12 col-md-12">
                <label for="Contenido_ddlCategorias">Categoría para modificar:</label>
           
                <asp:DropDownList ID="ddlCategorias" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlCategorias_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoNombre">Nuevo nombre:</label>         
                <asp:TextBox ID="txtNuevoNombre" runat="server" class="form-control" placeholder="Liviano"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoDescripcion">Nueva descripción:</label> 
                <asp:TextBox ID="txtNuevoDescripcion" runat="server" class="form-control" placeholder="Llanta para autos livianos." TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="form-group span12 col-md-12 top-space">
                <asp:Button ID="btnActualizarCategoria" runat="server" Text="Actualizar Categoría" class="btn btn-default" OnClick="btnActualizarCategoria_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space bottom-line bottom-space">
            <div class="span6 col-md-6">
                <label for="Contenido_ddlCategoriasEliminar">Categoría para eliminar:</label>
                <asp:DropDownList ID="ddlCategoriasEliminar" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <asp:Button ID="btnEliminarCategoria" runat="server" Text="Eliminar Categoría" class="btn btn-default" OnClick="btnEliminarCategoria_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space">
            <div class="span6 col-md-6">
                <asp:Button ID="btnMostrarCategorias" runat="server" Text="Mostrar Categorías" class="btn btn-default" OnClick="btnMostrarCategorias_Click" />
            </div>
            <div class="span6 col-md-6">
                <div class="table-responsive">
                    <asp:GridView ID="gvCategorias" class="table table-bordered table-condensed table-striped" runat="server">
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
