using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class EditCatImage : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDskImg_Click(object sender, EventArgs e)
        {
            try
            {


                if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                {
                    int Catid = int.Parse(Request.QueryString["CatId"].ToString());



                    string fn1 = dalclass.InsertImage("\\Category\\Desktop\\", 2);
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Category\\Desktop\\" + fn1;
                    FileUpload1.PostedFile.SaveAs(SaveLocation + ".jpg");
                    var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                    dalclass.UpdateCatDeskImg(fn1, Catid);
                    dalclass.UpdateUrl(fn1);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                      "alert('Successfully Image Updated.'); window.location='" + "category.aspx';", true);

                }

                else
                {
                }
            }
            catch
            {
            }
        }

        protected void btnMblImg_Click(object sender, EventArgs e)
        {
            try
            {
                int CatId = int.Parse(Request.QueryString["CatId"].ToString());



                string fn2 = dalclass.InsertImage("\\Category\\Mobile\\", 1);
                string SaveLocation = Server.MapPath("~/Admin") + "\\Category\\Mobile\\" + fn2;

                if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
                {
                    FileUpload2.PostedFile.SaveAs(SaveLocation + ".jpg");
                    var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                    dalclass.UpdateCatMblImg(fn2, CatId);
                    dalclass.UpdateUrl(fn2);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                      "alert('Successfully Image Updated.'); window.location='" + "AddCategory.aspx';", true);

                }

                else
                {
                }
            }
            catch
            {
            }
        }
    }
}