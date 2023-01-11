using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDeal
{
    public partial class Login : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                String username = username_txt.Text;
                String password = pwd_txt.Text;

                int Userid = dalclass.UserloginPage(username, password);

                if (Userid != 0)
                {
                    Session["Userid"] = Userid;
                    Response.Redirect("/home", false);
                }
            }
            catch
            {

            }
        }
    }
}