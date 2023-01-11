using System;
using System.Collections;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Net;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Net.Mail;

namespace aismtc
{
    public partial class contact_us1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            try
            {


                send_email_details();
                send_email_user();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                        "alert('Submitted Sucessfully!!!'); window.location='" + " default.aspx';", true);
            }
            catch
            {
            }

        }

        public void send_email_details()
        {
            try
            {
                String from_Address = "info@aismtc.com";
                String pwd = "12345";

                String body = "<br><h2>Welcome to Infinity  Interiors</h2> <br> <p> Subject :  Infinity  Interiors Enquiry <br> <br> Name: " + txtName.Text + "<br>  Email: " + txtEmail.Text + "<br> Mobile : " + TextPhone.Text + "<br>  Message : " + txtMessage.Text + " </p><br><br> Thanks <br> Infinity  Interiors ";

                String to_Address = "waseemarchitects@gmail.com";


                using (MailMessage mm = new MailMessage(from_Address, to_Address))
                {

                    mm.Subject = "Asian Institute Of Safety Management Enquiry ";
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
                String from_Address = "info@aismtc.com";
                String pwd = "12345";

                String body = "<img src=\"https://www.aismtc.com//img/Exteriors/logo-aism.png\" alt=\"logo\" /><br><h2>Welcome to Asian Institute Of Safety Management</h2> <br> <p> Subject : Asian Institute Of Safety Management Enquiry <br> <br> <p>Thank You For Enquiry At Asian Institute Of Safety Management , Our Team Will Contact You Soon.</p>";

                String to_Address = txtEmail.Text;


                using (MailMessage mm = new MailMessage(from_Address, to_Address))
                {

                    mm.Subject = "Asian Institute Of Safety Management";
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