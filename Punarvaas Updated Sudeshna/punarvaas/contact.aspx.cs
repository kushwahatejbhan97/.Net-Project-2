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
    public partial class contact : System.Web.UI.Page
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
                    //Create the msg object to be sent
                    MailMessage msg = new MailMessage();
                    //Add your email address to the recipients
                    msg.To.Add("punarvaas.rehab@gmail.com");
                    //Configure the address we are sending the mail from **- NOT SURE IF I NEED THIS OR NOT?**
                    MailAddress address = new MailAddress(email);
                    msg.From = address;
                    //Append their name in the beginning of the subject
                    msg.Subject = "Client Details";
                    msg.Body = "Name :" + name;
                    msg.Body = "Phone :" + phone;
                    msg.Body = "Email :" + email;
                    msg.Body = "Message :" + message;


                    //Configure an SmtpClient to send the mail.
                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    client.EnableSsl = true; //only enable this if your provider requires it
                                             //Setup credentials to login to our sender email address ("UserName", "Password")
                    NetworkCredential credentials = new NetworkCredential("punarvaas.rehab@gmail.com", "shyambaba@0851");
                    client.Credentials = credentials;

                    //Send the msg
                    client.Send(msg);

                    //Display some feedback to the user to let them know it was sent
                    // lblResult.Text = "Your message was sent!";

                    //Clear the form
                    txtname.Text = "";
                    txtmobile.Text = "";
                    txtemail.Text = "";
                    messageform.InnerText = "";
                }
                catch (Exception ex)
                {
                    //If the message failed at some point, let the user know
                    //  lblResult.Text = "Your message failed to send, please try again.";
                    txtname.Text = "";
                    txtmobile.Text = "";
                    txtemail.Text = "";
                    messageform.InnerText = "";
                    ScriptManager.RegisterStartupScript(this, GetType(), "Your message failed to send, please try again.", "alertMessage();", true);

                }
            }
            catch
            {

            }
        }

        protected void contactbtn_ServerClick(object sender, EventArgs e)
        {
            try
            {
                string name = txtcname.Text;
                string email = txtcemail.Text;
                string phone = txtcphone.Text;
                string subject = txtcsubject.Text;
                string message = contactmessage.InnerText;
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