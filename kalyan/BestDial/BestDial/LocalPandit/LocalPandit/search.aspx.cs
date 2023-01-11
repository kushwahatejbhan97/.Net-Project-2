using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (Session["CityName"].ToString() != null)
                    {
                        ddlcity.SelectedValue = Session["CityName"].ToString();
                    }
                    else
                    {
                        ddlcity.SelectedValue = "Hyderabad";
                    }
                }
                catch { ddlcity.SelectedValue = "Hyderabad"; }

                ImagelnkSearchList.Focus();
            }
        }
        protected void lnkSearchList_Click(object sender, EventArgs e)
        {
            try
            {
                string city = ddlcity.SelectedItem.Text;
                string keyword = ddlkey.SelectedItem.Text;
                Session["CityName"] = city;
                Response.Redirect("list.aspx?city=" + city + "&keyword=" + keyword + "", false);
            }
            catch { }
        }
    }
}