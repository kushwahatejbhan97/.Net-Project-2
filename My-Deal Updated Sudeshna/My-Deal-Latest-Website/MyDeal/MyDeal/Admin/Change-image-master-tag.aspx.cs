using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit.Admin
{
    public partial class Change_image_master_tag : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    int Tagid = int.Parse(Request.QueryString["TagId"].ToString());
                    ArrayList arr = dalclass.getTgImage(Tagid);
                    Image1.ImageUrl = "/upload_tag/icon/" + arr[0].ToString() + ".jpg";
                    
                }

            }

            catch
            {

            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string id = Request.QueryString["CatKeyid"].ToString();
        //    string fn = id.ToString();
        //    string SaveLocation = Server.MapPath("~/upload_tag") + "\\" + fn;
        //    string SaveLocationz = Server.MapPath("~/upload_tag") + "\\icon\\" + fn;

        //    if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
        //    {
        //        try
        //        {
        //            FileUpload1.PostedFile.SaveAs(SaveLocation + ".jpg");
        //            var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
        //            var newImage2 = ScaleImage(image, 150, 150);
        //            newImage2.Save(SaveLocationz + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);

        //            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
        //         "alert('Image Updated Successfully!'); window.location='" + "Change-image-master-tag.aspx?CatKeyid=" + id + "';", true);

        //        }
        //        catch (Exception ex)
        //        {
        //        }
        //    }
        //}


        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(Request.QueryString["TagId"].ToString());

                string fn2 = dalclass.InsertImage("\\upload_tag\\icon\\", 1);

                string SaveLocation1 = Server.MapPath("~/upload_tag") + "\\icon\\" + fn2;


                if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                    var image1 = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                    dalclass.UpdateTagIConImageID(fn2, id);
                    dalclass.UpdateUrl(fn2);



                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                           "alert('Image Updated Inserted.'); window.location='" + "Change-image-master-tag.aspx?TagId=" + id + "';", true);

                }
                else
                {
                }
            }

            catch(Exception ex)
            {
                string msg;
                msg = ex.Message;
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