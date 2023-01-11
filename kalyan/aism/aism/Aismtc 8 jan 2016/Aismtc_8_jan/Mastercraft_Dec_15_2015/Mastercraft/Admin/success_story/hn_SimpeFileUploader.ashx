<%@ WebHandler Language="C#" Class="hn_SimpeFileUploader" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;
using System.Drawing;
using System.Drawing.Imaging;

public class hn_SimpeFileUploader : IHttpHandler {

public void ProcessRequest(HttpContext context)
{
    try
    {
        DAL.Class1 dalclass = new DAL.Class1();
        context.Response.ContentType = "text/plain";

        string dirFullPath = HttpContext.Current.Server.MapPath("~/uploads/");
        string[] files;
        int numFiles;
        files = System.IO.Directory.GetFiles(dirFullPath);
        numFiles = files.Length;
        numFiles = numFiles + 1;

        string str_image = "";

        foreach (string s in context.Request.Files)
        {
            HttpPostedFile file = context.Request.Files[s];
            string fileName = file.FileName;
            string fileExtension = file.ContentType;

            if (!string.IsNullOrEmpty(fileName))
            {

                fileExtension = Path.GetExtension(fileName);
                str_image = "MyPHOTO_" + numFiles.ToString() + fileExtension;
                string pathToSave = HttpContext.Current.Server.MapPath("~/uploads/") + str_image;
                string pathToSave620_300 = HttpContext.Current.Server.MapPath("~/uploads/620_300/") + str_image;
                file.SaveAs(pathToSave);
                
                


                int id = 0;
                id = dalclass.add_success(fileName, "<img src='/uploads/" + str_image + "' alt ='" + fileName + "' class='imgclas' >", "abc", "<img src='/uploads/620_300/ " + str_image + "' alt ='" + fileName + "' class='imgclas1' >", str_image);
                var image = System.Drawing.Image.FromFile(@pathToSave);
                
                var newImage620 = ScaleImage(image, 620, 300);
                newImage620.Save(@pathToSave620_300, ImageFormat.Jpeg);

               
                
                //var image = System.Drawing.Image.FromFile(@pathToSave620_300 + ".jpg");
                //var newImage = ScaleImage(image, 620, 300);
                //newImage.Save(@pathToSave620_300 + "_1.jpg", ImageFormat.Jpeg);
                //var newImage2 = ScaleImage(image, 300, 160);
                //newImage2.Save(@pathToSave620_300 + "_2.jpg", ImageFormat.Jpeg);

            }


        }
        context.Response.Write(str_image);
    }
    catch
    {
    }
    
}
    
    
 
    public bool IsReusable 
    {
        get
        {
            return false;
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