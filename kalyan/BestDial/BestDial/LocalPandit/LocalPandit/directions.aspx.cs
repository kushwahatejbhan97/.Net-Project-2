using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace LocalPandit
{
    public partial class directions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!this.IsPostBack)
                {
                    int compid = Int32.Parse(Request.QueryString["CompId"].ToString());
                    DataTable dt = this.GetData("select City, Latitude, Longitude, CompanyName  from NewListing_Website_listing_tbl where CompanyId =" + compid + "");
                    rptMarkers.DataSource = dt;
                    rptMarkers.DataBind();
                }
            }
            catch { }
        }


        private DataTable GetData(string query)
        {
            string conString = ConfigurationManager.ConnectionStrings["BestdialConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;

                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }
}