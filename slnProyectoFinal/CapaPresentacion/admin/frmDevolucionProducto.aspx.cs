using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using System.Data;

namespace CapaPresentacion.admin
{
    public partial class frmDevolucionProducto : System.Web.UI.Page
    {
        clsCliente cliente = new clsCliente();
        clsVenta venta = new clsVenta();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenarDdlClientes();
        }

        protected void btnEfectuarDevolucion_Click(object sender, EventArgs e)
        {
            try
            {
                if (venta.devolverVenta(int.Parse(ddlFacturas.SelectedValue)) == 1)
                {
                    messageBox("Se realizó la devolución correctamente.");
                    llenarDdlVentas();
                }
                else
                {
                    messageBox("No se realizó la devolución correctamente.");
                }
            }
            catch (Exception ex)
            {
                messageBox("No existen facturas para devolver.");
            }
        }

        protected void ddlClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenarDdlVentas();
        }

        protected void ddlFacturas_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarProductos();
        }

        public void llenarDdlVentas()
        {
            try
            {
                DataSet dataset = venta.consultarClienteVenta(int.Parse(ddlClientes.SelectedValue));

                ddlFacturas.DataSource = dataset;
                ddlFacturas.DataTextField = "Id_Venta";
                ddlFacturas.DataValueField = "Id_Venta";
                ddlFacturas.DataBind();

                try
                {
                    ddlFacturas.SelectedIndex = 0;

                    cargarProductos();
                }
                catch { }
            }
            catch { }
        }

        public void llenarDdlClientes()
        {
            DataSet dataSet = cliente.consultarNombreClientes();

            ddlClientes.DataSource = dataSet;
            ddlClientes.DataTextField = "NombreApellido";
            ddlClientes.DataValueField = "Id_Cliente";
            ddlClientes.DataBind();

            try
            {
                ddlClientes.SelectedIndex = 0;
                llenarDdlVentas();
            }
            catch { }
        }

        public void cargarProductos()
        {
            try
            {
                DataSet dataset = venta.consultarProductosFactura(int.Parse(ddlFacturas.SelectedValue));

                gvFactura.DataSource = dataset;
                gvFactura.DataBind();
            }
            catch
            { }
        }

        public void messageBox(string mensaje)
        {
            string script = "alert('" + mensaje + "');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }
    }
}