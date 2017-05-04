using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace CapaPresentacion.usuario
{
    public partial class frmInicio : System.Web.UI.Page
    {
        clsUsuario objUsuario = new clsUsuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            MembershipUser usuario = Membership.GetUser(User.Identity.Name);
            Application["identificacion"] = usuario.ProviderUserKey.ToString();

            objUsuario.ingresarUsuario(Application["identificacion"].ToString());
        }
    }
}