using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aismtc.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
       protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                try
                {
                    if (Session["AID"] == null)
                    {
                        //Response.Redirect("Default.aspx", false);
                    }
                }
                catch
                {
                }

            }




        }

        protected void logout(object sender, EventArgs e)
        {
            try
            {
                HttpCookie cookie = new HttpCookie("TheOMartAdminCookie");
                Session["AID"] = null;



                Response.Cookies["TheOmartCustomerCookie"]["loginstatus"] = "0";
                cookie.Expires = DateTime.Now.AddMonths(12);
                Response.Cookies.Add(cookie);
                Response.Redirect("Default.aspx", false);
            }
            catch
            {
            }
        }
    }
}