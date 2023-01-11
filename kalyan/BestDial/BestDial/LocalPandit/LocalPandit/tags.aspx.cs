using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using System.Web.UI.HtmlControls;

namespace LocalPandit
{
    public partial class tags : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string caturl = Request.QueryString["url"].ToString();
                ArrayList al = dalclass.get_urlt(caturl);
                SqlDataSourcetaglistitem.SelectCommand = "SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl] WHERE ([Catid] = " + Int32.Parse(al[0].ToString()) + ")";
                SqlDataSourcetaglistitem.DataBind();
                lblcatname.Text = al[1].ToString();

                ArrayList list = new ArrayList();
                list = dalclass.check_for_subcate(Int32.Parse(al[0].ToString()));

                if (list.Count == 0)
                {
                    
                    String catname = al[1].ToString();
                    int Cateid = Int32.Parse(al[0].ToString());

                    Response.Redirect("/list-CatId-wise.aspx?catId=" + Cateid + "&city=&keyword=" + catname + "");
                }

            }
            catch { }
        }


        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string postid = (e.Item.FindControl("postid") as HiddenField).Value;
                String path = Server.MapPath("upload_tag") + "\\icon\\" + postid + ".jpg";
                HtmlGenericControl ImageAvailable = e.Item.FindControl("ImageAvailable") as HtmlGenericControl;
                HtmlGenericControl NoImageAvailable = e.Item.FindControl("NoImageAvailable") as HtmlGenericControl;
                if (File.Exists(path))
                {
                    ImageAvailable.Visible = true;
                    NoImageAvailable.Visible = false;
                }

                else
                {
                    NoImageAvailable.Visible = true;
                    ImageAvailable.Visible = false;
                }

            }


        }
    }
}