using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reception_Sgs.views.mantenedores
{
    public partial class imagenes : System.Web.UI.Page
    {
        HttpClient client = new HttpClient();
        string servicio = ConfigurationManager.AppSettings["servicio"].ToString().Trim();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sucess"] != null)
            {
                if (Session["sucess"].ToString()=="True")
                {                   
                    MensajeExito.Visible = true;
                }
                else
                {
                    MensajeError.Visible = true;
                }
                Session["sucess"] = null;
            }
        }
        public void ListarRutas()
        {
            try
            {
                if (txtOI.Text != string.Empty && txtOL.Text != string.Empty && txtOISP.Text != string.Empty)
                {
                    string apiUrl = $"{servicio}Helpers/GetFiles?ol={txtOL.Text}&oi={txtOI.Text}&oisp={txtOISP.Text}";
                    WebClient client = new WebClient();
                    client.Headers["Content-type"] = "application/json";
                    client.Encoding = Encoding.UTF8;
                    string json = client.UploadString(apiUrl, "");
                    Models.FilesListDto entidad = (new JavaScriptSerializer()).Deserialize<Models.FilesListDto>(json);
                    dgvImagenes.DataSource = entidad.listFilesDto;
                    dgvImagenes.DataBind();

                }
                else
                {

                }
            }
            catch (Exception ex)
            {

            }

        }
        public void ListarImagenes()
        {
            try
            {
                if (txtOI.Text != string.Empty && txtOL.Text != string.Empty && txtOISP.Text != string.Empty)
                {
                    string apiUrl = $"{servicio}Helpers/GetImages?ol={txtOL.Text}&oi={txtOI.Text}&oisp={txtOISP.Text}";


                    WebClient client = new WebClient();
                    client.Headers["Content-type"] = "application/json";
                    client.Encoding = Encoding.UTF8;
                    string json = client.UploadString(apiUrl, "");
                    Models.FilesListDto entidad = (new JavaScriptSerializer()).Deserialize<Models.FilesListDto>(json);
                    RptImages.DataSource = entidad.listFilesDto;
                    RptImages.DataBind();
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

            }

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            ListarRutas();
            ListarImagenes();
        }

        protected void dgvImagenes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = dgvImagenes.Rows[index];
                bool resultado = EliminarRuta(row.Cells[2].Text);
                if (resultado)
                {
                    Session["sucess"] = true;
                    Response.Redirect(Request.RawUrl);
                }
                else
                {
                    Session["sucess"] = false;
                    Response.Redirect(Request.RawUrl);
                }
            }
        }
        public bool EliminarRuta(string ruta)
        {
            try
            {
                if (!string.IsNullOrEmpty(ruta))
                {
                    string apiUrl = $"{servicio}Helpers/DeleteImage?ruta={ruta}";


                    WebClient client = new WebClient();
                    client.Headers["Content-type"] = "application/json";
                    client.Encoding = Encoding.UTF8;
                    string json = client.UploadString(apiUrl, "");
                    Models.ResDeleteImage entidad = (new JavaScriptSerializer()).Deserialize<Models.ResDeleteImage>(json);
                    if (entidad.rsCode == 200)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}