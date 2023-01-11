using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aismtc.Admin
{
    public partial class allumuni : System.Web.UI.Page
    {

        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                string Certificate = txtcertificate.Text;
                string Name = txtName.Text;
                string FatherName = txtfname.Text;
                string CourceName = txtcource.Text;
                string Grade = Txtgrade.Text;
                string Duration = txtcomplte.Text;

                dalclass.AddCertificate(Certificate, Name, FatherName, CourceName, Grade, Duration);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                               "alert('Successfully Inserted.'); window.location='" + "allumuni.aspx';", true);
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Successfully Inserted.');", true);

            }
            catch (Exception ex)
            {
                String msg;
                msg = ex.Message;
            }
        }
    }
}