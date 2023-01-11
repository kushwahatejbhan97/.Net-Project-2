using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mastercraft.Admin
{
    public partial class dashboard : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        String uid;
        String access_lvl;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
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
            catch
            {
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

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            try
            {

                if (e.AffectedRows == 1)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                               "alert('Inserted Successfully'); window.location='" + "dashboard.aspx';", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                               "alert('Record Already Exist For This Enrollment No.'); window.location='" + "dashboard.aspx';", true);
                }
               
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                               "alert('Record Already Exist For This Enrollment No.'); window.location='" + "dashboard.aspx';", true);
            }



        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            String roll = (String)e.Values["enrollment_no"];
           
            try
            {

               
            }
            catch
            {
            }



        }
    }
}