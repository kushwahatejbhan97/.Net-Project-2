using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimsIndia.Arist
{
    public partial class ArtistInfo : System.Web.UI.Page
    {

        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int OthersId = int.Parse(Request.QueryString["OthersId"]);

                if (OthersId != 0)
                {

                    DataTable Artist = dalclass.SearchArtistById(OthersId);
                    Repeater1.DataSource = Artist;
                    Repeater1.DataBind();
                    Repeater2.DataSource = Artist;
                    Repeater2.DataBind();
                   
                   
                }
            }
            catch
            {
            }
        }
    }
}