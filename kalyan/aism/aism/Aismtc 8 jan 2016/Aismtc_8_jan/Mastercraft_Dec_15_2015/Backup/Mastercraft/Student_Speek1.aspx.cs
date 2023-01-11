using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mastercraft
{
    public partial class Student_Speek1 : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
              Label1.Text = dalclass.text_finder(49);
            //    Label2.Text = dalclass.text_finder(50);
            //    Label3.Text = dalclass.text_finder(51);
            //    Label4.Text = dalclass.text_finder(52);
            //    Label5.Text = dalclass.text_finder(53);
            //    Label6.Text = dalclass.text_finder(54);
            //    Label7.Text = dalclass.text_finder(55);
            //    Label8.Text = dalclass.text_finder(56);
            //    Label9.Text = dalclass.text_finder(57);
            //    Label10.Text = dalclass.text_finder(58);
            //    Label11.Text = dalclass.text_finder(59);
            //    Label12.Text = dalclass.text_finder(60);
            //    Label13.Text = dalclass.text_finder(61);
            //    Label14.Text = dalclass.text_finder(62);
            //    Label15.Text = dalclass.text_finder(63);
            //    Label16.Text = dalclass.text_finder(64);
            //    Label17.Text = dalclass.text_finder(65);
            //    Label18.Text = dalclass.text_finder(66);
            //    Label19.Text = dalclass.text_finder(67);
            //    Label20.Text = dalclass.text_finder(68);
            //    Label21.Text = dalclass.text_finder(69);
            //    Label22.Text = dalclass.text_finder(70);
            //    Label23.Text = dalclass.text_finder(71);

            }
            catch
            {
            }
        }
    }
}