using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.UI.HtmlControls;

namespace LocalPandit
{
    public partial class list : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
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
            catch { lblCity.Text = "HYDERABAD"; Session["CityName"] = "HYDERABAD"; }

            try
            {
                if (!IsPostBack)
                {
                    string location = Session["CityName"].ToString();
                    string keyword = Request.QueryString["keyword"].ToString();

                    if (location != null && location != "" && keyword != null && keyword != "")
                    {
                        SqlDataSourceListProperty.SelectCommand = "SELECT [CompanyId], [CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url], [Password], [CompImgID] FROM [NewListing_Website_listing_tbl] WHERE (([City] = '" + location + "') AND ([KeyWord] LIKE '%" + keyword + "%' ) AND [Enable] = 'true') ORDER BY Priority ASC";
                        lblLocation.Text = location;
                        lblkey.Text = keyword;
                        int count = dalclass.Select_Company_List_count_main(location, keyword);
                        lblTotalCount.Text = count.ToString();
                        if (count > 0)
                        {
                            YesFound.Visible = true;
                            NotFound.Visible = false;
                        }
                        else
                        {
                            NotFound.Visible = true;
                            YesFound.Visible = false;
                        }
                    }
                    RepeaterlistProperty.DataBind();
                }
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
        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string postid = (e.Item.FindControl("postid") as HiddenField).Value;
                String path = Server.MapPath("uploads") + "\\comp-img\\" + postid + ".jpg";

                if (File.Exists(path))
                {
                    HtmlGenericControl ImageAvailable = e.Item.FindControl("ImageAvailable") as HtmlGenericControl;
                    HtmlGenericControl NoImageAvailable = e.Item.FindControl("NoImageAvailable") as HtmlGenericControl;
                    ImageAvailable.Visible = true;
                    NoImageAvailable.Visible = false;
                }

                else
                {
                    HtmlGenericControl ImageAvailable = e.Item.FindControl("ImageAvailable") as HtmlGenericControl;
                    HtmlGenericControl NoImageAvailable = e.Item.FindControl("NoImageAvailable") as HtmlGenericControl;
                    NoImageAvailable.Visible = true;
                    ImageAvailable.Visible = false;
                }
                
            }


        }
    }
}