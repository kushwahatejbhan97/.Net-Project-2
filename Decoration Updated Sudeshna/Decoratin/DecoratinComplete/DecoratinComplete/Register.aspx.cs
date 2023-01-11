using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete
{
    public partial class Register : System.Web.UI.Page
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

        protected void BtnSignUpSunmit_Click(object sender, EventArgs e)
        {


            try
            {
                String username = TxtSignUpName.Text;
                String phoneNumber = TxtSignUpPhone.Text;
                String email = TxtSignUpEmail.Text;
                String passwword = TxtSignUpPasswword.Text;
                String address = TxtSignUpAddress.Text;
                int postalPIN = int.Parse(TxtSignUpPostalPIN.Text);
                String ABN = TxtSignUpABN.Text;
                String BusinessDes = txtBusinessDes.Text;

                int Clientid = dalclass.ClientRegisterPageNew(username, phoneNumber, email, passwword, address, postalPIN, ABN, BusinessDes);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Inserted.'); window.location='" + "/';", true);
            }

            catch
            {

            }








        }

        
    }
}