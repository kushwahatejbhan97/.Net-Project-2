using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mastercraft.Admin
{
    public partial class Packages_image_edit : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        String uid;
        String access_lvl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                uid = (Session["ID"].ToString());
                access_lvl = (Session["access"].ToString());

            }
            else
            {
                //Session["login_redirector"] = "Item_add_UMP.aspx";
                Response.Redirect("../default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["ID"] = null;
            Session["access"] = null;
            Session.Abandon();
            Response.Redirect("../Default.aspx", false);
        }
    }
}