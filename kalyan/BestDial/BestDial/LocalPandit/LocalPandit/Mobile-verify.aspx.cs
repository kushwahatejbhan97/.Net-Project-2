using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace LocalPandit
{
    public partial class Mobile_verify : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                txtmobile.Text = Request.QueryString["mobile"].ToString();
            }
            catch { }
        }

        protected void btncheckEmail_Click(object sender, EventArgs e)
        {
            try
            {
                int getemail = dalclass.user_email_finder(txtmobile.Text);
                if (getemail > 0)
                {
                    loginmain.Visible = false;
                    VeryfyOtp.Visible = true;
                    String otp = securitykey().ToString();
                    Session["userotp"] = otp;
                    SendEnqMessageAdmin(txtmobile.Text, "Dear User " + otp + " is your Best Dial verification code for mobile verification.");

                }
                else
                {
                    loginmain.Visible = true;
                    VeryfyOtp.Visible = false;
                    string display = "Mobile no. does not exists.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);

                }

            }

            catch { }
        }

        public int securitykey()
        {

            int _min = 0000;
            int _max = 9999;
            Random _rdm = new Random();
            return _rdm.Next(_min, _max);


        }

        protected void btnVeryOTP_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["userotp"].ToString() == txtotp.Text)
                {

                    loginmain.Visible = false;
                    VeryfyOtp.Visible = false;
                    dalclass.update_Mobile_verificateion_BY_MOBILE(txtmobile.Text);
                    Response.Redirect("/login.aspx");
                }
                else
                {
                    loginmain.Visible = false;
                    VeryfyOtp.Visible = true;
                    string display = "OTP Incorrect";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                }

            }
            catch { }
        }

        public String SendEnqMessageAdmin(String mobno, String msguser)
        {
            try
            {
                int totmsgAv = dalclass.MessageCounterInfo();
                if (totmsgAv > 0)
                {
                    dalclass.Update_TotalMessageCountAdmin(1);
                    HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create("http://demo20.dexterous.in/submitsms.jsp?user=Dexter&key=edeff612d4XX&mobile=" + mobno + "&message=" + msguser + "&senderid=Bestdl&accusage=1");
                    HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
                    System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
                    string responseString = respStreamReader.ReadToEnd();
                    respStreamReader.Close();
                    myResp.Close();
                    return (responseString);
                }
                return "Msg Balance not Available";
            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }

        }
    }
}
