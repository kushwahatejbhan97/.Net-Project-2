using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace LocalPandit.Admin
{
    public partial class Add_tag : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            try
            {

                DropDownList ddl = DetailsView1.FindControl("DropDownList1") as DropDownList;
                SqlDataSource1.InsertParameters.Add("Catid", ddl.SelectedValue.ToString());


            }
            catch { }
        }

        protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(e.Command.Parameters["@NewProductID"].Value);
                FileUpload FUpBanner = DetailsView1.FindControl("FileUpload1") as FileUpload;

                string fn = id.ToString();
                string SaveLocation = Server.MapPath("~/upload_tag") + "\\" + fn;
                string SaveLocationz = Server.MapPath("~/upload_tag") + "\\icon\\" + fn;

                if ((FUpBanner.PostedFile != null) && (FUpBanner.PostedFile.ContentLength > 0))
                {
                    try
                    {
                        FUpBanner.PostedFile.SaveAs(SaveLocation + ".jpg");
                        var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                        var newImage2 = ScaleImage(image, 150, 150);
                        newImage2.Save(SaveLocationz + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);

                    }
                    catch (Exception ex)
                    {
                    }
                }

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
               "alert('added Successfully!'); window.location='" + "Add-tag.aspx';", true);
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

            var newWidth = (int)(maxWidth);
            var newHeight = (int)(maxHeight);

            var newImage = new Bitmap(newWidth, newHeight);
            Graphics.FromImage(newImage).DrawImage(image, 0, 0, newWidth, newHeight);
            return newImage;
        }
    }
}