using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit.Account
{
    public partial class Change_password : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ChangPassClick(object sender, EventArgs e)
        {
            try
            {
                string password = txtpass.Text;
                int compid = Int32.Parse(Session["CompID"].ToString());
                dalclass.Update_comp_Password(compid, password);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                  "alert('Password changed successfully!'); window.location='" + "Dashboard.aspx';", true);
            }
            catch { }
        }
    }
}