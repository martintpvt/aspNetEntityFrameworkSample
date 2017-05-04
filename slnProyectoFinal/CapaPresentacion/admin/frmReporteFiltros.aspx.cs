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
    public partial class frmReporteFiltros : System.Web.UI.Page
    {
        clsTipoLlanta tipoLlanta = new clsTipoLlanta();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                llenarDdlTiposLlanta();
        }

        protected void ddlTiposLlanta_SelectedIndexChanged(object sender, EventArgs e)
        {
            getStock();
        }

        public void llenarDdlTiposLlanta()
        {
            DataSet dataSet = tipoLlanta.consultarNombreTiposLlanta();

            ddlTiposLlanta.DataSource = dataSet;
            ddlTiposLlanta.DataTextField = "NombreTipoLlanta";
            ddlTiposLlanta.DataValueField = "Id_TipoLlanta";
            ddlTiposLlanta.DataBind();

            try
            {
                ddlTiposLlanta.SelectedIndex = 0;
                getStock();
            }
            catch { }
        }

        public void getStock()
        {
            DataSet dataSet = tipoLlanta.consultarStockTipoLlanta(int.Parse(ddlTiposLlanta.SelectedValue));

            gvTipoLlanta.DataSource = dataSet;
            gvTipoLlanta.DataBind();
        }

        public void messageBox(string mensaje)
        {
            string script = "alert('" + mensaje + "');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }
    }
}