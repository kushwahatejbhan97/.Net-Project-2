using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace punarvaas
{
    public partial class how_we_help : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            try
            {
                string name = txtname.Text;
                string email = txtemail.Text;
                string phone = txtmobile.Text;
                string message = messageform.InnerText;
                try
                {
                    using (MailMessage mail = new MailMessage())
                    {
                        mail.From = new MailAddress(email);
                        mail.To.Add("punarvaas.rehab@gmail.com");
                        mail.Subject = "Enquiry Form Details";
                        mail.Body = "<h1>Name:</h1>" + name + "," + "<h1>Phone:</h1>" + phone + "<h1>Email:</h1>" + email + "<h1>Message:</h1>" + message;
                        mail.IsBodyHtml = true;

                        using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                        {
                            smtp.Credentials = new System.Net.NetworkCredential("punarvaas.rehab@gmail.com", "shyambaba@0851");
                            smtp.EnableSsl = true;
                            smtp.Send(mail);

                        }

                    }

                }

                catch (Exception ex)
                {

                }
            }
            catch
            {

            }
        }
    }
}