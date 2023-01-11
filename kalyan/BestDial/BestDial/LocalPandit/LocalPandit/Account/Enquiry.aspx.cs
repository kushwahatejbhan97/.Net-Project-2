using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit.Account
{
    public partial class Enquiry : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string type = dalclass.get_company_ListingType( Int32.Parse(Session["CompID"].ToString()));
                if (type == "Free")
                {
                    free.Visible = true;
                }
                else
                {
                    paid.Visible = true;
                }

                int count = dalclass.get_company_EnquiryCount(Int32.Parse(Session["CompID"].ToString()));
                if (count > 0)
                {
                    DivNoEnquiry.Visible = false;
                }
                else
                {
                    free.Visible = false;
                    paid.Visible = false;
                    DivNoEnquiry.Visible = true;
                }
            }
            catch { }
        }
    }
}