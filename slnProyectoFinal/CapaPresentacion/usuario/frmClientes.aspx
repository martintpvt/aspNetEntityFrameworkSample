<%@ Page Title="" Language="C#" MasterPageFile="~/mstPrincipal.Master" AutoEventWireup="true" CodeBehind="frmClientes.aspx.cs" Inherits="slnProyectoFinal.usuario.frmClientes" %>
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
                <li class="active"><a href="frmClientes.aspx">Clientes</a></li>
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
    <div class="formulario span12 col-md-12">
        <div class="bottom-line span12 col-md-12">
            <div class="span6 col-md-6">
                <label for="Contenido_txtNombre">Nombre:</label>
                <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="José"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtApellido">Apellido:</label>
                <asp:TextBox ID="txtApellido" runat="server" class="form-control" placeholder="López"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtIdentificacion">CI/RUC:</label> 
                <asp:TextBox ID="txtIdentificacion" runat="server" class="form-control" placeholder="1718947706" TextMode="Number"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtDireccion">Dirección:</label>
                <asp:TextBox ID="txtDireccion" runat="server" class="form-control" placeholder="De los Carrisos N3-449 y los Fresnos" TextMode="Multiline"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtTelefono">Teléfono:</label>
                <asp:TextBox ID="txtTelefono" runat="server" class="form-control" placeholder="022788372" TextMode="Number"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtEmail">Correo Electrónico:</label>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="mnalmeida@udlanet.ec" TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group span12 col-md-12 top-space">
                <asp:Button ID="btnCrearCliente" runat="server" Text="Crear Cliente" class="btn btn-default" OnClick="btnCrearCliente_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space bottom-line">
            <div class="span12 col-md-12">
                <label for="Contenido_ddlClientes">Cliente para modificar:</label>
                <asp:DropDownList ID="ddlClientes" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlClientes_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoNombre">Nuevo nombre:</label>
                <asp:TextBox ID="txtNuevoNombre" runat="server" class="form-control" placeholder="José"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoApellido">Nuevo apellido:</label>
                <asp:TextBox ID="txtNuevoApellido" runat="server" class="form-control" placeholder="López"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoIdentificacion">Nuevo CI/RUC:</label> 
                <asp:TextBox ID="txtNuevoIdentificacion" runat="server" class="form-control" placeholder="1718947706" TextMode="Number"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoDireccion">Nuevo dirección:</label>
                <asp:TextBox ID="txtNuevoDireccion" runat="server" class="form-control" placeholder="De los Carrisos N3-449 y los Fresnos" TextMode="Multiline"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoTelefono">Nuevo teléfono:</label>
                <asp:TextBox ID="txtNuevoTelefono" runat="server" class="form-control" placeholder="022788372" TextMode="Number"></asp:TextBox>
            </div>
            <div class="span6 col-md-6">
                <label for="Contenido_txtNuevoEmail">Nuevo correo electrónico:</label>
                <asp:TextBox ID="txtNuevoEmail" runat="server" class="form-control" placeholder="mnalmeida@udlanet.ec" TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group span12 col-md-12 top-space">
                <asp:Button ID="btnActualizarCliente" runat="server" Text="Actualizar Cliente" class="btn btn-default" OnClick="btnActualizarCliente_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space bottom-line bottom-space">
            <div class="span6 col-md-6">
                <label for="Contenido_ddlClientesEliminar">Cliente para eliminar:</label>
                <asp:DropDownList ID="ddlClientesEliminar" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div class="span6 col-md-6">
                <asp:Button ID="btnEliminarCliente" runat="server" Text="Eliminar Cliente" class="btn btn-default" OnClick="btnEliminarCliente_Click" />
            </div>
        </div>
        <div class="span12 col-md-12 top-space">
            <div class="span6 col-md-6">
                <asp:Button ID="btnMostrarClientes" runat="server" Text="Mostrar Clientes" class="btn btn-default" OnClick="btnMostrarClientes_Click" />
            </div>
            <div class="span6 col-md-6">
                <div class="table-responsive">
                    <asp:GridView ID="gvClientes" class="table table-bordered table-condensed table-striped" runat="server">
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
