using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimsIndia.Admin
{

    public partial class ChangePass : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int User_id = int.Parse(Session["AID"].ToString());
                dalclass.UpdatePass(txtPass.Text, User_id);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                      "alert('Successfully Password Changed.'); window.location='" + "/Admin';", true);

            }
            catch
            {
            }

        }
    }
}