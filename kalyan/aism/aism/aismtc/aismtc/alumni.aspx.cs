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
    public partial class alumni : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    notExist.Visible = false;
                    certificate.Visible = false;
                }

            }
            catch
            {

            }

        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                ArrayList details = new ArrayList();

                details = dalclass.find_stu_details((txtName.Text));
                if (details.Count > 0)
                {

                    Label1.Text = details[0].ToString();
                    Label4.Text = details[1].ToString();
                    Label5.Text = details[2].ToString();
                    Label6.Text = details[3].ToString();
                    Label7.Text = details[4].ToString();
                    Label8.Text = details[5].ToString();

                    certificate.Visible = true;
                    notExist.Visible = false;

                }
                else
                {
                    notExist.Visible = true;
                    certificate.Visible = false;

                }
            }
            catch
            {
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

        //        String body = "<br><h2>Welcome to Infinity  Interiors</h2> <br> <p> Subject :  Infinity  Interiors Enquiry <br> <br> Name: " + txtName.Text + "  </p><br><br> Thanks <br> Infinity  Interiors ";

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

        //        //String to_Address = txtEmail.Text;


        //        //using (MailMessage mm = new MailMessage(from_Address, to_Address))
        //        //{

        //        //    mm.Subject = "Infinity  Interiors";
        //        //    mm.Body = body;
        //        //    mm.IsBodyHtml = true;
        //        //    SmtpClient smtp = new SmtpClient();



        //        //    smtp.Host = "relay-hosting.secureserver.net";

        //        //    smtp.EnableSsl = false;
        //        //    NetworkCredential NetworkCred = new NetworkCredential(from_Address, pwd);
        //        //    smtp.UseDefaultCredentials = false;
        //        //    //set it to false and then check

        //        //    smtp.Credentials = NetworkCred;
        //        //    smtp.Port = 25;


        //        //    smtp.Send(mm);
        //        //}
        //    }
        //    catch
        //    {
        //    }
        //}

    }
}