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
    public partial class frmBodegas : System.Web.UI.Page
    {
        clsBodega bodega = new clsBodega();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenarDdlBodegas();
        }

        protected void btnCrearBodega_Click(object sender, EventArgs e)
        {
            if (bodega.ingresarBodega(txtNombre.Text, txtDireccion.Text, int.Parse(txtCapacidad.Text), txtTelefono.Text))
            {
                messageBox("Bodega ingresado correctamente.");
                llenarDdlBodegas();

                txtNombre.Text = txtDireccion.Text = txtCapacidad.Text = txtTelefono.Text = "";
            }
            else
            {
                messageBox("No se ingresó la bodega.");
            }
        }

        protected void btnActualizarBodega_Click(object sender, EventArgs e)
        {
            try
            {
                if (bodega.actualizarBodega(int.Parse(ddlBodegas.SelectedValue), txtNuevoNombre.Text, txtNuevoDireccion.Text, int.Parse(txtNuevoCapacidad.Text), txtNuevoTelefono.Text))
                {
                    messageBox("Bodega actualizado correctamente.");
                    llenarDdlBodegas();

                    txtNuevoNombre.Text = txtNuevoDireccion.Text = txtNuevoCapacidad.Text = txtNuevoTelefono.Text = "";
                }
                else
                {
                    messageBox("No se actualizó la bodega.");
                }
            }
            catch
            {
                messageBox("No existen bodegas para actualizar.");
            }
        }

        protected void btnEliminarBodega_Click(object sender, EventArgs e)
        {
            try
            {
                if (bodega.eliminarBodega(int.Parse(ddlBodegasEliminar.SelectedValue)))
                {
                    messageBox("Bodega eliminada correctamente.");
                    llenarDdlBodegas();
                }
                else
                {
                    messageBox("No se eliminó la bodega.");
                }
            }
            catch
            {
                messageBox("No existen bodegas para eliminar.");
            }
        }

        protected void btnMostrarBodegas_Click(object sender, EventArgs e)
        {
            DataSet dataSet = bodega.consultarBodegas();

            gvBodegas.DataSource = dataSet;
            gvBodegas.DataBind();
        }

        public void cargarDatosActualizacion()
        {
            int idBodega = int.Parse(ddlBodegas.SelectedValue);
            DataSet dataSet = bodega.consultarBodega(idBodega);

            foreach (DataRow row in dataSet.Tables["Bodega"].Rows)
            {
                if (row["Id_Bodega"].ToString().Equals(ddlBodegas.SelectedValue))
                {
                    txtNuevoNombre.Text = row["NombreBodega"].ToString();
                    txtNuevoDireccion.Text = row["DireccionBodega"].ToString();
                    txtNuevoCapacidad.Text = row["CapacidadBodega"].ToString().Trim();
                    txtNuevoTelefono.Text = row["TelefonoBodega"].ToString().Trim();
                }
            }
        }

        public void llenarDdlBodegas()
        {
            DataSet dataSet = bodega.consultarNombreBodegas();

            ddlBodegas.DataSource = dataSet;
            ddlBodegas.DataTextField = "NombreBodega";
            ddlBodegas.DataValueField = "Id_Bodega";
            ddlBodegas.DataBind();

            ddlBodegasEliminar.DataSource = dataSet;
            ddlBodegasEliminar.DataTextField = "NombreBodega";
            ddlBodegasEliminar.DataValueField = "Id_Bodega";
            ddlBodegasEliminar.DataBind();

            try
            {
                ddlBodegas.SelectedIndex = 0;
                cargarDatosActualizacion();
                ddlBodegasEliminar.SelectedIndex = 0;
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

        protected void ddlBodegas_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarDatosActualizacion();
        }
    }
}