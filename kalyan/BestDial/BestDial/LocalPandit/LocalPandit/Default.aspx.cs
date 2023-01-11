using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {


                if (!IsPostBack)
                {
                    HttpCookie cookie = Request.Cookies["FirstUserCookie"];
                    if (cookie != null)
                    {
                        Response.Redirect("Main.aspx", false);
                    }
                }


            }
            catch
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("FirstUserCookie");
            cookie.Expires = DateTime.Now.AddMonths(12);
            Response.Cookies.Add(cookie);
            Response.Redirect("/Main.aspx", false);
        }
    }
}