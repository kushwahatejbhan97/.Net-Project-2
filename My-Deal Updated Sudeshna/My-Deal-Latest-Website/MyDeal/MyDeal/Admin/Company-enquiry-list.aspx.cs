using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit.Admin
{
    public partial class Company_enquiry_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DdlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                String compId = DdlCategory.SelectedValue.ToString();

                SqlDataSource1.SelectCommand = @"SELECT        NewListing_Website_Inquiry_tbl.EnquiryId, NewListing_Website_Inquiry_tbl.CompanyId, NewListing_Website_Inquiry_tbl.LookingFor, NewListing_Website_Inquiry_tbl.Name, 
                         NewListing_Website_Inquiry_tbl.Mobile, NewListing_Website_Inquiry_tbl.Email, NewListing_Website_Inquiry_tbl.Message, NewListing_Website_Inquiry_tbl.Date, 
                         NewListing_Website_listing_tbl.CompanyName, NewListing_Website_listing_tbl.OwnerName, NewListing_Website_listing_tbl.ListingType
FROM            NewListing_Website_Inquiry_tbl INNER JOIN
                         NewListing_Website_listing_tbl ON NewListing_Website_Inquiry_tbl.CompanyId = NewListing_Website_listing_tbl.CompanyId
WHERE        (NewListing_Website_Inquiry_tbl.CompanyId = " + compId + ") ORDER BY EnquiryId DESC";

                SqlDataSource1.DataBind();

            }
            catch { }
        }
    }
}