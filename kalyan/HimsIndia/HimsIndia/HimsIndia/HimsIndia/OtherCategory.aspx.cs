using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimsIndia
{
    public partial class OtherCategory : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void others(object sender, EventArgs e)
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

                int OthersId = dalclass.OtherApplications(Fname, Lname, Email, Phone, Country, City, Address, Profession, Gender, skills);
                if (OthersId > 0)
                {

                    string fn1 = dalclass.InsertImage("\\Admin\\" + "\\Artist\\", 8);
                   
                    string SaveLocation = Server.MapPath ("\\Admin\\" + "\\Artist\\" + fn1);
              
                    if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                    {
                        FileUpload1.PostedFile.SaveAs(SaveLocation + ".jpg");

                        dalclass.UpdateOtherImg(fn1, OthersId);


                        ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                  "alert('Successfully Inserted.'); window.location='" + "/Artist", true);


                    }
                   
                    else
                    {
                        
                    }

                }
            }
            
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }

        }
    }
}