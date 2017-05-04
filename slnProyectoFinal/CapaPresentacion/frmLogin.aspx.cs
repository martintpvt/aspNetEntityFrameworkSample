using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace slnProyectoFinal
{
    public partial class frmLogin : System.Web.UI.Page
    {
        clsUsuario usuario = new clsUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            Application["identificacion"] = "";
        }

        protected void lgnPrincipal_LoggedIn(object sender, EventArgs e)
        {
            if (System.Web.Security.Roles.IsUserInRole(lgnPrincipal.UserName, "admin"))
            {
                Response.Redirect("admin/frmInicio.aspx");

            }
            else
            {
                Response.Redirect("usuario/frmInicio.aspx");
            }

        }

        public void messageBox(string mensaje)
        {
            string script = "alert('" + mensaje + "');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }
    }
}