using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace DecoratinComplete
{
    public partial class LoginOrderSuccess : System.Web.UI.Page
    {

        DAL.FrontEnd dalclass = new DAL.FrontEnd();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {

                    if (Session["OrderID"] == null)
                    {
                        Response.Redirect("/", false);
                    }

                    int OrderID = Convert.ToInt32(Session["OrderID"]);
                    tdOrderId.InnerText = "#" + OrderID;

                    ArrayList OrderData = dalclass.getOrderData(OrderID);


                    tdSubtotal.InnerText = "$" + OrderData[1].ToString();
                    tdtotal.InnerText = "$" + OrderData[2].ToString();
                    PAddress.InnerText = OrderData[0].ToString();
                    
                    tdPurchasedItem.InnerText = "Purchased Item" + "("  + OrderData[4].ToString() + ")";

                    tdtotalPrice.InnerText = "$" + OrderData[2].ToString();
                }


            }
            catch
            {

            }
        }
    }
}