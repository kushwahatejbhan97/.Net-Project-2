using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Mastercraft
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = dalclass.text_finder(74);
                Label2.Text = dalclass.text_finder(75);
              
            }
            catch
            {
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string email = TextBox2.Text;
            string phone = TextBox3.Text;
            string adress = TextBox4.Text;
            string referenc = TextBox5.Text;
            try
            {
                
                 if ( FileUpload1.HasFile)
                 {
                     string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);                    
                     
                     if(fileExtension.ToLower () != ".doc" && fileExtension.ToLower() != ".docx")
                         {
                         lblmessage.Text = "only files with .doc or .docx extensions are allowed";
                          lblmessage .ForeColor = System .Drawing .Color.Red;
                         }
                      else
                       {
                          int filesize = FileUpload1.PostedFile.ContentLength;
                          if (filesize>4000000)
                           {
                              lblmessage.Text = "maximum file size is 3mb";
                             lblmessage .ForeColor = System .Drawing .Color.Red;
                           }
                        FileUpload1.SaveAs(Server.MapPath("~/Uploads" + FileUpload1.FileName));
                        lblmessage.Text = "File Upload";
                          lblmessage .ForeColor = System .Drawing .Color.Red;
                        }
                 }
                        else
                        {
                         lblmessage.Text = "please select a file to upload";
                          lblmessage .ForeColor = System .Drawing .Color.Red;
                        }


                 

                int id;
                    id = dalclass.career(name, email, phone, adress, referenc);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
              "alert('Uploaded Successfully..'); window.location='" + "career.aspx';", true);
            }
            catch
            {

            }
        }
    }
}