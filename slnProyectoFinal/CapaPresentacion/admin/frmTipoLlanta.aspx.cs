using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using System.Data;

namespace slnProyectoFinal
{
    public partial class frmTipoLlanta : System.Web.UI.Page
    {
        clsTipoLlanta tipoLlanta = new clsTipoLlanta();
        clsBodega bodega = new clsBodega();
        clsCategoria categoria = new clsCategoria();
        clsProveedor proveedor = new clsProveedor();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenarDdl();
        }

        protected void btnCrearTipoLlanta_Click(object sender, EventArgs e)
        {
            try
            {
                if (decimal.Parse(txtPrecioUnitario.Text) > decimal.Parse(txtPrecioCompra.Text))
                {
                    int respuesta = tipoLlanta.ingresarTipoLlanta(int.Parse(ddlBodega.SelectedValue), int.Parse(ddlCategoria.SelectedValue), txtNombre.Text, int.Parse(txtStock.Text), txtMarca.Text, int.Parse(txtRin.Text), decimal.Parse(txtPrecioUnitario.Text), txtColor.Text, int.Parse(ddlProveedor.SelectedValue), Application["identificacion"].ToString(), decimal.Parse(txtPrecioCompra.Text));

                    if (respuesta == 1)
                    {
                        llenarDdl();
                        messageBox("Se ingresó correctamente el tipo de llanta.");

                        txtNombre.Text = txtMarca.Text = txtPrecioUnitario.Text = txtStock.Text = txtRin.Text = txtColor.Text = txtPrecioCompra.Text = "";
                    }
                    else
                        messageBox("No se ingresó correctamente el tipo de llanta.");
                }
                else
                {
                    messageBox("El precio de venta debe ser mayor al precio de compra.");
                }
            }
            catch
            {
                messageBox("Ingrese datos válidos.");
            }
        }

        protected void btnActualizarTipoLlanta_Click(object sender, EventArgs e)
        {
            try
            {
                if(decimal.Parse(txtNuevoPrecioUnitario.Text) > decimal.Parse(txtNuevoPrecioCompra.Text))
                {
                    int respuesta = tipoLlanta.actualizarTipoLlanta(int.Parse(ddlTiposLlanta.SelectedValue), int.Parse(ddlBodega.SelectedValue), int.Parse(ddlCategoria.SelectedValue), txtNombre.Text, int.Parse(txtStock.Text), txtMarca.Text, int.Parse(txtRin.Text), decimal.Parse(txtPrecioUnitario.Text), txtColor.Text, int.Parse(ddlNuevoProveedor.SelectedValue), decimal.Parse(txtNuevoPrecioCompra.Text));

                    if (respuesta == 1)
                    {
                        llenarDdl();
                        messageBox("Se actualizó correctamente el tipo de llanta.");
                    }
                    else
                        messageBox("No se actualizó correctamente el tipo de llanta.");
                }
                else
                {
                    messageBox("El precio de venta debe ser mayor al precio de compra.");
                }
            }
            catch
            {
                messageBox("Revise los datos para actualizar.");
            }
        }

        protected void btnEliminarTipoLlanta_Click(object sender, EventArgs e)
        {
            try
            {
                int respuesta = tipoLlanta.eliminarTipoLlanta(int.Parse(ddlTiposLlantaEliminar.SelectedValue));

                if (respuesta == 1)
                {
                    llenarDdl();
                    messageBox("Se eliminó correctamente el tipo de llanta.");
                }
                else
                    messageBox("No se eliminó correctamente el tipo de llanta.");
            }
            catch
            {
                messageBox("No existen tipos de llantas para eliminar.");
            }
        }

        protected void btnMostrarTiposLlanta_Click(object sender, EventArgs e)
        {
            DataSet dataSet = tipoLlanta.consultarTiposLlanta();

            gvTiposLlanta.DataSource = dataSet;
            gvTiposLlanta.DataBind();
        }

