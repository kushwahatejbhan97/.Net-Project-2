using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit
{
    public partial class ListingApp : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["CompID"] != null && Session["companynmae"] != null)
                {
                    lblcompname.Text = Session["companynmae"].ToString();
                    loginac.Visible = false;
                    freelisting.Visible = false;
                    Compname.Visible = true;
                    Managecomp.Visible = true;
                }

                else
                {
                    loginac.Visible = true;
                    freelisting.Visible = true;
                    Compname.Visible = false;
                    Managecomp.Visible = false;

                }
            }
            catch { }
        }
    }
}