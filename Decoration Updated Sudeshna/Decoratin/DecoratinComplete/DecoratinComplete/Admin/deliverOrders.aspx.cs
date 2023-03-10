using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class deliverOrders : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    int Status = 4;
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
            int Status = 5;
            int orderId = int.Parse(txtOrderID.Text);
            DataTable OrderTable = dalclass.OrderDataFillByOrderId(Status, orderId);
            GridView1.DataSource = OrderTable;
            GridView1.DataBind();
        }

        protected void ActionCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "MyCancel")
                {
                    int OrderId = int.Parse(e.CommandArgument.ToString());
                    int Status = 0;
                    String StatusText = "Cancelled";
                    dalclass.UpdateOrderStatus(OrderId, Status, StatusText);
                    Response.Redirect("Cancelled.aspx", false);
                }
                else
                {
                    int OrderId = int.Parse(e.CommandArgument.ToString());
                    int Status = 5;
                    String StatusText = "Delivered";
                    dalclass.UpdateOrderStatus(OrderId, Status, StatusText);
                    Response.Redirect("deliverOrders.aspx", false);
                }
            }
            catch
            {

            }
        }
    }
}