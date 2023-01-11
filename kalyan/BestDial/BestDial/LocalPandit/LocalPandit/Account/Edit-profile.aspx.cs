using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using System.Collections;

namespace LocalPandit.Account
{
    public partial class Edit_profile : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ArrayList al = dalclass.get_Company_Image_Id(Int32.Parse(Session["CompID"].ToString()));
                ImageCompany.ImageUrl = "/uploads/comp-img/" + al[0].ToString() + ".jpg";
            }
            catch { }
        }

        protected void btnupImage_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Int32.Parse(Session["CompID"].ToString());
                String _randNum = CreateRandomNumber(3);
                string fn = id.ToString() + _randNum;
                string SaveLocation1 = Server.MapPath("~/uploads") + "\\" + fn;
                string SaveLocationBanner = Server.MapPath("~/uploads") + "\\comp-img\\" + fn;

                if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                {
                    try
                    {
                        dalclass.Update_Company_imageId(id, Int32.Parse(fn));
                        FileUpload1.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                        var image = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                        var newImage = ScaleImage(image, 800, 550);
                        image.Save(@SaveLocationBanner + ".jpg", ImageFormat.Jpeg);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                     "alert('Image Updated Successfully!'); window.location='" + "/Account/Edit-profile.aspx';", true);
                    }
                    catch (Exception ex)
                    {
                    }
                }
            }
            catch { }
        }

        public static string CreateRandomNumber(int PasswordLength)
        {
            string _allowedChars = "0123456789";
            Random randNum = new Random();
            char[] chars = new char[PasswordLength];
            int allowedCharCount = _allowedChars.Length;
            for (int i = 0; i < PasswordLength; i++)
            {
                chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
            }
            return new string(chars);
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