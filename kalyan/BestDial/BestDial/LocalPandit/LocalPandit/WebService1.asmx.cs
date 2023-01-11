using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace SnaxBite_NewLook
{
    /// <summary>
    /// Summary description for AutoComplete
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
    [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        

        [WebMethod]
        public string[] AutoCompleteAjaxRequest3(string prefixText, int count, string contextKey)
        {
            List<string> ajaxDataCollection = new List<string>();
            DataTable _objdt = new DataTable();
            _objdt = GetDataFromDataBase1(prefixText);
            if (_objdt.Rows.Count > 0)
            {
                for (int i = 0; i < _objdt.Rows.Count; i++)
                {
                    ajaxDataCollection.Add(_objdt.Rows[i]["CompanyName"].ToString());
                }
            }
            return ajaxDataCollection.ToArray();
        }

        

        public DataTable GetDataFromDataBase1(string prefixText)
        {
            string connectionstring = "Data Source=Priyamarketing.db.10402097.hostedresource.com;Initial Catalog=Priyamarketing;Persist Security Info=True;User ID=Priyamarketing;Password=Nishant@1";
            DataTable dt = new DataTable();
            String querystring = "SELECT DISTINCT CompanyName FROM NewListing_Website_listing_tbl UNION ALL SELECT DISTINCT CategoryName FROM NewListing_Website_category_tbl UNION ALL SELECT DISTINCT Tags FROM NewListing_Website_tags_tbl UNION ALL SELECT DISTINCT Keywords FROM NewListing_Website_Cat_Keyword_tbl";
            SqlConnection con;
            con = new SqlConnection(connectionstring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(querystring, con);

            da.Fill(dt);

            return dt;
        }

        
    }
}
