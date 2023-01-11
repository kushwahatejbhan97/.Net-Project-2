using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    
    public partial class BookedOrders : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    int Status = 1;
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
            try
            {
                int Status = 2;
                int orderId = int.Parse(txtOrderID.Text);
                DataTable OrderTable = dalclass.OrderDataFillByOrderId(Status, orderId );
                GridView1.DataSource = OrderTable;
                GridView1.DataBind();

            }
            catch
            {

            }
        }

        protected void ActionCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if(e.CommandName == "MyCancel")
                {
                    int OrderId = int.Parse(e.CommandArgument.ToString());
                    int Status = 0;
                    String StatusText = "Cancelled";
                    dalclass.UpdateOrderStatus(OrderId, Status, StatusText);
                    Response.Redirect("BookedOrders.aspx", false);
                }
                else
                {
                    int OrderId = int.Parse(e.CommandArgument.ToString());
                    int Status = 2;
                    String StatusText = "Processing";
                    dalclass.UpdateOrderStatus(OrderId, Status, StatusText);
                    Response.Redirect("BookedOrders.aspx", false);
                }
            }
            catch
            {

            }
        }
    }
}