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
    public partial class frmUsuariosSistema : System.Web.UI.Page
    {
        clsUsuario usuario = new clsUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenarDdlUsuarios();
        }

        protected void btnActualizarUsuario_Click(object sender, EventArgs e)
        {
            try
            {
                    if (usuario.actualizarUsuario(int.Parse(ddlUsuario.SelectedValue), txtUserName.Text, txtEmail.Text))
                    {
                        messageBox("Usuario actualizado correctamente.");
                        llenarDdlUsuarios();

                    txtUserName.Text = txtEmail.Text = "";
                    }
                    else
                    {
                        messageBox("No se actualizó el usuario.");
                    }
            }
            catch
            {
                messageBox("No existen usuarios para actualizar.");
            }
        }

        protected void btnEliminarUsuario_Click(object sender, EventArgs e)
        {
            try
            {
                if (usuario.eliminarUsuario(int.Parse(ddlUsuarioEliminar.SelectedValue)))
                {
                    messageBox("Usuario eliminado correctamente.");
                    llenarDdlUsuarios();
                }
                else
                {
                    messageBox("No se eliminó el usuario.");
                }
            }
            catch
            {
                messageBox("No existen usuarios para eliminar.");
            }
        }

        protected void btnMostrarUsuarios_Click(object sender, EventArgs e)
        {
            DataSet dataSet = usuario.consultarUsuarios();

            gvUsuarios.DataSource = dataSet;
            gvUsuarios.DataBind();
        }

        protected void ddlUsuario_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarDatosActualizacion();
        }

        public bool passwordsAreEqual(TextBox txtPassword, TextBox txtConfirmar)
        {
            if (txtPassword.Text.Equals(txtConfirmar.Text))
                return true;
            else
            {
                return false;
            }
        }

        public void cargarDatosActualizacion()
        {
            int idUsuario = int.Parse(ddlUsuario.SelectedValue);
            DataSet dataSet = usuario.consultarUsuario(idUsuario);

            foreach(DataRow row in dataSet.Tables["Usuario"].Rows)
            {
                if(row["Id_Usuario"].ToString().Equals(ddlUsuario.SelectedValue))
                {
                    txtUserName.Text = row["UserName"].ToString();
                    txtEmail.Text = row["Email"].ToString();
                }
            }
        }

        public void llenarDdlUsuarios()
        {
            DataSet dataSet = usuario.consultarNombreUsuarios();

            ddlUsuario.DataSource = dataSet;
            ddlUsuario.DataTextField = "UserName";
            ddlUsuario.DataValueField = "Id_Usuario";
            ddlUsuario.DataBind();

            ddlUsuarioEliminar.DataSource = dataSet;
            ddlUsuarioEliminar.DataTextField = "UserName";
            ddlUsuarioEliminar.DataValueField = "Id_Usuario";
            ddlUsuarioEliminar.DataBind();

            try
            {
                ddlUsuario.SelectedIndex = 0;
                ddlUsuarioEliminar.SelectedIndex = 0;

                cargarDatosActualizacion();
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
    }
}