using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimsIndia.Models
{
    public partial class Default : System.Web.UI.Page
    {

        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int ModelId = int.Parse(Request.QueryString["ModelId"]);

                if (ModelId != 0)
                {

                    DataTable Applications = dalclass.SearchModelById(ModelId);
                    Repeater1.DataSource = Applications;
                    Repeater1.DataBind();
                    Repeater2.DataSource = Applications;
                    Repeater2.DataBind();
                    DataTable Pics = dalclass.SearchModelImageById(ModelId);
                    Repeater3.DataSource = Pics;
                    Repeater3.DataBind();
                }
            }
            catch
            {
            }
        }
    }
}