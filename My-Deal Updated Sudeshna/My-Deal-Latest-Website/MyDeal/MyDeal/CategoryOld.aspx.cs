using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDeal
{
    public partial class CategoryOld : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            string urlredirect = "";
            try
            {
                if (!IsPostBack)
                {
                    string Catsearch = Page.RouteData.Values["CatUrl"].ToString();
                    urlredirect = "/category/" + Catsearch;
                    if (Session["ClientID"] != null)
                    {
                        Response.Redirect(urlredirect, false);

                        databindme();
                    }

                }
            }

            catch
            {

            }
        }


        protected void databindme()
        {
            try
            {
                string Catsearch = Page.RouteData.Values["CatUrl"].ToString();
                HeadsubTitle.InnerText = Catsearch;
                DataTable ListingTable1 = dalclass.ListingDataFillbyCat(Catsearch);
            }

            catch
            {

            }
        }


        protected void FilterChange(object sender, EventArgs e)
        {
            try
            {
                string Catsearch = Page.RouteData.Values["CatUrl"].ToString();
                string query = "SELECT [CompanyId], [CompanyName], [Mobile], [Password], [VerMobile], [CatId], [OwnerName], [YearEstablish], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Describtion], [NewMap], [url], [ListingType], [Priority], [Tags], [ListingImageID] FROM [NewListing_Website_listing_tbl] WHERE [CatId]='" + Catsearch + "'";

                try
                {
                    int catId = Convert.ToInt32(RadioButtonListCat.SelectedValue);
                    if (catId > 0)
                    {
                        query = query + " AND ([CatId] = '" + catId + "')";
                    }
                }
                catch
                {

                }
            }

            catch
            {

            }
        }
    }
}