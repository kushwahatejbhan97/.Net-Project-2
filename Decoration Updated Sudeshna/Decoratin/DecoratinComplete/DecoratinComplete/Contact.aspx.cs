using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete
{
    public partial class Contact : System.Web.UI.Page
    {
        DAL.FrontEnd dalclass = new DAL.FrontEnd();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("/search/" + txtsearch.Text, false);
            }
            catch
            {

            }
        }

        protected void BtnContact_Click(object sender, EventArgs e)
        {
            try
            {
                string username = txtname.Text;
                string email = txtemail.Text;
                string subject = txtsubject.Text;
                string usermsg = Textmsg.Text;

                int ContactUserId = dalclass.ContactInsert(username, email, subject, usermsg);
            }
            catch
            {

            }
        }

        //protected void BtnContact_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        string username = txtname.Text;
        //        string email = txtemail.Text;
        //        string subject = txtsubject.Text;
        //        string usermsg = Textmsg.Text;

            //        int ContactUserId= dalclass.ContactInsert(username, email, subject, usermsg);
            //    }
            //    catch
            //    {

            //    }
            //}
        }
}