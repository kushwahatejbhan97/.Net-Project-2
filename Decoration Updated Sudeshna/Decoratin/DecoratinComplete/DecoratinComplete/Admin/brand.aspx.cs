using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class brand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            try
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Successfully Inserted.'); window.location='" + "Brand.aspx';", true);
            }
            catch
            {

            }
        }
    }
}