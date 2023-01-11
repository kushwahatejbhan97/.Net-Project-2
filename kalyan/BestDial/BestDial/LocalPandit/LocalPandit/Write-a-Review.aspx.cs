using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit
{
    public partial class Write_a_Review : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                int compid = Int32.Parse(Request.QueryString["CompId"].ToString());
                int revid = dalclass.Insert_User_review_table(compid, txtname.Text, txtmobile.Text, "", DateTime.Now.ToShortDateString(), 1, txtrvtxt.Text);
                if (revid > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                "alert('Thank you!!! Review added Successfully.'); window.location='" + "/ListDetails.aspx?compid=" + compid + "';", true);
                }
                else
                {
                    Response.Write("<script>alert('Somthing went wrong!!!');</script>");
                }
            }
            catch { }

        }
    }
}