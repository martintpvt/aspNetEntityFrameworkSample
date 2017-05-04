using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace CapaPresentacion
{
    public partial class frmRegistro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cuwRegistro_CreatedUser(object sender, EventArgs e)
        {
            if (chkAdministrador.Checked)
            {
                System.Web.Security.Roles.AddUserToRole(cuwRegistro.UserName, "admin");
            }
            else
            {
                System.Web.Security.Roles.AddUserToRole(cuwRegistro.UserName, "usuario");
            }
        }
    }
}