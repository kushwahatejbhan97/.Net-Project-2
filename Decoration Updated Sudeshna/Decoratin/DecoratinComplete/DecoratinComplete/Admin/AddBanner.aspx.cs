using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class AddBanner : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddSlider_Click(object sender, EventArgs e)
        {
            try
            {
                

                String Bannertitle = txtForm1BannerTitle.Text;
                String BannerSubtitle = txtForm1BannerSubTitle.Text;
                String Bannerurl = txtForm1Url.Text;
                //int CatId = int.Parse(drpCategory.SelectedValue);
               
                int BannerId = int.Parse(DrpForm1Banner1.SelectedValue);


                dalclass.UpdateBanner(Bannertitle, BannerSubtitle, Bannerurl, BannerId);

                if (BannerId > 0)
                {
                    string fn1 = dalclass.InsertImage("\\Banner\\Desktop\\", 2);
                    string fn2 = dalclass.InsertImage("\\Banner\\Mobile\\", 1);
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Desktop\\" + fn1;
                    string SaveLocation1 = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Mobile\\" + fn2;


                    if ((fileDesktopForm1.PostedFile != null) && (fileDesktopForm1.PostedFile.ContentLength > 0))
                    {
                        fileDesktopForm1.PostedFile.SaveAs(SaveLocation + ".jpg");
                        //var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                        dalclass.UpdateBannerDeskImg(fn1, BannerId);
                    }
                    

                    if ((fileMobileForm1.PostedFile != null) && (fileMobileForm1.PostedFile.ContentLength > 0))
                        {
                            fileMobileForm1.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                            var image1 = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                            dalclass.UpdateBannerlImg(fn2, BannerId);




                            
                        }
                        
                    
                }
               

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Updated.'); window.location='" + "AddBanner.aspx';", true);

            }

            catch
            {

            }
        }

        protected void btnfrm2_Click(object sender, EventArgs e)
        {
            try
            {


                String Bannertitle = txtForm2BannerTitle.Text;
                String BannerSubtitle = txtForm2BannerSubTitle.Text;
                String Bannerurl = txtForm2Url.Text;
                //int CatId = int.Parse(drpCategory.SelectedValue);
                //String DropdownBanner = Drpfrm2.SelectedItem.ToString();

                int BannerId = int.Parse(Drpfrm2.SelectedValue);


                dalclass.UpdateBanner(Bannertitle, BannerSubtitle, Bannerurl, BannerId);

                if (BannerId > 0)
                {
                    string fn1 = dalclass.InsertImage("\\Banner\\Desktop\\", 2);
                    string fn2 = dalclass.InsertImage("\\Banner\\Mobile\\", 1);
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Desktop\\" + fn1;
                    string SaveLocation1 = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Mobile\\" + fn2;


                    if ((FileUploadDskfrm2.PostedFile != null) && (FileUploadDskfrm2.PostedFile.ContentLength > 0))
                    {
                        FileUploadDskfrm2.PostedFile.SaveAs(SaveLocation + ".jpg");
                        //var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                        dalclass.UpdateBannerDeskImg(fn1, BannerId);


                        
                    }
                    
                    if ((FileUploadMobilefrm2.PostedFile != null) && (FileUploadMobilefrm2.PostedFile.ContentLength > 0))
                    {
                        FileUploadMobilefrm2.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                        var image1 = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                        dalclass.UpdateBannerlImg(fn2, BannerId);


                    }
                    
                }
                else
                {
                }

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Updated.'); window.location='" + "AddBanner.aspx';", true);
            }

            catch
            {

            }
        }

        protected void btnfrm3_Click(object sender, EventArgs e)
        {
            try
            {


                String Bannertitle = txtForm3BannerTitle.Text;
                String BannerSubtitle = txtForm3BannerSubTitle.Text;
                String Bannerurl = txtForm3Url.Text;
                //int CatId = int.Parse(drpCategory.SelectedValue);
                //String DropdownBanner = Drpfrm3.SelectedItem.ToString();

                int BannerId = int.Parse(Drpfrm3.SelectedValue);


                dalclass.UpdateBanner(Bannertitle, BannerSubtitle, Bannerurl, BannerId);





                if (BannerId > 0)
                {
                    string fn1 = dalclass.InsertImage("\\Banner\\Desktop\\", 2);
                    string fn2 = dalclass.InsertImage("\\Banner\\Mobile\\", 1);
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Desktop\\" + fn1;
                    string SaveLocation1 = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Mobile\\" + fn2;


                    if ((fileDesktopForm3.PostedFile != null) && (fileDesktopForm3.PostedFile.ContentLength > 0))
                    {
                        fileDesktopForm3.PostedFile.SaveAs(SaveLocation + ".jpg");
                        //var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                        dalclass.UpdateBannerDeskImg(fn1, BannerId);


                        
                    }
                    
                    if ((fileMobileForm3.PostedFile != null) && (fileMobileForm3.PostedFile.ContentLength > 0))
                    {
                        fileMobileForm3.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                        var image1 = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                        dalclass.UpdateBannerlImg(fn2, BannerId);






                    }
                   
                }
                else
                {
                }

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Updated.'); window.location='" + "AddBanner.aspx';", true);
            }

            catch
            {

            }
        }

        protected void btnfrm4_Click(object sender, EventArgs e)
        {
            try
            {


                String Bannertitle = txtForm4BannerTitle.Text;
                String BannerSubtitle = txtForm4BannerSubTitle.Text;
                String Bannerurl = txtForm4Url.Text;
                //int CatId = int.Parse(drpCategory.SelectedValue);
                //String DropdownBanner = Drpfrm4.SelectedItem.ToString();
                int BannerId = int.Parse(Drpfrm4.SelectedValue);


                dalclass.UpdateBanner(Bannertitle, BannerSubtitle, Bannerurl, BannerId);



                if (BannerId > 0)
                {
                    string fn1 = dalclass.InsertImage("\\Banner\\Desktop\\", 2);
                    string fn2 = dalclass.InsertImage("\\Banner\\Mobile\\", 1);
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Desktop\\" + fn1;
                    string SaveLocation1 = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Mobile\\" + fn2;


                    if ((fileDesktopForm4.PostedFile != null) && (fileDesktopForm4.PostedFile.ContentLength > 0))
                    {
                        fileDesktopForm4.PostedFile.SaveAs(SaveLocation + ".jpg");
                        //var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                        dalclass.UpdateBannerDeskImg(fn1, BannerId);


                        
                    }
                    

                    if ((fileMobileForm4.PostedFile != null) && (fileMobileForm4.PostedFile.ContentLength > 0))
                    {
                        fileMobileForm4.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                        var image1 = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                        dalclass.UpdateBannerlImg(fn2, BannerId);

                    }
                    
                }
                else
                {
                }

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                  "alert('Successfully Updated.'); window.location='" + "AddBanner.aspx';", true);
            }

            catch
            {

            }
        }

        protected void btnfrm5_Click(object sender, EventArgs e)
        {
            try
            {


                String Bannertitle = txtForm5BannerTitle.Text;
                String BannerSubtitle = txtForm5BannerSubTitle.Text;
                String Bannerurl = txtForm5Url.Text;
                //int CatId = int.Parse(drpCategory.SelectedValue);
                //String DropdownBanner = Drpfrm5.SelectedItem.ToString();


                int BannerId = int.Parse(Drpfrm5.SelectedValue);


                dalclass.UpdateBanner(Bannertitle, BannerSubtitle, Bannerurl, BannerId);

                if (BannerId > 0)
                {
                    string fn1 = dalclass.InsertImage("\\Banner\\Desktop\\", 2);
                    string fn2 = dalclass.InsertImage("\\Banner\\Mobile\\", 1);
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Desktop\\" + fn1;
                    string SaveLocation1 = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Mobile\\" + fn2;


                    if ((fileDesktopForm5.PostedFile != null) && (fileDesktopForm5.PostedFile.ContentLength > 0))
                    {
                        fileDesktopForm5.PostedFile.SaveAs(SaveLocation + ".jpg");
                        //var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                        dalclass.UpdateBannerDeskImg(fn1, BannerId);


                        
                    }
                    
                    if ((fileMobileForm5.PostedFile != null) && (fileMobileForm5.PostedFile.ContentLength > 0))
                    {
                        fileMobileForm5.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                        var image1 = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                        dalclass.UpdateBannerlImg(fn2, BannerId);






                    }
                    
                }
                else
                {
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Updated.'); window.location='" + "AddBanner.aspx';", true);
            }

            catch
            {

            }
        }

        protected void BtnCatPage_Click(object sender, EventArgs e)
        {
            try
            {


                String Bannertitle = txtFormCatPageBannerTitle.Text;
                String BannerSubtitle = txtFormCatPageBannerSubTitle.Text;
                String Bannerurl = txtFormCatPageUrl.Text;
                //int CatId = int.Parse(drpCategory.SelectedValue);
                //String DropdownBanner = Drpfrm5.SelectedItem.ToString();


                int BannerCatPageId = int.Parse(DrpfrmCatPage.SelectedValue);


                dalclass.UpdateBannerByBannerCatPage(Bannertitle, BannerSubtitle, Bannerurl, BannerCatPageId);

                if (BannerCatPageId > 0)
                {
                    string fn1 = dalclass.InsertImage("\\Banner\\Desktop\\", 2);
                    string fn2 = dalclass.InsertImage("\\Banner\\Mobile\\", 1);
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Desktop\\" + fn1;
                    string SaveLocation1 = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Mobile\\" + fn2;


                    if ((FileUploadfileDesktopFormCatPage.PostedFile != null) && (FileUploadfileDesktopFormCatPage.PostedFile.ContentLength > 0))
                    {
                        FileUploadfileDesktopFormCatPage.PostedFile.SaveAs(SaveLocation + ".jpg");
                        //var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                        dalclass.UpdateSliderDeskImg(fn1, BannerCatPageId);


                        if ((fileMobileFormCatPage.PostedFile != null) && (fileMobileFormCatPage.PostedFile.ContentLength > 0))
                        {
                            fileMobileFormCatPage.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                            var image1 = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                            dalclass.UpdateSliderMblImg(fn2, BannerCatPageId);




                            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Updated.'); window.location='" + "AddBanner.aspx';", true);

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