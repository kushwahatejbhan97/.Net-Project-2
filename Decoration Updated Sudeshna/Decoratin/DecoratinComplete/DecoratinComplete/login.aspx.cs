using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete
{
    public partial class login : System.Web.UI.Page
    {
        DAL.FrontEnd dalclass = new DAL.FrontEnd();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Session["ClientID"] != null)
                    {
                        Response.Redirect("/home", false);
                    }

                   
                }
            }
            catch
            {

            }
        }

        protected void BtnLogInsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                String username = TxtUserName.Text;
                String password = TxtLogInPassword.Text;

                int Clientid = dalclass.ClientloginPage(username, password);

                if (Clientid != 0)
                {
                    Session["ClientId"] = Clientid;
                    Response.Redirect("/home", false);
                }

                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                    "alert('Invalid UserName & Password.'); window.location='" + "/login.aspx';", true);
                }
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void BtnContinue_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/register", false);
        }
    }
}