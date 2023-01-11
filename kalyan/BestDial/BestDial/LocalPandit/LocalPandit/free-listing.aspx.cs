using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Net;
using System.Drawing.Imaging;

namespace LocalPandit
{
    public partial class free_listing : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtmobileNo_TextChanged(object sender, EventArgs e)
        {
            try
            {
                String CmpNam = dalclass.Existeing_company_finder_By_Mobile(txtmobileNo.Text);
                if (CmpNam == null || CmpNam == "")
                {
                    String otp = securitykey().ToString();
                    SendMobileVerifyMessageuser(txtmobileNo.Text, "Dear User " + otp + " is your Best Dial verification code");
                    Session["CompanyMobile"] = txtmobileNo.Text;
                    Session["CompanyMobileVerCode"] = otp;
                    lblerror.Text = "Available";
                    lblerror.Style.Add("color", "Green");
                }

                else
                {
                    lblerror.Text ="Mobile no already exist";
                }
            }
            catch { }
        }

        protected void btnaddlistingsite_Click(object sender, EventArgs e)
        {

            try
            {
                  String CmpNam = dalclass.Existeing_company_finder_By_Mobile(txtmobileNo.Text);
                  if (CmpNam == null || CmpNam == "")
                  {

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

                      int CompId = dalclass.Addlisting_from_site_tbl(0, txtcompanyname.Text, txtownername.Text, txtYearstablis.Text, txtmobileNo.Text, txtLandlineno.Text, txtemailid.Text, txtwebsite.Text, txtlocation.Text, txtfulladdress.Text, ddlcity.SelectedValue.ToString(), "", DateTime.Now.ToShortDateString(), "", 0, "", "123456", txtlatitude.Text, txtlongitude.Text);
                      string compname = txtcompanyname.Text;
                      string complocation = txtlocation.Text;
                      string compcity = ddlcity.SelectedValue.ToString();
                      string compurl = compname + " " + complocation + " " + compcity;
                      compurl = compurl.Replace("&", "-");
                      compurl = compurl.Replace(".", "");
                      compurl = compurl.Replace(" ", "-");
                      compurl = compurl.Replace("---", "-");
                      if (CompId > 0)
                      {
                          string compkeyword = KeyStr + "," + YrStr + ", " + DropDownList2.SelectedItem.Text;

                          dalclass.Company_listing_Keyword_tbl(CompId, KeyStr);
                          dalclass.Company_tags_table(CompId, YrStr);
                          dalclass.update_comp_key_url_catid(0, compname + ", " + complocation + ", " + compcity, compurl, CompId);
                          dalclass.update_New_comp_key_catid(Int32.Parse(DropDownList2.SelectedValue.ToString()), compkeyword, CompId);
                          String password = CreateRandomPassword(5);
                          dalclass.Update_comp_Password(CompId, password);
                          uploadimage(CompId);
                          SendSuccessMessageuser(txtmobileNo.Text, "Dear User Your business listing has been added successfully. Login Your account using your mobile no. as userid and " + password + " as password.");
                          
                          Session["CompanyId"] = CompId;
                          Response.Redirect("/success.aspx?CompanyId=" + CompId + "", false);
                      }
                  }

                  else
                  {
                      lblerror.Text = "Mobile no already exist";
                  }
            }
            catch
            {
                string display = "Something Went Wrong ! Please Try Again";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
        }

        public static System.Drawing.Image ScaleImage(System.Drawing.Image image, int maxWidth, int maxHeight)
        {

            var ratioX = (double)maxWidth / image.Width;
            var ratioY = (double)maxHeight / image.Height;
            var ratio = Math.Min(ratioX, ratioY);

            var newWidth = (int)(image.Width * ratio);
            var newHeight = (int)(image.Height * ratio);

            var newImage = new System.Drawing.Bitmap(newWidth, newHeight);
            System.Drawing.Graphics.FromImage(newImage).DrawImage(image, 0, 0, newWidth, newHeight);
            return newImage;

        }

        public int securitykey()
        {

            int _min = 0000;
            int _max = 9999;
            Random _rdm = new Random();
            return _rdm.Next(_min, _max);


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

        public String SendSuccessMessageuser(String mobno, String msguser)
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


        private void uploadimage(int item_id)
        {
            string fn = item_id.ToString();
            string SaveLocation1Un = Server.MapPath("~/uploads/comp-img") + "\\" + "no-image";
            string SaveLocation2Un = Server.MapPath("~/uploads") + "\\comp-img\\" + fn;
            var image = System.Drawing.Image.FromFile(SaveLocation1Un + ".jpg");
            image.Save(SaveLocation2Un + ".jpg", ImageFormat.Jpeg);

        }
    }
}