        public void cargarDatosActualizacion()
        {
            int idTipoLlanta = int.Parse(ddlTiposLlanta.SelectedValue);
            DataSet dataSet = tipoLlanta.consultarTipoLlanta(idTipoLlanta);

            foreach (DataRow row in dataSet.Tables["TipoLlanta"].Rows)
            {
                if (row["Id_TipoLlanta"].ToString().Equals(ddlTiposLlanta.SelectedValue))
                {
                    ddlNuevoBodega.SelectedValue = row["Id_Bodega"].ToString();
                    ddlNuevoCategoria.SelectedValue = row["Id_Categoria"].ToString();
                    ddlNuevoProveedor.SelectedValue = row["Id_Proveedor"].ToString();

                    txtNuevoNombre.Text = row["NombreTipoLlanta"].ToString();
                    txtNuevoStock.Text = row["Stock"].ToString().Trim();
                    txtNuevoMarca.Text = row["Marca"].ToString();
                    txtNuevoRin.Text = row["Rin"].ToString().Trim();
                    txtNuevoPrecioUnitario.Text = row["PrecioUnitario"].ToString().Replace(',', '.').Trim();
                    txtNuevoPrecioCompra.Text = row["PrecioCompra"].ToString().Replace(',', '.').Trim();
                    txtNuevoColor.Text = row["Color"].ToString();
                }
            }
        }

        public void llenarDdl()
        {
            DataSet dataSetTipoLlanta = tipoLlanta.consultarNombreTiposLlanta();
            DataSet dataSetBodega = bodega.consultarNombreBodegas();
            DataSet dataSetCategoria = categoria.consultarNombreCategorias();
            DataSet dataSetProveedor = proveedor.consultarNombreProveedores();

            ddlTiposLlanta.DataSource = dataSetTipoLlanta;
            ddlTiposLlanta.DataTextField = "NombreTipoLlanta";
            ddlTiposLlanta.DataValueField = "Id_TipoLlanta";
            ddlTiposLlanta.DataBind();

            ddlTiposLlantaEliminar.DataSource = dataSetTipoLlanta;
            ddlTiposLlantaEliminar.DataTextField = "NombreTipoLlanta";
            ddlTiposLlantaEliminar.DataValueField = "Id_TipoLlanta";
            ddlTiposLlantaEliminar.DataBind();

            ddlBodega.DataSource = dataSetBodega;
            ddlBodega.DataTextField = "NombreBodega";
            ddlBodega.DataValueField = "Id_Bodega";
            ddlBodega.DataBind();

            ddlCategoria.DataSource = dataSetCategoria;
            ddlCategoria.DataTextField = "NombreCategoria";
            ddlCategoria.DataValueField = "Id_Categoria";
            ddlCategoria.DataBind();

            ddlProveedor.DataSource = dataSetProveedor;
            ddlProveedor.DataTextField = "NombreProveedor";
            ddlProveedor.DataValueField = "Id_Proveedor";
            ddlProveedor.DataBind();

            ddlNuevoBodega.DataSource = dataSetBodega;
            ddlNuevoBodega.DataTextField = "NombreBodega";
            ddlNuevoBodega.DataValueField = "Id_Bodega";
            ddlNuevoBodega.DataBind();

            ddlNuevoCategoria.DataSource = dataSetCategoria;
            ddlNuevoCategoria.DataTextField = "NombreCategoria";
            ddlNuevoCategoria.DataValueField = "Id_Categoria";
            ddlNuevoCategoria.DataBind();

            ddlNuevoProveedor.DataSource = dataSetProveedor;
            ddlNuevoProveedor.DataTextField = "NombreProveedor";
            ddlNuevoProveedor.DataValueField = "Id_Proveedor";
            ddlNuevoProveedor.DataBind();

            try
            {
                ddlTiposLlanta.SelectedIndex = 0;
                cargarDatosActualizacion();
            }
            catch { }

            try
            {
                ddlTiposLlantaEliminar.SelectedIndex = 0;
            }
            catch { }

            try
            {
                ddlBodega.SelectedIndex = 0;
            }
            catch { }

            try
            {
                ddlCategoria.SelectedIndex = 0;
            }
            catch { }

            try
            {
                ddlProveedor.SelectedIndex = 0;
            }
            catch { }
        }

        public void messageBox(string mensaje)
        {
            string script = "alert('" + mensaje + "');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }

        protected void ddlTiposLlanta_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarDatosActualizacion();
        }
    }
}