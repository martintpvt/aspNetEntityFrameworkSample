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
    public partial class frmReporteVentas : System.Web.UI.Page
    {
        clsVenta venta = new clsVenta();
        clsUsuario usuario = new clsUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string userName = "";

                DataSet dataset = usuario.consultarUsuario(Application["identificacion"].ToString());

                foreach (DataRow row in dataset.Tables["Usuario"].Rows)
                {
                    if (row["UserId"].ToString().Equals(Application["identificacion"].ToString()))
                    {
                        userName = row["UserName"].ToString();
                    }
                }

                lblNombreUsuario.Text = userName;
            }

            DataSet dataSet = venta.consultarVentaUsuario(Application["identificacion"].ToString());

            gvFacturas.DataSource = dataSet;
            gvFacturas.DataBind();
        }
    }
}