using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppMyDeal
{
    public partial class Tag : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string Tags = Page.RouteData.Values["TagUrl"].ToString();
                DataTable ListingTable = dalclass.SelectCompnyBytags(Tags);
                RepeaterPopularCat.DataSource = ListingTable;
                RepeaterPopularCat.DataBind();
            }

            catch
            {

            }
        }

        protected void RepeaterPopularCat_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                int CompanyId = int.Parse(e.CommandArgument.ToString());
                ArrayList Details = dalclass.getListingData(CompanyId);
                String CompanyName = Details[2].ToString();
                String Mobile = Details[3].ToString();
                String Password = Details[4].ToString();
                String VerMobile = Details[5].ToString();
                int CatId = int.Parse(Details[6].ToString());
                String OwnerName = Details[7].ToString();
                String YearEstablish = Details[8].ToString();
                String LandLine = Details[9].ToString();
                String Email = Details[10].ToString();
                String Website = Details[11].ToString();
                String Location = Details[12].ToString();
                String Address = Details[13].ToString();
                String City = Details[14].ToString();
                String Map = Details[15].ToString();
                String varchar = Details[16].ToString();
                String KeyWord = Details[17].ToString();
                String Enable = Details[18].ToString();
                int TotalReview = int.Parse(Details[19].ToString());
                String Latitude = Details[20].ToString();
                String Longitude = Details[21].ToString();
                String url = Details[22].ToString();
                String ListingType = Details[23].ToString();
                String Priority = Details[24].ToString();
                String Tags = Details[25].ToString();
                int ListingImageID = int.Parse(Details[26].ToString());
                int ListingIConImageID = int.Parse(Details[27].ToString());
                int TagId = int.Parse(Details[28].ToString());

                Tags = Tags.Replace("&", "-").Replace(" ", "-").Replace("  ", "-").Replace("/", "-").Replace("+", "-").Replace("%", "-").Replace("$", "-").Replace("(", "-").Replace(")", "-").Replace("'", "-").Replace("--", "-");




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
    }
}