using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Net;

namespace LocalPandit
{
    public partial class message : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {

               
                string Companyid = Request.QueryString["CompId"].ToString();
                string username = txtEname.Text;
                string usermobile = txtEmobileno.Text;
                string useremail = txtemail.Text;
                string userquery = txtEmessage.Text;

                int Enid = dalclass.Company_enquiry_table(Int32.Parse(Companyid), "", username, usermobile, useremail, userquery, DateTime.Now.ToString());
                string listtype = dalclass.get_company_ListingType(Int32.Parse(Companyid));
                SendEnqMessageuser(usermobile, " Dear User" + username + " Thank you for enquiring with us, Our team will contact you shortly!!!");
                if (listtype != "Free")
                {
                   ArrayList al = dalclass.Get_Compny_info(Int32.Parse(Companyid));
                   SendEnqMessage(al[4].ToString(), "User " + username + " enquired for business related query at Localpandit  User Name : " + username + ", User mobile: " + usermobile + ", User email: " + useremail + ", User Query : " + userquery + "");
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
               "alert('Thank you!!! Your Query has been submitted Successfully.'); window.location='" + "/';", true);
            }
            catch { }
        }

        public String SendEnqMessageuser(String mobno, String msge)
        {
            try
            {

                int totmsgAv = dalclass.MessageCounterInfo();
                if (totmsgAv > 0)
                {

                    dalclass.Update_TotalMessageCountAdmin(1);
                    HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create("http://demo20.dexterous.in/submitsms.jsp?user=Dexter&key=edeff612d4XX&mobile=" + mobno + "&message=" + msge + "&senderid=Bestdl&accusage=1");
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

        public String SendEnqMessage(String mobno, String msguser)
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