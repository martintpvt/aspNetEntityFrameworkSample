using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace slnProyectoFinal
{
    public partial class frmProveedores : System.Web.UI.Page
    {
        clsProveedor proveedor = new clsProveedor();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenarDdlProveedores();
        }

        protected void btnCrearProveedor_Click(object sender, EventArgs e)
        {
            if (proveedor.ingresarProveedor(txtNombre.Text, txtRUC.Text, txtDireccion.Text, txtTelefono.Text))
            {
                messageBox("Proveedor ingresado correctamente.");
                llenarDdlProveedores();

                txtNombre.Text = txtRUC.Text = txtDireccion.Text = txtTelefono.Text = "";
            }
            else
            {
                messageBox("No se ingresó el proveedor.");
            }
        }

        protected void btnActualizarProveedor_Click(object sender, EventArgs e)
        {
            try
            {
                if (proveedor.actualizarProveedor(int.Parse(ddlProveedores.SelectedValue), txtNuevoNombre.Text, txtNuevoRUC.Text, txtNuevoDireccion.Text, txtNuevoTelefono.Text))
                {
                    messageBox("Proveedor actualizado correctamente.");
                    llenarDdlProveedores();

                    txtNuevoNombre.Text = txtNuevoRUC.Text = txtNuevoDireccion.Text = txtNuevoTelefono.Text = "";
                }
                else
                {
                    messageBox("No se actualizó el proveedor.");
                }
            }
            catch
            {
                messageBox("No existen proveedores para actualizar.");
            }
        }

        protected void btnEliminarProveedor_Click(object sender, EventArgs e)
        {
            try
            {
                if (proveedor.eliminarProveedor(int.Parse(ddlProveedoresEliminar.SelectedValue)))
                {
                    messageBox("Proveedor eliminado correctamente.");
                    llenarDdlProveedores();
                }
                else
                {
                    messageBox("No se eliminó el proveedor.");
                }
            }
            catch
            {
                messageBox("No existen proveedores para eliminar.");
            }
        }

        protected void btnMostrarProveedores_Click(object sender, EventArgs e)
        {
            DataSet dataSet = proveedor.consultarProveedores();

            gvProveedores.DataSource = dataSet;
            gvProveedores.DataBind();
        }

        public void cargarDatosActualizacion()
        {
            int idProveedor = int.Parse(ddlProveedores.SelectedValue);
            DataSet dataSet = proveedor.consultarProveedor(idProveedor);

            foreach (DataRow row in dataSet.Tables["Proveedor"].Rows)
            {
                if (row["Id_Proveedor"].ToString().Equals(ddlProveedores.SelectedValue))
                {
                    txtNuevoNombre.Text = row["NombreProveedor"].ToString();
                    txtNuevoRUC.Text = row["RUCProveedor"].ToString().Trim();
                    txtNuevoDireccion.Text = row["DireccionProveedor"].ToString();
                    txtNuevoTelefono.Text = row["TelefonoProveedor"].ToString().Trim();
                }
            }
        }

        public void llenarDdlProveedores()
        {
            DataSet dataSet = proveedor.consultarNombreProveedores();

            ddlProveedores.DataSource = dataSet;
            ddlProveedores.DataTextField = "NombreProveedor";
            ddlProveedores.DataValueField = "Id_Proveedor";
            ddlProveedores.DataBind();

            ddlProveedoresEliminar.DataSource = dataSet;
            ddlProveedoresEliminar.DataTextField = "NombreProveedor";
            ddlProveedoresEliminar.DataValueField = "Id_Proveedor";
            ddlProveedoresEliminar.DataBind();

            try
            {
                ddlProveedores.SelectedIndex = 0;
                cargarDatosActualizacion();
                ddlProveedoresEliminar.SelectedIndex = 0;
            }
            catch
            {

            }
        }

        public void messageBox(string mensaje)
        {
            string script = "alert('" + mensaje + "');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }

        protected void ddlProveedores_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarDatosActualizacion();
        }
    }
}