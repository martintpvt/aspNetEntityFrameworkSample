<%@ Page Title="" Language="C#" MasterPageFile="~/mstPrincipal.Master" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="slnProyectoFinal.frmLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Sistema de Venta de Llantas</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/frmRegistro.aspx"><span class="glyphicon glyphicon-log-out"></span>Registrar Usuario</a></li>
            </ul>
        </div>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contenido" runat="server">
    

    <div class="formulario span12 col-md-12">

        <asp:Login ID="lgnPrincipal" runat="server" OnLoggedIn="lgnPrincipal_LoggedIn" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>

    </div>

</asp:Content>
