using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDeal.Admin
{
    public partial class New_Manage_Listing : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DdlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                DropDownList mySender = (DropDownList)sender;

                    SqlDataSourceListType.DataBind();
                    DDcompany.DataBind();

                DDcompany_SelectedIndexChanged(sender, e);



            }
            catch
            {

            }
        }

        protected void btnSubmitEditListing_Click(object sender, EventArgs e)
        {
            try
            {
                int CompanyId = int.Parse(DDcompany.SelectedValue);
                string CompanyName = txtCompanyName.Text;
                string OwnerName = txtOwnerName.Text;
                string YearEstablish = TxtYearEstablish.Text;
                string Mobile = TxtMobile.Text;
                string LandLine = TxtLandLine.Text;
                string Email = TxtEmail.Text;

                string password = TxtPassword.Text;
                string Website = TxtWebsite.Text;
                string Location = TxtLocation.Text;
                string Address = TxtAddress.Text;
                Boolean Enable = ChkEnable.Checked;
                string Describtion = TxtDescribtion.Text;
                string Map = TextMap.Text;
                string Tags = "";

                for (int i = 0; i < CheckBoxListtag.Items.Count; i++)
                {
                    if (CheckBoxListtag.Items[i].Selected == true)// getting selected value from CheckBox List  
                    {
                        Tags += CheckBoxListtag.Items[i].Value + " ,"; // add selected Item text to the String .  
                    }


                }

                for (int i = 0; i < CBGeneralList.Items.Count; i++)
                {
                    if (CBGeneralList.Items[i].Selected == true)// getting selected value from CheckBox List  
                    {
                        Tags += CBGeneralList.Items[i].Value + " ,"; // add selected Item text to the String .  
                    }
                }

                dalclass.UpdateProductData(CompanyId, CompanyName, OwnerName, YearEstablish, Mobile, LandLine, Email, password, Website, Location, Address, Enable, Describtion, Map, Tags);


                string fn1 = dalclass.InsertImage("\\uploads\\comp-img\\", 2);
                string SaveLocation = Server.MapPath("~/uploads") + "\\comp-img\\" + fn1;

                if ((fileDesktop.PostedFile != null) && (fileDesktop.PostedFile.ContentLength > 0))
                {
                    fileDesktop.PostedFile.SaveAs(SaveLocation + ".jpg");
                    //var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                    dalclass.UpdateListingImageID(fn1, CompanyId);
                    dalclass.UpdateUrl(fn1);


                }
                else
                {
                }


                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                  "alert('Successfully Update'); window.location='" + "New-Manage-Listing.aspx';", true);
            }
            catch
            {

            }
           

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            int CompanyId = int.Parse(DDcompany.SelectedValue);
            dalclass.deletedata(CompanyId);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                 "alert('Deleted Successfully.'); window.location='" + "New-Manage-Listing.aspx';", true);
        }

        protected void DDcompany_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int CompanyId = int.Parse(DDcompany.SelectedValue);

                ArrayList al = dalclass.getAllListingData(CompanyId);

                //CompanyName, OwnerName, YearEstablish, Mobile, LandLine, Email, Password, Website, Location, Address, Enable, Describtion, Map, Tags

                txtCompanyName.Text = al[0].ToString();
                txtOwnerName.Text = al[1].ToString();
                TxtYearEstablish.Text = al[2].ToString();
                TxtMobile.Text = al[3].ToString();
                TxtLandLine.Text = al[4].ToString();
                TxtEmail.Text = al[5].ToString();
                TxtPassword.Text = al[6].ToString();
                TxtWebsite.Text = al[7].ToString();
                TxtLocation.Text = al[8].ToString();
                TxtAddress.Text = al[9].ToString();
                ChkEnable.Checked = Boolean.Parse(al[10].ToString());
                TxtDescribtion.Text = al[11].ToString();
                TextMap.Text = al[12].ToString();


                try
                {

                    SqlDataSourceTagsName.DataBind();
                    CheckBoxListtag.DataBind();
                    //for (int i = 0; i < CheckBoxListtag.Items.Count; i++)
                    //{
                    //    if (CheckBoxListtag.Items[i].Selected == true)// getting selected value from CheckBox List  
                    //    {
                    //        Tags += CheckBoxListtag.Items[i].Value + " ,"; // add selected Item text to the String .  
                    //    }

                    //}



                }
                catch
                {

                }

                Image1.ImageUrl = "/uploads/comp-img/" + al[14].ToString() + ".jpg";
            }
            catch
            {

            }
        }
    }
}