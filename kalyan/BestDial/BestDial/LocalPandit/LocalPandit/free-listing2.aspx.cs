using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace LocalPandit
{
    public partial class free_listing2 : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnaddlistingsite_Click(object sender, EventArgs e)
        {
            try
            {
                int compid = Int32.Parse(Request.QueryString["CompanyId"].ToString());
               
                List<String> YrStrList = new List<string>();
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected)
                    { YrStrList.Add(item.Text); }
                }
                String YrStr = String.Join(",", YrStrList.ToArray());


                List<String> catKeywordStrList = new List<string>();
                foreach (ListItem item in CheckBoxList2.Items)
                {
                    if (item.Selected)
                    { catKeywordStrList.Add(item.Text); }
                }
                String KeyStr = String.Join(",", catKeywordStrList.ToArray());

                string compkeyword = KeyStr + "," + YrStr + ", " + DropDownList2.SelectedItem.Text;

                dalclass.Company_listing_Keyword_tbl(compid, KeyStr);
                dalclass.Company_tags_table(compid, YrStr);
                dalclass.update_New_comp_key_catid(Int32.Parse(DropDownList2.SelectedValue.ToString()), compkeyword, compid);
                String password = CreateRandomPassword(5);
                dalclass.Update_comp_Password(compid, password);
                SendMobileVerifyMessageuser(Session["CompanyMobile"].ToString(), "Dear User Your business listing has been added successfully. Login Your account using your mobile no. as userid and " + password + " as password.");

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                 "alert('Registration Completed Successfully. !!!'); window.location='" + "/Main.aspx';", true);
            }
            catch { }
        }

        public static string CreateRandomPassword(int PasswordLength)
        {
            string _allowedChars = "0123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ";
            Random randNum = new Random();
            char[] chars = new char[PasswordLength];
            int allowedCharCount = _allowedChars.Length;
            for (int i = 0; i < PasswordLength; i++)
            {
                chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
            }
            return new string(chars);
        }

        public String SendMobileVerifyMessageuser(String mobno, String msguser)
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