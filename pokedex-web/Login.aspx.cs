using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace pokedex_web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Trainee trainee = new Trainee();
            TraineeNegocio negocio = new TraineeNegocio();

            try
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;

                if (Validacion.validaTextoVacio(txtEmail) || Validacion.validaTextoVacio(txtPassword))
                {
                    Session.Add("error", "debes completar ambos campos");
                    Response.Redirect("Error.aspx");
                }

                trainee.Email = txtEmail.Text;
                trainee.Pass = txtPassword.Text;

                if (negocio.Login(trainee))
                {
                    Session.Add("trainee", trainee);
                    Response.Redirect("MiPerfil.aspx", false);
                }
                else
                {
                    Session.Add("error", "Usuario o pass icorrectos");
                    Response.Redirect("Error.aspx", false);
                }

            }
            catch (System.Threading.ThreadAbortException ex) { }
            catch (Exception ex)
            {

                Response.Redirect("Error.aspx");
                Session.Add("error", ex.ToString());

            }


        }

        private void Page_Error(object sender, EventArgs e)
        {
            Exception exc = Server.GetLastError();
            Session.Add("error", exc.ToString());
            Server.Transfer("Error.aspx");

        }
    }
}