using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit.Admin
{
    public partial class LocalPanditAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Session["AdminID"] = null;
            Session["access"] = null;
            Session.Abandon();
            Response.Redirect("/Default.aspx");

        }
    }
}