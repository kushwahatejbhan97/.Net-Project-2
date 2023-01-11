using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using AjaxControlToolkit;
using System.Configuration;
using System.Data.SqlClient;

namespace LocalPandit.Admin
{
    /// <summary>
    /// Summary description for City
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class City : System.Web.Services.WebService
    {

        [WebMethod]
        public CascadingDropDownNameValue[] GetCity()
        {
            string query = string.Format("SELECT DISTINCT City_Name FROM AppSaloon_Saloon_City_State_table ORDER BY City_Name");
            List<CascadingDropDownNameValue> cityname = GetData(query);
            return cityname.ToArray();
        }

        private List<CascadingDropDownNameValue> GetData(string query)
        {
            string conString = ConfigurationManager.ConnectionStrings["PriyamarketingConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            List<CascadingDropDownNameValue> values = new List<CascadingDropDownNameValue>();
            using (SqlConnection con = new SqlConnection(conString))
            {
                con.Open();
                cmd.Connection = con;
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        values.Add(new CascadingDropDownNameValue
                        {
                            name = reader[0].ToString(),
                            value = reader[0].ToString()
                        });
                    }
                    reader.Close();
                    con.Close();
                    return values;
                }
            }
        }
    }
}
