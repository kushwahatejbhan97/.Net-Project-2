using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MIL
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                send_email_details();
                send_email_user();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                        "alert('Submitted Sucessfully!!!'); window.location='" + " Contact.aspx';", true);
            }
            catch
            {
            }
        }

        public void send_email_details()
        {
            try
            {
                String from_Address = "info@mittalispatlimited.com";
                String pwd = "12345";

                String body = "<br><h2>Welcome to info@mittalispatlimited.com</h2> <br> <p> Subject :  MIL Enquiry <br> <br> Name: " + txtName.Text + "<br>  Email: " + txtEmail.Text + "<br> Mobile : " + TextPhone.Text + "<br>  Message : " + txtMessage.Text + " </p><br><br> Thanks <br> MIL ";

                String to_Address = "waseemarchitects@gmail.com";


                using (MailMessage mm = new MailMessage(from_Address, to_Address))
                {

                    mm.Subject = "info@mittalispatlimited.com Enquiry ";
                    mm.Body = body;
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();



                    smtp.Host = "relay-hosting.secureserver.net";

                    smtp.EnableSsl = false;
                    NetworkCredential NetworkCred = new NetworkCredential(from_Address, pwd);
                    smtp.UseDefaultCredentials = false;
                    //set it to false and then check

                    smtp.Credentials = NetworkCred;
                    smtp.Port = 25;


                    smtp.Send(mm);
                }
            }
            catch
            {
            }
        }

        public void send_email_user()
        {
            try
            {
                String from_Address = "info@mittalispatlimited.com";
                String pwd = "12345";

                String body = "<img src=\"https://www.MIL.com//images/millogo.jpg\" alt=\"logo\" /><br><h2>Welcome to MIL</h2> <br> <p> Subject : MIL Enquiry <br> <br> <p>Thank You For Enquiry At MIL , Our Team Will Contact You Soon.</p>";

                String to_Address = txtEmail.Text;


                using (MailMessage mm = new MailMessage(from_Address, to_Address))
                {

                    mm.Subject = "MIL";
                    mm.Body = body;
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();



                    smtp.Host = "relay-hosting.secureserver.net";

                    smtp.EnableSsl = false;
                    NetworkCredential NetworkCred = new NetworkCredential(from_Address, pwd);
                    smtp.UseDefaultCredentials = false;
                    //set it to false and then check

                    smtp.Credentials = NetworkCred;
                    smtp.Port = 25;


                    smtp.Send(mm);
                }
            }
            catch
            {
            }
        } 
    }
}