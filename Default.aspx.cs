using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reception_Sgs
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/views/Dashboard.aspx");
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "alertFunction", "swal('Selecciona Origen')", true);
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "alerta", "alert('"+userNameInput.Text+"');",true);
        }
    }
}