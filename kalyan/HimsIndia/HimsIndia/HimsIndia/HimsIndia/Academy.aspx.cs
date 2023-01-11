using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimsIndia
{
    public partial class Academy : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit(object sender, EventArgs e)
        {
            try
            {
                string name = txtName.Text;
                string email = txtemail.Text;
                string message = txtmessage.Text;
                string phone = txtmobile.Text;
                dalclass.contact(name, email, message, phone);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                             "alert('Successfully Updated your Information.'); window.location='" + "Academy.aspx';", true);
            }
            catch(Exception ex)
            {
                string msg;
                msg = ex.Message;
            }



        }



    }
}