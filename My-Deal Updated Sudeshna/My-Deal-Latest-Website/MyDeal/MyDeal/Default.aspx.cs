using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDeal
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("/search/" + ddlcity.SelectedValue +"/" + DropDownList2.SelectedValue + "/" + txtsearch.Text, false);

                //Response.Redirect("/search/" + DropDownList2.SelectedItem + ddlcity.SelectedItem + txtsearch.Text, false);

            }
            catch
            {

            }
        }
    }
}