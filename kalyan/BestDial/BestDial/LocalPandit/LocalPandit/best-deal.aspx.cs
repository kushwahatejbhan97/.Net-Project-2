using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace LocalPandit
{
    public partial class best_deal : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string lookingfor = txtUserlookingfor.Text;
                string name = txtUsername.Text;
                string email = txtuserEmail.Text;
                string mobile = txtUsermobile.Text;
                String City = txtUserCity.Text;
                int id = dalclass.Insert_get_Quote_table(lookingfor, name, mobile, email, "N/A", City, DateTime.Now.ToString());

                if (id > 0)
                {

                    SendEnqMessageAdmin("9391138508", "User " + name + " enquired for business related query at Localpandit  User Name : " + name + ", User Requirement : " + lookingfor + ", City: " + City + ", User mobile: " + mobile + ", User email: " + email + "");
                    SendEnqMessageuser(mobile, "Dear User " + name + " Thank you for enquiring with us, Our team will contact you shortly!!!");
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                    "alert('Thank you!!! Your Query has been submitted Successfully.'); window.location='" + "/';", true);
                }
                else
                {
                    Response.Write("<script>alert('Somthing went wrong!!!');</script>");
                }

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