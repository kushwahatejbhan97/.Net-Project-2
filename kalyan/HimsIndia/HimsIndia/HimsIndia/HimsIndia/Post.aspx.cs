using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimsIndia
{
    public partial class Post : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string firstname = txtFname.Text;
                string lastname = txtLname.Text;
                string email = txtemail.Text;
                string phone = txtphone.Text;
                string country = txtcountry.Text;
                string city = txtcity.Text;
                string address = txtaddress.Text;
                string position = txtposition.Text;
                string skills = txtskills.Text;
                int Id = dalclass.PostJob(firstname, lastname, email, phone, country, city, address, position, skills);
                //DivRegistration.Visible = false;
                //DivPersonalInfo.Visible = true;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                          "alert('Successfully Inserted.'); window.location='" + "Post.aspx';", true);


            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
        }



    }




}