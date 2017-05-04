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
    public partial class frmCategorias : System.Web.UI.Page
    {
        clsCategoria categoria = new clsCategoria();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenarDdlCategorias();
        }

        protected void btnCrearCategoria_Click(object sender, EventArgs e)
        {
            if (categoria.ingresarCategoria(txtNombre.Text, txtDescripcion.Text))
            {
                messageBox("Categoría ingresada correctamente.");
                llenarDdlCategorias();

                txtNombre.Text = txtDescripcion.Text = "";
            }
            else
            {
                messageBox("No se ingresó la categoría.");
            }
        }

        protected void btnActualizarCategoria_Click(object sender, EventArgs e)
        {
            try
            {
                if (categoria.actualizarCategoria(int.Parse(ddlCategorias.SelectedValue), txtNuevoNombre.Text, txtNuevoDescripcion.Text))
                {
                    messageBox("Categoría actualizada correctamente.");
                    llenarDdlCategorias();

                    txtNuevoNombre.Text = txtNuevoDescripcion.Text = "";
                }
                else
                {
                    messageBox("No se actualizó la categoría.");
                }
            }
            catch
            {
                messageBox("No existen categorías para actualizar.");
            }
        }

        protected void btnEliminarCategoria_Click(object sender, EventArgs e)
        {
            try
            {
                if (categoria.eliminarCategoria(int.Parse(ddlCategoriasEliminar.SelectedValue)))
                {
                    messageBox("Categoría eliminada correctamente.");
                    llenarDdlCategorias();
                }
                else
                {
                    messageBox("No se eliminó la categoría.");
                }
            }
            catch
            {
                messageBox("No existen categorías para eliminar.");
            }
        }

        protected void btnMostrarCategorias_Click(object sender, EventArgs e)
        {
            DataSet dataSet = categoria.consultarCategorias();

            gvCategorias.DataSource = dataSet;
            gvCategorias.DataBind();
        }

        public void cargarDatosActualizacion()
        {
            int idCategoria = int.Parse(ddlCategorias.SelectedValue);
            DataSet dataSet = categoria.consultarCategoria(idCategoria);

            foreach (DataRow row in dataSet.Tables["Categoria"].Rows)
            {
                if (row["Id_Categoria"].ToString().Equals(ddlCategorias.SelectedValue))
                {
                    txtNuevoNombre.Text = row["NombreCategoria"].ToString();
                    txtNuevoDescripcion.Text = row["DescripcionCategoria"].ToString();
                }
            }
        }

        public void llenarDdlCategorias()
        {
            DataSet dataSet = categoria.consultarNombreCategorias();

            ddlCategorias.DataSource = dataSet;
            ddlCategorias.DataTextField = "NombreCategoria";
            ddlCategorias.DataValueField = "Id_Categoria";
            ddlCategorias.DataBind();

            ddlCategoriasEliminar.DataSource = dataSet;
            ddlCategoriasEliminar.DataTextField = "NombreCategoria";
            ddlCategoriasEliminar.DataValueField = "Id_Categoria";
            ddlCategoriasEliminar.DataBind();

            try
            {
                ddlCategorias.SelectedIndex = 0;
                cargarDatosActualizacion();
                ddlCategoriasEliminar.SelectedIndex = 0;
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

        protected void ddlCategorias_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarDatosActualizacion();
        }
    }
}