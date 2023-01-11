using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDeal.Admin
{
    public partial class Add_City : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignin_Click(object sender, EventArgs e)
        {
            try
            {
                String cityname = tb_city_name.Text;


                int Cityid = dalclass.CityInsert(cityname);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Inserted.'); window.location='" + "Add-City.aspx';", true);
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                
            }
        }
    }
}