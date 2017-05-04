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
    public partial class frmReporteVentasTotales : System.Web.UI.Page
    {
        clsVenta venta = new clsVenta();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet dataset = venta.consultarVentasTotales();

            gvVentas.DataSource = dataset;
            gvVentas.DataBind();
        }
    }
}