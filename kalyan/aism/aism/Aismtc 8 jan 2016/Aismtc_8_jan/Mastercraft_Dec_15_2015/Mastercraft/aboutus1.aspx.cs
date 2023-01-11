using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mastercraft
{
    public partial class aboutus1 : System.Web.UI.Page
    {

        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = dalclass.text_finder(19);
                Label2.Text = dalclass.text_finder(37);
            }
            catch
            {
            }
        }
    }
}