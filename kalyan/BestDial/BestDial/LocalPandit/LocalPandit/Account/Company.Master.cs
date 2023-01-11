using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace LocalPandit.Account
{
    public partial class Company : System.Web.UI.MasterPage
    {
         DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ArrayList al = dalclass.get_Company_Image_Id(Int32.Parse(Session["CompID"].ToString()));
                ImageCompany.ImageUrl = "/uploads/comp-img/" + al[0].ToString() + ".jpg";
            }
            catch { }
        
            try
            {
                if (Session["CompID"] != null && Session["companynmae"] != null)
                {
                    lblcompname.Text = Session["companynmae"].ToString();
                }

                else
                {
                    Response.Redirect("/login.aspx");

                }
            }

            catch
                {
                    Response.Redirect("/login.aspx");

                }

        }

        protected void lkbtnlgoutClick(object sender, EventArgs e)
        {
            try
            {
                Session["CompID"] = null;
                Session["companynmae"] = null;
                Response.Redirect("/Default.aspx");

            }
            catch { }
        }
    }
}