using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class deliveredOrders : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    int Status = 5;
                    DataTable OrderTable = dalclass.OrderDataFill(Status);
                    GridView1.DataSource = OrderTable;
                    GridView1.DataBind();

                }
                catch
                {

                }
            }
        }

        protected void btnBookedOrders_Click(object sender, EventArgs e)
        {

        }

        
    }
}