using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit.Admin
{
    public partial class Change_image_master : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(!IsPostBack)
                {
                    int Catid = int.Parse(Request.QueryString["Catid"].ToString());
                    ArrayList arr = dalclass.getImage(Catid);
                    Image1.ImageUrl = "/upload_category/icon/" + arr[0].ToString() + ".jpg";
                    Image2.ImageUrl = "/upload_category/cate_banner/" + arr[1].ToString() + ".jpg";
                }
                
            }

            catch
            {

            }

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string id = Request.QueryString["Catid"].ToString();
        //    string fn = id.ToString();
        //    string SaveLocation = Server.MapPath("~/upload_category") + "\\" + fn;
        //    string SaveLocationz = Server.MapPath("~/upload_category") + "\\icon\\" + fn;
        //    string SaveLocationy = Server.MapPath("~/upload_category") + "\\cate_banner\\" + fn;

        //    if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
        //    {
        //        try
        //        {
        //            FileUpload1.PostedFile.SaveAs(SaveLocation + ".jpg");
        //            var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
        //            var newImage2 = ScaleImage(image, 150, 150);
        //            newImage2.Save(SaveLocationz + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);

        //            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
        //         "alert('Image Updated Successfully!'); window.location='" + "Change-image-master-tag.aspx?Catid=" + id + "';", true);
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
                
                int id = int.Parse(Request.QueryString["Catid"].ToString());
                //string fn = id.ToString();
                //string fn1 = dalclass.InsertImage("\\upload_category\\cate_banner\\", 2);
                string fn2 = dalclass.InsertImage("\\upload_category\\icon\\", 1);
                //string SaveLocation = Server.MapPath("~/upload_category") + "\\cate_banner\\" + fn1;
                string SaveLocation1 = Server.MapPath("~/upload_category") + "\\icon\\" + fn2;

               

                    if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                    {
                        FileUpload1.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                        var image1 = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                        dalclass.UpdateCatIConImageID(fn2, id);
                        dalclass.UpdateUrl(fn2);



                        ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                               "alert('Image Updated Inserted.'); window.location='" + "Change-image-master.aspx?Catid="+id+ "';", true);

                    }
                    else
                    {
                    }
                
            }

            catch
            {

            }
            


        }

        



        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {

                int id = int.Parse(Request.QueryString["Catid"].ToString());
                //string fn = id.ToString();
                string fn1 = dalclass.InsertImage("\\upload_category\\cate_banner\\", 2);
                //string fn2 = dalclass.InsertImage("\\upload_category\\icon\\", 1);
                string SaveLocation = Server.MapPath("~/upload_category") + "\\cate_banner\\" + fn1;
                //string SaveLocation1 = Server.MapPath("~/upload_category") + "\\icon\\" + fn2;

                if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
                {
                    FileUpload2.PostedFile.SaveAs(SaveLocation + ".jpg");

                    dalclass.UpdateCatImageID(fn1, id);
                    dalclass.UpdateUrl(fn1);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                "alert('Image Updated Inserted.'); window.location='" + "Change-image-master.aspx?Catid=" + id + "';", true);


                }
                else
                {
                }
            }

            catch
            {

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