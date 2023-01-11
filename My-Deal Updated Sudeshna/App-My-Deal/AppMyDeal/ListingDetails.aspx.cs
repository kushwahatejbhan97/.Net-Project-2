using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppMyDeal
{
    public partial class ListingDetails : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string CompanyUrl = Page.RouteData.Values["DetailsUrl"].ToString();
                DataTable ListingTable = dalclass.SelectListingByCompanyName(CompanyUrl);
                RepeaterComDt2.DataSource = ListingTable;
                RepeaterComDt2.DataBind();

                RepeaterComDtl.DataSource = ListingTable;
                RepeaterComDtl.DataBind();
            }

            catch
            {

            }

        }

        protected void RepeaterComDt2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

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
    }
}