using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;


namespace DecoratinComplete
{
    public partial class EmailButton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEmail_Click(object sender, EventArgs e)
        {
            try
            {
                string name = "Sudeshna";
                string email = "info@decoratin.com.au";
                string phone = "7978460091";
                string subject = "approval";
                string msg = "<strong>Hello,</strong></div><p><br></p>";
                msg = msg + "<strong>Your wholesale account at <a href =" + "http://www.decoratin.com.au/" + " style=\"color: rgb(89, 143, 222); cursor: pointer;\" target=\"_blank\">www.decoratin.com.au</a> has now been approved. You can now log in through your email to view all the product prices.&nbsp;</strong>";


                try
                {
                    using (MailMessage mail = new MailMessage())
                    {
                        mail.From = new MailAddress(email);
                        mail.To.Add("dexterous.website@gmail.com");
                        mail.Subject = subject;
                        mail.IsBodyHtml = true;
                        mail.Body = "<h1>Name:</h1>" + name + "," + "<h1>Email:</h1>" + email + "<h1>phone:</h1>" + phone + "<h1>subject:</h1>" + subject + "<h1>Message:</h1>" + msg;
                        

                        using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 25))
                        {
                            smtp.Credentials = new System.Net.NetworkCredential("info@decoratin.com.au", "Decoratin@123");
                            smtp.EnableSsl = true;
                            smtp.Send(mail);

                        }

                    }

                }

                catch (Exception ex)
                {
                    label1.Text = ex.Message;
                }









            }
            catch
            {

            }

        }
    }
}