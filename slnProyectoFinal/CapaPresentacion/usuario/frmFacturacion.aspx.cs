using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using System.Data;

namespace CapaPresentacion.usuario
{
    public partial class frmFacturacion : System.Web.UI.Page
    {
        clsCliente cliente = new clsCliente();
        clsVenta venta = new clsVenta();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenarDdlClientes();
        }

        protected void ddlClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            getFacturas();
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
                getFacturas();
            }
            catch { }
        }

        public void getFacturas()
        {
            DataSet dataSet = venta.consultarVentaCliente(int.Parse(ddlClientes.SelectedValue));

            gvClientes.DataSource = dataSet;
            gvClientes.DataBind();
        }

        public void messageBox(string mensaje)
        {
            string script = "alert('" + mensaje + "');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }
    }
}