using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimsIndia
{
    public partial class Apply : System.Web.UI.Page
    {

        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack) {

                    DivRegistration.Visible = true;
                    DivPersonalInfo.Visible = false;
                    DivPhotoUpload.Visible = false;


                }
            }
            catch
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string Fname = txtFname.Text;
                string Lname = txtLname.Text;
                string Email = txtemail.Text;
                string Phone = txtphone.Text;
                string Country = txtcountry.Text;
                string City = txtcity.Text;
                string Address = txtaddress.Text;
                string skills = txtskills.Text;
                string Profession = drpProf.SelectedValue;
                String Gender = "Female";
                if (rdMale.Checked == true)
                {
                    Gender = "Male";
                }


                int ModelId = dalclass.Apply(Fname, Lname, Email, Phone, Country, City, Address, Profession, Gender, skills);

                Session["ModelId"] = ModelId;


                DivRegistration.Visible = false;
                DivPersonalInfo.Visible = true;
                DivPhotoUpload.Visible = false;




            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }

            
        }


        protected void btnpersonalinfoClick(object sender, EventArgs e)
        {
            try
            {
                string height = HttpUtility.HtmlEncode(txtheight.Text);
                string Dress = HttpUtility.HtmlEncode(txtdressize.Text);
                string waist = HttpUtility.HtmlEncode(txtwaist.Text);
                string shoe = HttpUtility.HtmlEncode(txtshoesize.Text);
                string hair = txthaircolor.Text;
                string weight = HttpUtility.HtmlEncode(txtweight.Text);
                string hips = HttpUtility.HtmlEncode(txthips.Text);
                string eye = txteyecolor.Text;
                string chest = txtchest.Text;
                string skin = txtskincolor.Text;
                int ModelId = int.Parse(Session["ModelId"].ToString());

                dalclass.Personalinfo(ModelId, height, Dress, waist, shoe, hair, weight, hips, eye, chest, skin);

                DivRegistration.Visible = false;
                DivPersonalInfo.Visible = false;
                DivPhotoUpload.Visible = true;
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }

        }

        protected void btnimages(object sender, EventArgs e)
        {
            try
            {
              

                int ModelId = int.Parse(Session["ModelId"].ToString());
                string fn1 = dalclass.InsertImage("\\Admin\\Model\\", 8) + ".jpg";
               
               
                
                
                string SaveLocation1 = Server.MapPath ("\\Admin\\" + "\\Model\\" + fn1);
                
               
                
                

                if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation1 );
                    dalclass.UpdateImg(fn1, ModelId);
                    dalclass.ItemSliderInsert(ModelId, fn1, txtFname.Text, "HIMSIndia" + txtFname.Text);
                    if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
                    {

                        string fn2 = dalclass.InsertImage("\\Admin\\" + "\\Model\\", 8) + ".jpg";
                        string SaveLocation2 = Server.MapPath("\\Admin\\" + "\\Model\\" + fn2);
                        FileUpload2.PostedFile.SaveAs(SaveLocation2 );
                        dalclass.ItemSliderInsert(ModelId, fn2, txtFname.Text, "HIMSIndia" + txtFname.Text);


                    }
                    if((FileUpload3.PostedFile != null) && (FileUpload3.PostedFile.ContentLength > 0))
                        {
                        string fn3 = dalclass.InsertImage("\\Admin\\" + "\\Model\\", 8) + ".jpg";
                        string SaveLocation3 = Server.MapPath("\\Admin\\" + "\\Model\\" + fn3);
                        FileUpload3.PostedFile.SaveAs(SaveLocation3 );
                        dalclass.ItemSliderInsert(ModelId, fn3, txtFname.Text, "HIMSIndia" + txtFname.Text);
                    }
                    if ((FileUpload4.PostedFile != null) && (FileUpload4.PostedFile.ContentLength > 0))
                    {
                        string fn4 = dalclass.InsertImage("\\Admin\\" + "\\Model\\", 8) + ".jpg";
                        string SaveLocation4 = Server.MapPath("\\Admin\\" + "\\Model\\" + fn4);
                        FileUpload4.PostedFile.SaveAs(SaveLocation4 );
                        dalclass.ItemSliderInsert(ModelId, fn4, txtFname.Text, "HIMSIndia" + txtFname.Text);
                    }
                    if ((FileUpload5.PostedFile != null) && (FileUpload5.PostedFile.ContentLength > 0))
                    {
                        string fn5 = dalclass.InsertImage("\\Admin\\" + "\\Model\\", 8) + ".jpg";
                        string SaveLocation5 = Server.MapPath("\\Admin\\" + "\\Model\\" + fn5);
                        FileUpload5.PostedFile.SaveAs(SaveLocation5 );
                        dalclass.ItemSliderInsert(ModelId, fn5, txtFname.Text, "HIMSIndia" + txtFname.Text);

                        
                    }
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                              "alert('Successfully Updated your Information. Thanks for Choosing us'); window.location='" + "/';", true);

                }
                else
                {

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                              "alert('Failed to Insert.'); window.location='" + "/Apply';", true);
                }
            }
            catch(Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
        
        }


     }
}