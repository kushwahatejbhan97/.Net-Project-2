using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimsIndia.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {

        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String ModelCount = dalclass.Modelcount();

                lblmodels.Text = ModelCount;

                String ArtisrCount = dalclass.ArtisrCount();
                lblArtist.Text = ArtisrCount;
                String Clientcount = dalclass.Clientcount();
                lblclients.Text = Clientcount;
               
            }
            catch
            {
                lblmodels.Text = "0";
                lblArtist.Text = "0";
                lblclients.Text = "0";
               
            }
        }
    }
}