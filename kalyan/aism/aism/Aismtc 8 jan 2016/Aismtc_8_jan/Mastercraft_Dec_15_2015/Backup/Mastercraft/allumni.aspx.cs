using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace Mastercraft
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            abc.Visible = false;
            certificate.Visible = false;
            try
            {
                Label2.Text = dalclass.text_finder(72);
                Label3.Text = dalclass.text_finder(73);

            }
            catch
            {
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                ArrayList details = new ArrayList();
                details = dalclass.find_stu_details((TextBox1.Text));
                Label1.Text =  details[0].ToString() ;
                Label4.Text = details[1].ToString();
                Label5.Text = details[2].ToString();
                Label6.Text = details[3].ToString();
                Label7.Text = details[4].ToString();
                Label8.Text = details[5].ToString();

                certificate.Visible = true;
            }
            catch
            {
            }
        }



    }
}