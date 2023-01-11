using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace Mastercraft.Admin
{
    public partial class _default : System.Web.UI.Page
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
                    Session["ID"] = al[0].ToString();
                    Session["access"]="Rizwan";
                    Response.Redirect("dashboard.aspx");
                  

                }
                else
                {
                    Response.Write("<script>alert('incorrect username password');</script>");
                }



            }
            catch (Exception ex)
            {

            }
        }
    }
}
