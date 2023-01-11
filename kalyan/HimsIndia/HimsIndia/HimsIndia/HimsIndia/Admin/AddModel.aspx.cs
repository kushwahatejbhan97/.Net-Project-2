using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;

namespace HimsIndia.Admin
{
    public partial class AddModel : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                try
                {
                String MobileNub = txtphone.Text.Trim();
                    if(MobileNub != "")
                    { 
                  
                        DataTable Applications = dalclass.SearchModel();
                        SqlDataSource1.SelectCommand = "SELECT [FirstName], [LastName], [Email], [Phone], [Gender], [ModelId], [Image1] FROM [Applications] Where [Phone]='" + MobileNub + "'";
                        SqlDataSource1.DataBind();
                       GridView11.DataBind();
                    }
                else
                {

                    DataTable Applications = dalclass.SearchModel();
                    SqlDataSource1.SelectCommand = "SELECT [FirstName], [LastName], [Email], [Phone], [Gender], [ModelId], [Image1] FROM [Applications] ";
                    SqlDataSource1.DataBind();
                    GridView11.DataBind();
                }
            }
                catch
                { }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
    }
}