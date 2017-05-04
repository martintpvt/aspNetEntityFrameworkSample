<%@ Page Title="" Language="C#" MasterPageFile="~/mstPrincipal.Master" AutoEventWireup="true" CodeBehind="frmVenta.aspx.cs" Inherits="CapaPresentacion.usuario.frmVenta" %>
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
                <li><a href="frmClientes.aspx">Clientes</a></li>
                <li class="active"><a href="frmVenta.aspx">Venta</a></li>
                <li><a href="frmFacturacion.aspx">Facturación</a></li>
                <li><a href="frmReporteVentas.aspx">Reporte de Ventas</a></li>
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
                <label for="Contenido_ddlClientes">Cliente:</label>
                <asp:DropDownList ID="ddlClientes" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_ddlTiposLlanta">Tipo de llanta:</label>
                <asp:DropDownList ID="ddlTiposLlanta" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlTiposLlanta_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtPrecioUnitario">Precio unitario:</label>
                <asp:TextBox ID="txtPrecioUnitario" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtCantidad">Cantidad:</label>
                <asp:TextBox ID="txtCantidad" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
            </div>
            <div class="form-group span6 col-md-6 top-space">
                <asp:Button ID="btnAgregarCarrito" runat="server" Text="Agregar al Carrito" class="btn btn-default" OnClick="btnAgregarCarrito_Click" />
            </div>
            <div class="form-group span6 col-md-6 top-space">
                <asp:Button ID="btnComprar" runat="server" Text="Realizar Compra" class="btn btn-default" OnClick="btnComprar_Click" />
            </div>
            <div class="span12 col-md-12">
                <div class="table-responsive">
                    <asp:GridView ID="gvCarrito" class="table table-bordered table-condensed table-striped" runat="server">
                        
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
