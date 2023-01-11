using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

namespace AppMyDeal
{
    public partial class _default : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void btnChkMobile_Click(object sender, EventArgs e)
        {
            try
            {
                String otp = securitykey().ToString();
                Session["OTP"] = otp;
                SendMessage(TxtContactNo.Text, @"Your KiranaWorld One Time Password is: " + otp + @". Valid for next next 20 minutes.

Regards
Team KiranaWorld");


                //LoginAccount.Visible = true;
                CheckMobile.Visible = false;
                CheckOtp.Visible = true;


            }
            catch { }
        }


        protected void ChangeMobile_Click(object sender, EventArgs e)
        {
            try
            {

                CheckMobile.Visible = true;
                CheckOtp.Visible = false;


            }
            catch { }
        }



        protected void OPtConfirm_Click(object sender, EventArgs e)
        {
            try
            {

               

                if (Session["OTP"].ToString() == txtOTP.Text)
                {
                    Session["mobile"] = TxtContactNo.Text;
                    ArrayList Client = dalclass.Existing_phone(TxtContactNo.Text);

                    if (Client.Count == 0)
                    {

                        //insert new user and Get the Client Id 


                        CheckMobile.Visible = false;
                        CheckOtp.Visible = false;
                        Register.Visible = true;





                    }
                    else
                    {
                        Session["ClientId"] = Client[0].ToString();
                        Session["ClientName"] = Client[1].ToString();
                        Session["email"] = Client[2].ToString();
                        HttpCookie cookie = new HttpCookie("TheOmartCustomerCookie");
                        cookie["ClientId"] = Session["ClientId"].ToString();
                        cookie["loginstatus"] = "1";
                        cookie.Expires = DateTime.Now.AddMonths(12);
                        Response.Cookies.Add(cookie);

                        Response.Redirect(Request.Url.AbsoluteUri, false);





                    }
                }
                else
                {

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "errorShow", "errorShow()", true);
                }




            }
            catch { }
        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            try
            {
                ArrayList Client = dalclass.Existing_phone(TxtContactNo.Text);

                if (Client.Count == 0)
                {

                    int ClientId = dalclass.AddClient(TxtContactNo.Text);
                    Session["ClientId"] = ClientId;
                    dalclass.AddPersonal(ClientId, txtname.Text, txtEmail.Text);



                    Session["UserName"] = txtEmail.Text;
                    Session["email"] = txtEmail.Text;
                    Register.Visible = false;



                    HttpCookie cookie = new HttpCookie("TheOmartCustomerCookie");
                    cookie["ClientId"] = Session["ClientId"].ToString();
                    cookie["loginstatus"] = "1";
                    cookie.Expires = DateTime.Now.AddMonths(12);
                    Response.Cookies.Add(cookie);
                    Response.Redirect(Request.Url.AbsoluteUri, false);

                }
                else
                {
                    Session["ClientId"] = Client[0].ToString();
                    Session["ClientName"] = Client[1].ToString();
                    Session["email"] = Client[2].ToString();
                    HttpCookie cookie = new HttpCookie("TheOmartCustomerCookie");
                    cookie["ClientId"] = Session["ClientId"].ToString();
                    cookie["loginstatus"] = "1";
                    cookie.Expires = DateTime.Now.AddMonths(12);
                    Response.Cookies.Add(cookie);

                    Response.Redirect(Request.Url.AbsoluteUri, false);





                }

            }
            catch { }
        }


        public int securitykey()
        {

            int _min = 1000;
            int _max = 9999;
            Random _rdm = new Random();
            return _rdm.Next(_min, _max);



        }

        public String SendMessage(String mobno, String msge)
        {
            try
            {






                HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create("http://mobicomm.dove-sms.com//submitsms.jsp?user=shantire&key=2ad16bc0f9XX&mobile=" + mobno + "&message=" + msge + "&senderid=KWorld&accusage=1&entityid=1201159194292972286&tempid=1207162192424048379");

                HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
                System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
                string responseString = respStreamReader.ReadToEnd();
                respStreamReader.Close();
                myResp.Close();
                return (responseString);


            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;


            }
            return "abc";


        }

    }
}