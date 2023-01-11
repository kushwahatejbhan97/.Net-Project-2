using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aismtc.Admin
{
    public partial class Addnotice : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string Heading = txtheading.Text;
                string ID = txtid.Text;
                string Notice = txtnotice.Text;
                

                ArrayList al = dalclass.AddNotice(Heading,ID,Notice);
               
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                               "alert('Successfully Inserted.'); window.location='" + "Addnotice.aspx';", true);
            }
            catch (Exception ex)
            {
                String msg;
                msg = ex.Message;
            }
        }
    }
}