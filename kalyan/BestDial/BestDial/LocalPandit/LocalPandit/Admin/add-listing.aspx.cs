using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using System.Collections;
using System.Data.SqlClient;
using System.Data;

namespace LocalPandit.Admin
{
    public partial class add_listing : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                List<String> YrStrList = new List<string>();
                String Query = "Where (";
                foreach (ListItem item in CheckTag.Items)
                {
                    if (item.Selected)
                    {
                        Query += "(" + item.Value + " ='True') OR ";
                    }

                }

                String myString = Query.Substring(0, Query.Length - 3);
                ArrayList HTlist = dalclass.select_Category_List_By_HeadTag(myString);
                if (HTlist.Count != 0)
                {
                    for (int i = 0; i < HTlist.Count; i+=2)
                    {
                        DropDownList2.Items.Add(new ListItem(DropDownList2.SelectedItem.Text = HTlist[i].ToString(), DropDownList2.SelectedValue = HTlist[i + 1].ToString()));
                    }
                }

            }
            catch { }
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
           


            try
            {
                TextBox tbc = (TextBox)DetailsView1.FindControl("TextBox1");
                TextBox tbl = (TextBox)DetailsView1.FindControl("TextBox2");
                TextBox tbcity = (TextBox)DetailsView1.FindControl("TextBox3");
                string compname = tbc.Text;
                string complocation = tbl.Text;
                string compcity = tbcity.Text;
                string compcomb = compname + " " + complocation + " " + compcity;
                compcomb = compcomb.Replace(" ", "-");
                string datedt = DateTime.Now.ToShortDateString();
                //String cateid = dalclass.getCategory_id_ByCatname(DropDownList2.SelectedValue.ToString()).ToString();
                SqlDataSource1.InsertParameters.Add("Catid", DropDownList2.SelectedValue.ToString());
                SqlDataSource1.InsertParameters.Add("RegsitrationDate", datedt);
                SqlDataSource1.InsertParameters.Add("url", compcomb);


            }
            catch { }

            try
            {
                List<String> YrStrList = new List<string>();

                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected)
                    { YrStrList.Add(item.Text); }
                }
                String YrStr = String.Join(",", YrStrList.ToArray());

                TextBox tbc = (TextBox)DetailsView1.FindControl("TextBox1");
                TextBox tbl = (TextBox)DetailsView1.FindControl("TextBox2");
                TextBox tbcity = (TextBox)DetailsView1.FindControl("TextBox3");
                string compname = tbc.Text;
                string complocation = tbl.Text;
                string compcity = tbcity.Text;

                List<String> catKeywordStrList = new List<string>();

                foreach (ListItem item in CheckBoxList2.Items)
                {
                    if (item.Selected)
                    { catKeywordStrList.Add(item.Text); }
                }
                String KeyStr = String.Join(",", catKeywordStrList.ToArray());


                string compcomb = KeyStr + "," + YrStr + "," + compname + "," + DropDownList2.SelectedItem.Text + "," + complocation + "," + compcity;
                SqlDataSource1.InsertParameters.Add("KeyWord", compcomb);

            }
            catch { }

           
        }

        protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(e.Command.Parameters["@NewProductID"].Value);

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



                dalclass.Company_listing_Keyword_tbl(id, KeyStr);

                dalclass.Company_tags_table(id, YrStr);

                FileUpload FUpBanner = (FileUpload)DetailsView1.FindControl("FUpBanner");

                string fn = id.ToString();
                string SaveLocation1 = Server.MapPath("~/uploads") + "\\" + fn;
                string SaveLocationBanner = Server.MapPath("~/uploads") + "\\comp-img\\" + fn;

                String fileName = FUpBanner.FileName;

                if (FUpBanner.HasFile)
                {
                    FUpBanner.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                    var image = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                    var newImage = ScaleImage(image, 800, 550);
                    image.Save(@SaveLocationBanner + ".jpg", ImageFormat.Jpeg);
                }



                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
               "alert('Company added Successfully!'); window.location='" + "add-listing.aspx';", true);
            }
            catch
            {
                string display = "Something Went Wrong ! Please Try Again";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
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
    }
}