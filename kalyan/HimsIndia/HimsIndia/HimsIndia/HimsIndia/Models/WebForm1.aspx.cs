using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimsIndia.Models
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                try
                {
                    int ModelId = int.Parse(Request.QueryString["ModelId"]);

                    if (ModelId != 0)
                    {

                        DataTable Applications = dalclass.SearchModel();
                       
                    }
                }
                catch
                {
                }

            }
        }
    }
}