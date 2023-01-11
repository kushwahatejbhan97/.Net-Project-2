using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace LocalPandit.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signin_Click(object sender, EventArgs e)
        {
            string username = username_txt.Text;
            string password = pwd_txt.Text;


            try
            {
                ArrayList al = dalclass.usser_Type_Finder(username, password);
                if (al.Count > 0)
                {
                    if (Int32.Parse(al[1].ToString()) == 1)
                    {
                        Session["ID"] = al[0].ToString();
                        Session["access"] = al[1].ToString();

                        Response.Redirect("/Admin/Dashboard.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                    else
                    {
                        Response.Redirect("/Admin/");
                    }

                }
                else
                {
                    Response.Write("<script>alert('incorrect username password');</script>");
                }



            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
        }
    }
}