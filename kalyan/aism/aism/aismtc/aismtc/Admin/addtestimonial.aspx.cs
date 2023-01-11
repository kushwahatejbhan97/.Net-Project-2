using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aismtc.Admin
{
    public partial class addtestimonial : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                string pagename = txtpagename.Text;
                string writer = txtwriter.Text;
                string text = txttext.Text;

                dalclass.Testimonial(pagename, writer, text);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                              "alert('Successfully Inserted.'); window.location='" + "addtestimonial.aspx';", true);

            }
            catch(Exception ex)
            {
                String msg;
                msg = ex.Message;
            }
        }
    }
}