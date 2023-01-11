using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //ImagelnkSearchList.Focus();
               //  ddlcity.SelectedValue = "Hyderabad";
                if (!IsPostBack)
                {
                   // ImagelnkSearchList.Focus();
                    LinkButton1.CssClass = "current";
                    home.Visible = true;
                    menu1.Visible = false;
                    menu2.Visible = false;
                    try
                    {
                        if (Session["CityName"].ToString() != null)
                        {
                            lblCity.Text = Session["CityName"].ToString();
                        }
                        else
                        {
                            lblCity.Text = "HYDERABAD";
                        }
                    }
                    catch { lblCity.Text = "HYDERABAD"; }
                }
            }
            catch { }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton1.CssClass = "current";
                LinkButton2.CssClass = "";
                LinkButton3.CssClass = "";
                home.Visible = true;
                menu1.Visible = false;
                menu2.Visible = false;

            }
            catch { }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton1.CssClass = "";
                LinkButton2.CssClass = "current";
                LinkButton3.CssClass = "";
                home.Visible = false;
                menu1.Visible = true;
                menu2.Visible = false;
            }
            catch { }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton1.CssClass = "";
                LinkButton2.CssClass = "";
                LinkButton3.CssClass = "current";
                home.Visible = false;
                menu1.Visible = false;
                menu2.Visible = true;
            }
            catch { }
        }

        protected void lnkSearchList_Click(object sender, EventArgs e)
        {
            try
            {
                //string city = ddlcity.SelectedItem.Text;
                //string keyword = ddlkey.SelectedItem.Text;
                //Response.Redirect("list.aspx?city=" + city + "&keyword=" + keyword + "", false);
            }
            catch { }
        }
    }
}