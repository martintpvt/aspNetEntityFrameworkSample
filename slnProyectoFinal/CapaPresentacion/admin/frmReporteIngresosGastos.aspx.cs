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
    public partial class frmReporteIngresosGastos : System.Web.UI.Page
    {
        clsTipoLlanta tipoLlanta = new clsTipoLlanta();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet dataset = tipoLlanta.consultarIngresosGastos();

            gvIngresosVSGastos.DataSource = dataset;
            gvIngresosVSGastos.DataBind();
        }
    }
}