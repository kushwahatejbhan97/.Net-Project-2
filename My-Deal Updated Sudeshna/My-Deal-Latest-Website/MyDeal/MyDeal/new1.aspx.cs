using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDeal
{
    public partial class new1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            int number = Convert.ToInt32(TextBox1.Text);


            if (number % 2 == 0)
            {
                Label1.Text = "Number is Even";
            }
            else
            {
                Label1.Text = "Number is ODD";
            }
        }
    }
}