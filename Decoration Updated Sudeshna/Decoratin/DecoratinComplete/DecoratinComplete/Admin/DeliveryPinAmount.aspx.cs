using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class DeliveryPinAmount : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDeliveryPinAmount_Click(object sender, EventArgs e)
        {
            try
            {
                int PinCode = int.Parse(txtPin.Text);
                String area = txtArea.Text;

                int PinId = dalclass.insertPinAmount(PinCode, area);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Successfully Inserted.'); window.location='" + "DeliveryPinAmount.aspx';", true);
            }
            catch
            {

            }
        }
    }
}