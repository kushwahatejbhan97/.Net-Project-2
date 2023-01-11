using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete
{
    public partial class Order : System.Web.UI.Page
    {
        DAL.FrontEnd dalclass = new DAL.FrontEnd();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {

                    if (Session["ClientID"] == null)
                    {
                        Response.Redirect("/");
                    }

                    int ClientID = Convert.ToInt32(Session["ClientID"]);

                    ArrayList ClientData = dalclass.getClientData(ClientID);


                    lblClientName.Text = "Hi! " + ClientData[0].ToString();


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
                Response.Redirect("/search/" + txtsearch.Text, false);
            }
            catch
            {

            }
        }

        protected void LblLogOut_Click(object sender, EventArgs e)
        {
            try
            {
                Session["ClientID"] = null;
                Response.Redirect("/");
            }
            catch
            {

            }

        }
    }
}