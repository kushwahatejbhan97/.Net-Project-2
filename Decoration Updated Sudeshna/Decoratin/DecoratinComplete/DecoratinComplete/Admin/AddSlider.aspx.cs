using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class AddSlider : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddSlider_Click(object sender, EventArgs e)
        {

            try
            {
                String SliderName = txtSliderName.Text;
                Boolean status = chkStatus.Checked;
                String slidertitle = txtSliderTitle.Text;
                String sliderSubtitle = txtSliderSubTitle.Text;
                String url = txtUrl.Text;
                
                int SliderId = dalclass.insertSlider(SliderName, status, slidertitle, sliderSubtitle, url);

                if (SliderId > 0)
                {
                    string fn1 = dalclass.InsertImage("\\Slider\\Desktop\\", 2);
                    string fn2 = dalclass.InsertImage("\\Slider\\Mobile\\", 1);
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Slider\\" + "\\Desktop\\" + fn1;
                    string SaveLocation1 = Server.MapPath("~/Admin") + "\\Slider\\" + "\\Mobile\\" + fn2;


                    if ((fileDesktop.PostedFile != null) && (fileDesktop.PostedFile.ContentLength > 0))
                    {
                        fileDesktop.PostedFile.SaveAs(SaveLocation + ".jpg");
                        //var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                        dalclass.UpdateSliderDeskImg(fn1, SliderId);


                        if ((fileMobile.PostedFile != null) && (fileMobile.PostedFile.ContentLength > 0))
                        {
                            fileMobile.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                            var image1 = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                            dalclass.UpdateSliderMblImg(fn2, SliderId);




                            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Inserted.'); window.location='" + "AddSlider.aspx';", true);

                        }
                        else
                        {
                        }
                    }
                    else
                    {
                    }
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