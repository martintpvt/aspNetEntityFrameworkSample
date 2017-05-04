<%@ Page Title="" Language="C#" MasterPageFile="~/mstPrincipal.Master" AutoEventWireup="true" CodeBehind="frmReporteVentas.aspx.cs" Inherits="CapaPresentacion.usuario.frmReporteVentas" %>
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
                <li><a href="frmVenta.aspx">Venta</a></li>
                <li><a href="frmFacturacion.aspx">Facturación</a></li>
                <li class="active"><a href="frmReporteVentas.aspx">Reporte de Ventas</a></li>
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
            <h3>
                A continuación el reporte de ventas de 
                <asp:Label ID="lblNombreUsuario" runat="server"></asp:Label>
                
            </h3>
        </div>
        <div class="top-space span12 col-md-12">
            <div class="table-responsive">
                <asp:GridView ID="gvFacturas" class="table table-bordered table-condensed table-striped" runat="server">
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
