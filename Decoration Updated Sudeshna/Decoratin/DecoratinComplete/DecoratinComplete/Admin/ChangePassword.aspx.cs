using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete
{
    public partial class ChangePassword : System.Web.UI.Page
    {
       
            DAL.Admin dalclass = new DAL.Admin();
            protected void Page_Load(object sender, EventArgs e)
            {

            }

            protected void btnChangePass_Click(object sender, EventArgs e)
            {
                try
                {
                    int UserId = Convert.ToInt32(Session["UserId"]);
                    string newpassword = txtNewPassword.Text;

                    dalclass.updatepass(UserId, newpassword);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Successfully Password Changed.'); window.location='" + "ChangePassword.aspx';", true);
                }
                catch
                {

                }
            }
        
    }
}