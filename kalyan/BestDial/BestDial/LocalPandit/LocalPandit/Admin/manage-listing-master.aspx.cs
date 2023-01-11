using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Drawing.Imaging;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace LocalPandit.Admin
{
    public partial class manage_listing_master : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               

                if (!Page.IsPostBack)
                {

                    DataTable dt = this.GetData("select City, Latitude, Longitude, CompanyName  from NewListing_Website_listing_tbl where CompanyId =" + Int32.Parse(Request.QueryString["compid"].ToString()) + "");
                    rptMarkers.DataSource = dt;
                    rptMarkers.DataBind();

                    DropDownList2.DataBind();
                    int catid =  dalclass.get_company_categoryid(Int32.Parse(Request.QueryString["compid"].ToString()));
                    DropDownList2.SelectedValue = catid.ToString();
                    DropDownListType.SelectedValue = dalclass.get_company_ListingType(Int32.Parse(Request.QueryString["compid"].ToString()));
                }
            }
            catch { }

            try
            {
                if (!Page.IsPostBack)
                {
                    CheckBoxList1.DataBind();
                    String selectedtag = dalclass.get_company_selected_tags(Int32.Parse(Request.QueryString["compid"].ToString()));
                    string[] tokens = selectedtag.Split(',');



                    for (int i = 0; i <= CheckBoxList1.Items.Count; i++)
                    {

                        int count = CheckBoxList1.Items.Count;
                        for (int x = 0; x < tokens.Length; x++)
                        {
                            String name = CheckBoxList1.Items[i].ToString();
                            if (CheckBoxList1.Items[i].ToString() == tokens[x].ToString())
                            {

                                CheckBoxList1.Items[i].Selected = true;

                            }

                          
                        }
                    }
                }
            }
            catch { }

            try
            {
                if (!Page.IsPostBack)
                {
                    CheckBoxList2.DataBind();
                    String selectedtag = dalclass.get_company_selected_keyword(Int32.Parse(Request.QueryString["compid"].ToString()));
                    string[] tokens = selectedtag.Split(',');

                    for (int i = 0; i < CheckBoxList2.Items.Count; i++)
                    {

                        int count = CheckBoxList2.Items.Count;
                        for (int x = 0; x < tokens.Length; x++)
                        {
                            String name = CheckBoxList2.Items[i].ToString();
                            if (CheckBoxList2.Items[i].ToString() == tokens[x].ToString())
                            {

                                CheckBoxList2.Items[i].Selected = true;

                            }

                           
                        }
                    }
                }
            }
            catch { }

        }

        private DataTable GetData(string query)
        {
            string conString = ConfigurationManager.ConnectionStrings["BestdialConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;

                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }

        protected void btnUpdtype_Click(object sender, EventArgs e)
        {
            try
            {
               dalclass.update_user_Listing_Type(DropDownListType.SelectedValue.ToString(), Int32.Parse(Request.QueryString["compid"].ToString()));
            }
            catch { }
        }

        protected void btnupImage_Click(object sender, EventArgs e)
        {
            try
            {
                string id = Request.QueryString["compid"].ToString();
                string fn = id.ToString();
                string SaveLocation1 = Server.MapPath("~/uploads") + "\\" + fn;
                string SaveLocationBanner = Server.MapPath("~/uploads") + "\\comp-img\\" + fn;

                if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                {
                    try
                    {
                        FileUpload1.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                        var image = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                        var newImage = ScaleImage(image, 800, 550);
                        image.Save(@SaveLocationBanner + ".jpg", ImageFormat.Jpeg);

                    }
                    catch (Exception ex)
                    {
                    }
                }
            }
            catch { }
        }

        public static System.Drawing.Image ScaleImage(System.Drawing.Image image, int maxWidth, int maxHeight)
        {
            var ratioX = (double)maxWidth / image.Width;
            var ratioY = (double)maxHeight / image.Height;
            var ratio = Math.Min(ratioX, ratioY);

            var newWidth = (int)(image.Width * ratio);
            var newHeight = (int)(image.Height * ratio);

            var newImage = new System.Drawing.Bitmap(newWidth, newHeight);
            System.Drawing.Graphics.FromImage(newImage).DrawImage(image, 0, 0, newWidth, newHeight);
            return newImage;
        }



        protected void btnUpdateKayTags_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Int32.Parse(Request.QueryString["compid"].ToString());

                TextBox tbc = (TextBox)DetailsView1.FindControl("TextBox1");
                TextBox tbl = (TextBox)DetailsView1.FindControl("TextBox2");
                TextBox tbcity = (TextBox)DetailsView1.FindControl("TextBox3");
                string compname = tbc.Text;
                string complocation = tbl.Text;
                string compcity = tbcity.Text;



                List<String> YrStrList = new List<string>();

                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected)
                    { YrStrList.Add(item.Text); }
                }
                String YrStr = String.Join(",", YrStrList.ToArray());


                List<String> catKeywordStrList = new List<string>();

                foreach (ListItem item in CheckBoxList2.Items)
                {
                    if (item.Selected)
                    { catKeywordStrList.Add(item.Text); }
                }
                String KeyStr = String.Join(",", catKeywordStrList.ToArray());

                string compcomb = KeyStr + "," + YrStr + "," + compname + "," + complocation + "," + compcity;


                dalclass.update_Company_listing_Keyword_tbl(id, KeyStr);

                dalclass.update_Company_tags_table(id, YrStr);

                dalclass.update_Company_Full_Keyword_table(id, compcomb);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
               "alert('Updated Successfully!'); window.location='" + "manage-listing-master.aspx?compid=" + id + "';", true);
            }
            catch
            {
                string display = "Something Went Wrong ! Please Try Again";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
        }
    }
}