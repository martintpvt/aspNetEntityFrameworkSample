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
    public partial class frmVenta : System.Web.UI.Page
    {
        clsCliente cliente = new clsCliente();
        clsTipoLlanta tipoLlanta = new clsTipoLlanta();
        clsVenta venta = new clsVenta();
        clsVentaTipoLlanta ventaTipoLlanta = new clsVentaTipoLlanta();
        List<clsProducto> listaProductos = new List<clsProducto>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenarDdls();

            listaProductos = (List<clsProducto>)Application["carrito"];
        }

        protected void btnAgregarCarrito_Click(object sender, EventArgs e)
        {
            clsProducto producto = new clsProducto();
            bool encontrado = false;
            DataSet dataSetTipoLlanta = tipoLlanta.consultarTipoLlanta(int.Parse(ddlTiposLlanta.SelectedValue));
            DataTable TipoLlanta = dataSetTipoLlanta.Tables["TipoLlanta"];

            foreach (DataRow rowTipoLlanta in TipoLlanta.Rows)
            {
                if (int.Parse(rowTipoLlanta["Id_TipoLlanta"].ToString()) == int.Parse(ddlTiposLlanta.SelectedValue))
                {
                    producto.Id = int.Parse(ddlTiposLlanta.SelectedValue);
                    producto.NombreTipoLlanta = rowTipoLlanta["NombreTipoLlanta"].ToString();
                    producto.Marca = rowTipoLlanta["Marca"].ToString();
                    producto.Rin = int.Parse(rowTipoLlanta["Rin"].ToString());
                    producto.Color = rowTipoLlanta["Color"].ToString();
                    producto.Cantidad = int.Parse(txtCantidad.Text);
                    
                    encontrado = true;

                    break;
                }
            }

            if (encontrado)
                listaProductos.Add(producto);

            Application["carrito"] = listaProductos;

            gvCarrito.DataSource = listaProductos;
            gvCarrito.DataBind();
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            int cont = 0;
            int idVenta = venta.ingresarVenta(Application["identificacion"].ToString(), int.Parse(ddlClientes.SelectedValue));

            foreach(clsProducto product in listaProductos)
            {
                if(ventaTipoLlanta.ingresarVentaTipoLlanta(idVenta, product.Id, product.Cantidad) == 1)
                    cont++;
            }

            if (cont > 1)
                messageBox("Se vendió correctamente " + cont + " productos.");
            else if (cont == 1)
                messageBox("Se vendió correctamente " + cont + " producto.");
            else
                messageBox("No se vendieron productos.");

            Application["carrito"] = new List<clsProducto>();
            listaProductos = (List<clsProducto>)Application["carrito"];
            gvCarrito.DataSource = listaProductos;
            gvCarrito.DataBind();
        }

        protected void ddlTiposLlanta_SelectedIndexChanged(object sender, EventArgs e)
        {
            getPrecioUnitario(int.Parse(ddlTiposLlanta.SelectedValue));
        }

        public void getPrecioUnitario(int idTipoLlanta)
        {
            txtPrecioUnitario.Text = "$" + tipoLlanta.consultarPrecioUnitario(idTipoLlanta) ;
        }

        public void llenarDdls()
        {
            DataSet dataSetClientes = cliente.consultarNombreClientes();
            DataSet dataSetTiposLlanta = tipoLlanta.consultarNombreTiposLlanta();

            ddlClientes.DataSource = dataSetClientes;
            ddlClientes.DataTextField = "NombreApellido";
            ddlClientes.DataValueField = "Id_Cliente";
            ddlClientes.DataBind();

            ddlTiposLlanta.DataSource = dataSetTiposLlanta;
            ddlTiposLlanta.DataTextField = "NombreTipoLlanta";
            ddlTiposLlanta.DataValueField = "Id_TipoLlanta";
            ddlTiposLlanta.DataBind();

            try
            {
                ddlClientes.SelectedIndex = 0;
            }
            catch {}

            try
            {
                ddlTiposLlanta.SelectedIndex = 0;
                getPrecioUnitario(int.Parse(ddlTiposLlanta.SelectedValue));
            }
            catch { }
        }

        public void messageBox(string mensaje)
        {
            string script = "alert('" + mensaje + "');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }
    }
}