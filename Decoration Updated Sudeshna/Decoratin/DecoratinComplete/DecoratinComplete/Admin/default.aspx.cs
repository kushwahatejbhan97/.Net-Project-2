using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class _default : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string username = txtusername.Text;
                String password = txtPassword.Text;

                int userid = dalclass.loginpage(username, password);

                if (userid != 0)
                {
                    Session["UserId"] = userid;
                    Response.Redirect("dashboard.aspx", false);
                }
            }
            catch
            {

            }
        }
    }
}