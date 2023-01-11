using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit.Admin
{
    public partial class Change_image_master : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["Catid"].ToString();
            string fn = id.ToString();
            string SaveLocation = Server.MapPath("~/upload_category") + "\\" + fn;
            string SaveLocationz = Server.MapPath("~/upload_category") + "\\icon\\" + fn;
            string SaveLocationy = Server.MapPath("~/upload_category") + "\\cate_banner\\" + fn;

            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                try
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation + ".jpg");
                    var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                    var newImage2 = ScaleImage(image, 150, 150);
                    newImage2.Save(SaveLocationz + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                 "alert('Image Updated Successfully!'); window.location='" + "Change-image-master-tag.aspx?Catid=" + id + "';", true);
                }
                catch (Exception ex)
                {
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["Catid"].ToString();
            string fn = id.ToString();
            string SaveLocation = Server.MapPath("~/upload_category") + "\\" + fn;
            string SaveLocationz = Server.MapPath("~/upload_category") + "\\icon\\" + fn;
            string SaveLocationy = Server.MapPath("~/upload_category") + "\\cate_banner\\" + fn;

            if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
            {
                try
                {
                    FileUpload2.PostedFile.SaveAs(SaveLocation + "_1.jpg");
                    var image = System.Drawing.Image.FromFile(@SaveLocation + "_1.jpg");
                    var newImage = ScaleImage(image, 700, 457);
                    newImage.Save(SaveLocationy + "_1.jpg", System.Drawing.Imaging.ImageFormat.Jpeg);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                 "alert('Image Updated Successfully!'); window.location='" + "Change-image-master-tag.aspx?Catid=" + id + "';", true);

                }
                catch (Exception ex)
                {
                }
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