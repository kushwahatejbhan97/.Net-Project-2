using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDeal
{
    public partial class NewFreeListingRegs : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignUP_Click(object sender, EventArgs e)
        {
            try
            {
                int CatId = int.Parse(DropDownList2.SelectedValue);
                string CategoryName = DropDownList2.SelectedItem.ToString();
                //String Companyname = txtcompanyname.Text;
                String Companyname = FirstCharToUpper(txtcompanyname.Text.Trim());

                String cityname = ddlcity.SelectedItem.ToString();

                string Url = Companyname + " " + CategoryName + " " + cityname;
                Url = Url.Replace(" ", "-").Replace("  ", "-").Replace("/", "-").Replace("+", "-").Replace("%", "-").Replace("$", "-").Replace("(", "-").Replace(")", "-").Replace("'", "-").Replace("--", "-");

                string Emailid = txtemailid.Text;
                string MobileNo = txtmobileNo.Text;
                String Landlineno = txtLandlineno.Text;
                String Yearstablis = txtYearstablis.Text;
                String website = txtwebsite.Text;
                String ownername = txtownername.Text;
                //int cityname = int.Parse(ddlcity.SelectedValue);
                
                string location = txtlocation.Text;
                string fulladdress = txtfulladdress.Text;
                string Password = txtPassword.Text;
                string Des = txtDes.Text;
                string Map = txtMap.Text;
                string Tags = "";
                String RegsitrationDate = DateTime.Today.ToString();
                String Keyword = Companyname + ", " + CategoryName + ", " + cityname;

                for (int i = 0; i < CheckBoxList1.Items.Count; i++)
                {
                    if (CheckBoxList1.Items[i].Selected == true)// getting selected value from CheckBox List  
                    {
                        Tags += CheckBoxList1.Items[i].Value + " ,"; // add selected Item text to the String .  
                    }

                    


                }

                Keyword = Keyword + ", " + Tags;

                int CompanyId = dalclass.insertListingNew(CatId, Companyname, Emailid, MobileNo, Landlineno, Yearstablis, website, ownername, cityname, location, fulladdress, Password, Des, Map, Tags, Url, Keyword, RegsitrationDate, CategoryName);



                if (CompanyId > 0)
                {
                    string fn1 = dalclass.InsertImage("\\uploads\\comp-img\\", 2);
                    string SaveLocation = Server.MapPath("~/uploads") + "\\comp-img\\" + fn1;

                    if ((FUpBanner.PostedFile != null) && (FUpBanner.PostedFile.ContentLength > 0))
                    {
                        FUpBanner.PostedFile.SaveAs(SaveLocation + ".jpg");
                        //var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                        dalclass.UpdateListingImageID(fn1, CompanyId);
                        dalclass.UpdateUrl(fn1);

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Inserted.'); window.location='" + "NewFreeListingRegs.aspx';", true);
                    }
                }
                else
                {
                }


            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;


            }

        }

        private string FirstCharToUpper(string Companyname)
        {
            Companyname = Companyname.Trim();
            string formatedString = "";

            string[] tokens = Companyname.Split(' ');
            for (int i = 0; i < tokens.Length; i++)
            {
                string a = tokens[i].First().ToString().ToUpper();
                string b = tokens[i].ToLower();
                formatedString += a + String.Join("", b.Skip(1));
                formatedString += " ";
            }



            return formatedString.Trim();
        }
    }
}