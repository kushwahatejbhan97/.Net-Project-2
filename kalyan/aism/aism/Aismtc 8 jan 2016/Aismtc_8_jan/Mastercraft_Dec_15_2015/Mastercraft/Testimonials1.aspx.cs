using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mastercraft
{
    public partial class Testimonials1 : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Label1.Text = dalclass.text_finder(33);
                //Label2.Text = dalclass.text_finder(34);
                //Label3.Text = dalclass.text_finder(35);
                //Label4.Text = dalclass.text_finder(36);
                //Label5.Text = dalclass.text_finder(48);
            }
            catch
            {
            }
        }
    }
}