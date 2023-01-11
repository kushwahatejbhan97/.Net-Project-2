using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace aismtc
{
    public partial class career : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string address = txtAddress.Text;
            string reference = txtReference.Text;
            string fn1 = "";
            try
            {
               
              

                if (FileUpload2.HasFile)
                {
                   
                    string fileExtension = System.IO.Path.GetExtension(FileUpload2.FileName);
                    fn1 = dalclass.insertfile("\\Resume\\", 5) + fileExtension;
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Resume\\" + fn1;
                    

                   
                    if (fileExtension.ToLower() != ".doc" && fileExtension.ToLower() != ".docx" && fileExtension.ToLower() != ".pdf")
                    {
                        lblmessage.Text = "only files with .doc or .docx or .pdf extensions are allowed";
                        lblmessage.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        FileUpload2.PostedFile.SaveAs(SaveLocation);
                        dalclass.career(name, email, phone, address, reference, fn1);
                    }

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
         "alert('please select a file to upload'); window.location='" + "career.aspx';", true);

                    //lblmessage.Text = "please select a file to upload";
                    //lblmessage.ForeColor = System.Drawing.Color.Red;

                }

              


                //if (FileUpload2.HasFile)
                //{
                //    string fileExtension = System.IO.Path.GetExtension(FileUpload2.FileName);

                //    if (fileExtension.ToLower() != ".doc" && fileExtension.ToLower() != ".docx")
                //    {
                //        lblmessage.Text = "only files with .doc or .docx extensions are allowed";
                //        lblmessage.ForeColor = System.Drawing.Color.Red;
                //    }
                //    else
                //    {
                //        int filesize = FileUpload2.PostedFile.ContentLength;
                //        if (filesize > 4000000)
                //        {
                //            lblmessage.Text = "maximum file size is 3mb";
                //            lblmessage.ForeColor = System.Drawing.Color.Red;
                //        }
                //        FileUpload2.SaveAs(Server.MapPath("~/Uploads" + FileUpload2.FileName));
                //        lblmessage.Text = "File Upload";
                //        lblmessage.ForeColor = System.Drawing.Color.Red;
                //    }
                //}

                //else
                //{
                //    lblmessage.Text = "please select a file to upload";
                //    lblmessage.ForeColor = System.Drawing.Color.Red;
                //}





                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
          "alert('Uploaded Successfully..'); window.location='" + "career.aspx';", true);
            }
            catch(Exception ex)
            {
                String msg;
                msg = ex.Message;

            }
        }
    

        //protected void txtSubmit_Click(object sender, EventArgs e)
        //{
        //    try
        //    {


        //        send_email_details();
        //        send_email_user();
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
        //                "alert('Submitted Sucessfully!!!'); window.location='" + " default.aspx';", true);
        //    }
        //    catch
        //    {
        //    }

        //}

        //public void send_email_details()
        //{
        //    try
        //    {
        //        String from_Address = "care@spacedesignstudio.net";
        //        String pwd = "12345";

        //        String body = "<br><h2>Welcome to Infinity  Interiors</h2> <br> <p> Subject :  Infinity  Interiors Enquiry <br> <br> Name: " + txtName.Text + "<br>  Email: " + txtEmail.Text + "<br> Mobile : " + TextPhone.Text + "<br>  Message : " + txtAddress.Text + " </p><br><br> Thanks <br> Infinity  Interiors ";

        //        String to_Address = "waseemarchitects@gmail.com";


        //        using (MailMessage mm = new MailMessage(from_Address, to_Address))
        //        {

        //            mm.Subject = "Infinity  Interiors Enquiry ";
        //            mm.Body = body;
        //            mm.IsBodyHtml = true;
        //            SmtpClient smtp = new SmtpClient();



        //            smtp.Host = "relay-hosting.secureserver.net";

        //            smtp.EnableSsl = false;
        //            NetworkCredential NetworkCred = new NetworkCredential(from_Address, pwd);
        //            smtp.UseDefaultCredentials = false;
        //            //set it to false and then check

        //            smtp.Credentials = NetworkCred;
        //            smtp.Port = 25;


        //            smtp.Send(mm);
        //        }
        //    }
        //    catch
        //    {
        //    }
        //}

        //public void send_email_user()
        //{
        //    try
        //    {
        //        String from_Address = "care@spacedesignstudio.net";
        //        String pwd = "12345";

        //        String body = "<img src=\"http://spacedesignstudio.net//images/company.png\" alt=\"logo\" /><br><h2>Welcome to Infinity  Interiors</h2> <br> <p> Subject :  Infinity  Interiors Enquiry <br> <br> <p>Thank You For Enquiry At Infinity  Interiors , Our Team Will Contact You Soon.</p>";

        //        String to_Address = txtEmail.Text;


        //        using (MailMessage mm = new MailMessage(from_Address, to_Address))
        //        {

        //            mm.Subject = "Infinity  Interiors";
        //            mm.Body = body;
        //            mm.IsBodyHtml = true;
        //            SmtpClient smtp = new SmtpClient();



        //            smtp.Host = "relay-hosting.secureserver.net";

        //            smtp.EnableSsl = false;
        //            NetworkCredential NetworkCred = new NetworkCredential(from_Address, pwd);
        //            smtp.UseDefaultCredentials = false;
        //            //set it to false and then check

        //            smtp.Credentials = NetworkCred;
        //            smtp.Port = 25;


        //            smtp.Send(mm);
        //        }
        //    }
        //    catch
        //    {
        //    }
        //}

    }
}