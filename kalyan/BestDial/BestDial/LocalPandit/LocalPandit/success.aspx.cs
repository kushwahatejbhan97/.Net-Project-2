using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit
{
    public partial class success : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int CompId = Int32.Parse(Request.QueryString["CompanyId"].ToString());
                String SupMobile = Session["CompanyMobile"].ToString();
                String SupOTP = Session["CompanyMobileVerCode"].ToString();
                if (txtOTP.Text == SupOTP)
                {
                    dalclass.update_Mobile_verificateion(CompId);
                    Response.Redirect("/Main.aspx");
                }
                else
                {
                    lblerreor.Text = "One Time Password Is Not valid";
                }
            }
            catch { }
        }
    }
}