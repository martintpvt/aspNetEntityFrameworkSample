using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using System.Data;

namespace slnProyectoFinal.usuario
{
    public partial class frmClientes : System.Web.UI.Page
    {
        clsCliente cliente = new clsCliente();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenarDdlClientes();
        }

        protected void btnCrearCliente_Click(object sender, EventArgs e)
        {
            if (cliente.ingresarCliente(txtNombre.Text, txtApellido.Text, txtIdentificacion.Text, txtDireccion.Text, txtTelefono.Text, txtEmail.Text))
            {
                messageBox("Cliente ingresado correctamente.");
                llenarDdlClientes();

                txtNombre.Text = txtApellido.Text = txtIdentificacion.Text = txtDireccion.Text = txtTelefono.Text = txtEmail.Text = "";
            }
            else
            {
                messageBox("No se ingresó el cliente.");
            }
        }

        protected void btnActualizarCliente_Click(object sender, EventArgs e)
        {
            try
            {
                if (cliente.actualizarCliente(int.Parse(ddlClientes.SelectedValue), txtNuevoNombre.Text, txtNuevoApellido.Text, txtNuevoIdentificacion.Text, txtNuevoDireccion.Text, txtNuevoTelefono.Text, txtNuevoEmail.Text))
                {
                    messageBox("Cliente actualizado correctamente.");
                    llenarDdlClientes();

                    txtNuevoNombre.Text = txtNuevoApellido.Text = txtNuevoIdentificacion.Text = txtNuevoDireccion.Text = txtNuevoTelefono.Text = txtNuevoEmail.Text = "";
                }
                else
                {
                    messageBox("No se actualizó el cliente.");
                }
            }
            catch
            {
                messageBox("No existen clientes para actualizar.");
            }
        }

        protected void btnEliminarCliente_Click(object sender, EventArgs e)
        {
            try
            {
                if (cliente.eliminarCliente(int.Parse(ddlClientesEliminar.SelectedValue)))
                {
                    messageBox("Cliente eliminado correctamente.");
                    llenarDdlClientes();
                }
                else
                {
                    messageBox("No se eliminó el cliente.");
                }
            }
            catch
            {
                messageBox("No existen clientes para eliminar.");
            }
        }

        protected void btnMostrarClientes_Click(object sender, EventArgs e)
        {
            DataSet dataSet = cliente.consultarClientes();

            gvClientes.DataSource = dataSet;
            gvClientes.DataBind();
        }

        public void cargarDatosActualizacion()
        {
            int idCliente = int.Parse(ddlClientes.SelectedValue);
            DataSet dataSet = cliente.consultarCliente(idCliente);

            foreach (DataRow row in dataSet.Tables["Cliente"].Rows)
            {
                if (row["Id_Cliente"].ToString().Equals(ddlClientes.SelectedValue))
                {
                    txtNuevoNombre.Text = row["NombreCliente"].ToString();
                    txtNuevoApellido.Text = row["ApellidoCliente"].ToString();
                    txtNuevoIdentificacion.Text = row["IdentificacionCliente"].ToString();
                    txtNuevoDireccion.Text = row["DireccionCliente"].ToString();
                    txtNuevoTelefono.Text = row["TelefonoCliente"].ToString();
                    txtNuevoEmail.Text = row["CorreoElectronicoCliente"].ToString();
                }
            }
        }

        public void llenarDdlClientes()
        {
            DataSet dataSet = cliente.consultarNombreClientes();

            ddlClientes.DataSource = dataSet;
            ddlClientes.DataTextField = "NombreApellido";
            ddlClientes.DataValueField = "Id_Cliente";
            ddlClientes.DataBind();

            ddlClientesEliminar.DataSource = dataSet;
            ddlClientesEliminar.DataTextField = "NombreApellido";
            ddlClientesEliminar.DataValueField = "Id_Cliente";
            ddlClientesEliminar.DataBind();

            try
            {
                ddlClientes.SelectedIndex = 0;
                cargarDatosActualizacion();
                ddlClientesEliminar.SelectedIndex = 0;
            }
            catch { }
        }

        public void messageBox(string mensaje)
        {
            string script = "alert('" + mensaje + "');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }

        protected void ddlClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarDatosActualizacion();
        }
    }
}