using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;

namespace LocalPandit
{
    public partial class ListDetails : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            
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

        protected void RepeaterMainContactDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                int count = dalclass.get_company_ReviewCount(Int32.Parse(Request.QueryString["compid"].ToString()));
                HtmlGenericControl NotReview = e.Item.FindControl("NotReview") as HtmlGenericControl;
                if (count > 0)
                {
                   
                    NotReview.Visible = false;
                }
                else
                {
                    NotReview.Visible = true;
                }
            }
            catch { }
        }
    }
}