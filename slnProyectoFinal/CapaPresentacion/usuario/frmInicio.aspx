<%@ Page Title="" Language="C#" MasterPageFile="~/mstPrincipal.Master" AutoEventWireup="true" CodeBehind="frmInicio.aspx.cs" Inherits="CapaPresentacion.usuario.frmInicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="frmInicio.aspx">Sistema de Venta de Llantas</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="frmInicio.aspx">Inicio</a></li>
                <li><a href="frmClientes.aspx">Clientes</a></li>
                <li><a href="frmVenta.aspx">Venta</a></li>
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
</asp:Content>
