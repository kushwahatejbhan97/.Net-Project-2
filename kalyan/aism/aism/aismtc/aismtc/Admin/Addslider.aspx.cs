using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aismtc.Admin
{
    public partial class Addslider : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

               
                string SliderName = TxtSlider.Text;
                string Textline1 = TxtTextLine1.Text;
                string Textline2 = TxtTextLine2.Text;



                
                string fn1 = dalclass.InsertImage("\\Banner\\Images\\", 8) + ".jpg";
                string Url = txturl.Text.Trim();
                if(Url=="")
                {
                    Url = "javascript:void(0)";
                }
                string ImgUrl = fn1;
                int Sliderid = dalclass.Addslider(SliderName, Textline1, Textline2, Url, ImgUrl);
                string SaveLocation = Server.MapPath("~/Admin") + "\\Banner\\" + "\\Images\\" + fn1;
                if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation );
                    
                    
                   

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                           "alert('Successfully Inserted.'); window.location='" + "Addslider.aspx';", true);
                }
                else
                {
                }

            }



            catch(Exception ex)
            {
                String msg;
                msg = ex.Message;
                

            }



        }
    }
}