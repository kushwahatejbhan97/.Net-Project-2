using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace MyDeal
{
    public partial class FreeListingLogin : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnListingLogin_Click(object sender, EventArgs e)
        {
            try
            {

                string username = username_txt.Text;
                string password = pwd_txt.Text;
                try
                {
                    ArrayList al = dalclass.Lp_usser_login_Finder(username, password);
                    if (al.Count > 0)
                    {
                        if (bool.Parse(al[2].ToString()))
                        {
                            Session["CompID"] = al[0].ToString();
                            Session["companynmae"] = al[1].ToString();
                            Response.Redirect("/Account/Dashboard.aspx", false);
                            Context.ApplicationInstance.CompleteRequest();
                        }
                        else
                        {
                            Response.Redirect("/Mobile-verify.aspx?mobile=" + username + "");
                        }

                    }
                    else
                    {
                        lblError.Text = "Incorrect username or password";
                    }
                }
                catch (Exception ex)
                {
                    string msg;
                    msg = ex.Message;
                    throw new Exception(msg);
                }

            }
            catch { }
        }
    }
}