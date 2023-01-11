using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit.Admin
{
    public partial class Add_Category_Kayword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            try
            {

                DropDownList ddl = DetailsView1.FindControl("DropDownList1") as DropDownList;
                SqlDataSource1.InsertParameters.Add("Catid", ddl.SelectedValue.ToString());


            }
            catch { }
        }

        protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            try
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
               "alert('added Successfully!'); window.location='" + "Add-Category-Kayword.aspx';", true);
            }
            catch
            {
                string display = "Something Went Wrong ! Please Try Again";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
        }
    }
}