using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aismtc.Admin
{
    public partial class addsuccess : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string Name = txtfilename.Text;
            string Author = txtAuthor.Text;
            string Date = txtdate.Text;
            string originalurl = txtOriginalUrl.Text;
            string fn1 = "";
            try
            {
                if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))

                {

                    fn1 = dalclass.InsertImage("\\success\\", 6) + ".jpg";
                    string url = fn1;
                    string SaveLocation = Server.MapPath("~/Admin") + "\\success\\" + fn1;
                    FileUpload1.PostedFile.SaveAs(SaveLocation);
                    int successid = dalclass.addsuccess(Name, Author, Date, originalurl, fn1);


                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                             "alert('Successfully Inserted.'); window.location='" + "addtestimonial.aspx';", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                             "alert('Failed to Insert.'); window.location='" + "addtestimonial.aspx';", true);
                }
            }



            catch (Exception ex)
            {
                String msg;
                msg = ex.Message;


            }

        }
    }
}