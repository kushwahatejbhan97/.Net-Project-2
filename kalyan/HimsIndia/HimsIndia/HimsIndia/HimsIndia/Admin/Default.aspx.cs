using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimsIndia.Admin.Login
{
    public partial class Default : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string UserName = email.Text;
                string Password = password.Text;
                ArrayList al = dalclass.Shoplogin(UserName, Password);
                int User_id = int.Parse(al[0].ToString());
                string Name = al[1].ToString();
                int UserAccess = int.Parse(al[2].ToString());
                bool enable = bool.Parse(al[3].ToString());
                if (enable)
                {
                    if (UserAccess == 1)
                    {
                        Session["AID"] = User_id;
                        Response.Redirect("Dashboard.aspx", false);
                    }
                    else
                    {
                        Response.Write("<script>alert('Incorrect username or password');</script>");
                    }

                }
                else
                {
                    Response.Write("<script>alert('User is blocked');</script>");
                }


            }
            catch
            {
                Response.Write("<script>alert('Incorrect username password');</script>");
            }
        }
    }
}