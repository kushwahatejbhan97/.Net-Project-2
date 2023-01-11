using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class OrderDetailsDelete : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
            }
            catch
            {

            }
        }

        protected void ActionCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                string[] Details = new string[2];
                
                int OrderDetailsId = int.Parse(e.CommandArgument.ToString());

                int rowUpdated = dalclass.UpdateOrderItem(OrderDetailsId);
                SqlDataSource1.DataBind();
                GridView1.DataBind();
                SqlDataSource2.DataBind();
                GridView2.DataBind();
            }
            catch
            {

            }
        }
    }
}