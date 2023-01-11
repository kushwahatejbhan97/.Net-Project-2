using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit.Account
{
    public partial class reviews_list : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int count = dalclass.get_company_ReviewCount(Int32.Parse(Session["CompID"].ToString()));
                if (count > 0)
                {
                    DivNoReview.Visible = false;
                    DivYesReview.Visible = true;
                }
                else
                {
                    DivNoReview.Visible = true;
                    DivYesReview.Visible = false;
                }
            }
            catch { }

        }
    }
}