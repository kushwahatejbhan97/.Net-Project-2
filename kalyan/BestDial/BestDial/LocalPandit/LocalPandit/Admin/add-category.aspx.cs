using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

namespace LocalPandit.Admin
{
    public partial class add_category : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void signin_Click(object sender, EventArgs e)
        {
            int id;
            String compurl = tb_cat_name.Text;
            try
            {
                Boolean popular;
                Boolean HR;
                Boolean Industries;

                if (CheckBoxPopular.Checked)
                    popular = true;
                else
                    popular = false;

                if (CheckBoxHR.Checked)
                    HR = true;
                else
                    HR = false;

                if (CheckBoxIndustries.Checked)
                    Industries = true;
                else
                    Industries = false;

                id = dalclass.add_New_Category(tb_cat_name.Text, popular, HR, Industries);
                compurl = compurl.Replace("&", " ");
                compurl = compurl.Replace(".", " ");
                compurl = compurl.Replace(" ", "-");
                compurl = compurl.Replace("--", "-");

                dalclass.update_category_u7rl(id, compurl);
                uploadimage(id);
                
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                "alert('Category Added Successfully.'); window.location='" + "/Admin/add-category.aspx';", true);
            }
            catch
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                "alert('Category already Exits.'); window.location='" + "/Admin/add-category.aspx';", true);
            }


        }
        private void uploadimage(int id)
        {

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
                    var newImage2 = ScaleImage(image, 60, 60);
                    newImage2.Save(SaveLocationz + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);

                }
                catch (Exception ex)
                {
                }
            }

            if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
            {
                try
                {
                    FileUpload2.PostedFile.SaveAs(SaveLocation + "_1.jpg");
                    var image = System.Drawing.Image.FromFile(@SaveLocation + "_1.jpg");
                    var newImage = ScaleImage(image, 700, 457);
                    newImage.Save(SaveLocationy + "_1.jpg", System.Drawing.Imaging.ImageFormat.Jpeg);

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