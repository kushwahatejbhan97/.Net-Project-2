using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDeal
{
    public partial class ListingPage : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void RepeaterPopularCat_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                int CompanyId = int.Parse(e.CommandArgument.ToString());
                ArrayList Details = dalclass.getListingData(CompanyId);
                String CompanyName = Details[2].ToString();
                String Mobile = Details[2].ToString();
                String Password = Details[2].ToString();
                String VerMobile = Details[2].ToString();
                int CatId = int.Parse(Details[3].ToString());
                String OwnerName = Details[2].ToString();
                String YearEstablish = Details[2].ToString();
                String LandLine = Details[2].ToString();
                String Email = Details[2].ToString();



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
    }
}