using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDeal
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnsignup_Click(object sender, EventArgs e)
        {
            try
            {
                string name = txtName.Text;
                string email = txtemailid.Text;
                string phone = txtPhoneno.Text;
                string password = txtPassword.Text;


                int Userid = dalclass.UserRegisterPage(name, email, phone, password);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Inserted.'); window.location='" + "UserSignUp.aspx';", true);
            }
            catch
            {

            }
        }
    }
}