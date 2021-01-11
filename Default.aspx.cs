using System;
using System.Collections.Generic;
using System.Configuration;
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
            if (Session["NoAcceso"] != null)
            {
                Session["NoAcceso"] = null;
                error.Visible = true;
            }
            Session["Acceso"] = null;
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            string UserSession = ConfigurationManager.AppSettings["user"].ToString().Trim();
            string PassSession = ConfigurationManager.AppSettings["pass"].ToString().Trim();
            if (!string.IsNullOrEmpty(userNameInput.Text) && !string.IsNullOrEmpty(passwordInput.Text))
            {
                if(userNameInput.Text == UserSession && passwordInput.Text == PassSession)
                {
                    Session["Acceso"] = true;
                    Response.Redirect("~/views/Dashboard.aspx");
                }
                else
                {
                    Session["NoAcceso"] = true;
                    Response.Redirect("~/Default.aspx");
                }
            }
         
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "alertFunction", "swal('Selecciona Origen')", true);
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "alerta", "alert('"+userNameInput.Text+"');",true);
        }
    }
}