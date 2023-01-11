using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit.Admin
{
    public partial class Change_image_master_tag : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["CatKeyid"].ToString();
            string fn = id.ToString();
            string SaveLocation = Server.MapPath("~/upload_tag") + "\\" + fn;
            string SaveLocationz = Server.MapPath("~/upload_tag") + "\\icon\\" + fn;

            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                try
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation + ".jpg");
                    var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                    var newImage2 = ScaleImage(image, 150, 150);
                    newImage2.Save(SaveLocationz + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                 "alert('Image Updated Successfully!'); window.location='" + "Change-image-master-tag.aspx?CatKeyid=" + id + "';", true);

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