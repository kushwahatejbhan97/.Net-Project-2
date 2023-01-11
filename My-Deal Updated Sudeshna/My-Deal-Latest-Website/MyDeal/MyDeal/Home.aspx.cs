using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDeal
{
    public partial class Home : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Session["Userid"] == null) 
                    {
                        Response.Redirect("/", false);

                    }
                    int Userid = Convert.ToInt32(Session["Userid"]);

                    ArrayList UserData = dalclass.getUserData(Userid);

                    lblClientName.Text = "Hi! " + UserData[0].ToString();
                    UserName.InnerText = "Hi! " + UserData[0].ToString();
                }
            }
            catch
            {

            }
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("/search/" + ddlcity.SelectedValue + "/" + DropDownList2.SelectedValue + "/" + txtsearch.Text, false);

                //Response.Redirect("/search/" + DropDownList2.SelectedItem + ddlcity.SelectedItem + txtsearch.Text, false);

            }
            catch
            {

            }
        }

        protected void LinkBtnLogout_Click(object sender, EventArgs e)
        {
            try
            {
                Session["Userid"] = null;
                Response.Redirect("/", false);
            }
            catch
            {

            }
        }
    }
}