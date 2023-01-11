using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DecoratinComplete
{
    public partial class MySettings : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            { 
                if(!IsPostBack)
                {
                    DataTable TabDataSource = dalclass.TabDataFill();
                    DrpTab1.DataSource = TabDataSource;
                    DrpTab2.DataSource = TabDataSource;
                    DrpTab3.DataSource = TabDataSource;
                    DrpTab4.DataSource = TabDataSource;
                    DrpTab1.DataBind();
                    DrpTab2.DataBind();
                    DrpTab3.DataBind();
                    DrpTab4.DataBind();
                    ArrayList Tabdata = dalclass.getTabData();

                    int CatId1 = int.Parse(Tabdata[0].ToString());

                    int CatId2 = int.Parse(Tabdata[2].ToString());

                    int CatId3 = int.Parse(Tabdata[4].ToString());

                    int CatId4 = int.Parse(Tabdata[6].ToString());


                    DrpTab1.SelectedValue = CatId1.ToString();
                    DrpTab2.SelectedValue = CatId2.ToString();
                    DrpTab3.SelectedValue = CatId3.ToString();
                    DrpTab4.SelectedValue = CatId4.ToString();
                }
             


            }
            catch
            {

            }
        }

        protected void btnSubmitProductSize_Click(object sender, EventArgs e)
        {
            try
            {
                int CatId1 = Convert.ToInt32(DrpTab1.SelectedValue);
                String CatName1 = DrpTab1.SelectedItem.ToString();
                int CatId2 = Convert.ToInt32(DrpTab2.SelectedValue);
                String CatName2 = DrpTab2.SelectedItem.ToString();
                int CatId3 = Convert.ToInt32(DrpTab3.SelectedValue);
                String CatName3 = DrpTab3.SelectedItem.ToString();
                int CatId4 = Convert.ToInt32(DrpTab4.SelectedValue);
                String CatName4 = DrpTab4.SelectedItem.ToString();


              int rowsUpdated =   dalclass.UpdateTabData(CatId1, CatName1, CatId2, CatName2, CatId3, CatName3, CatId4, CatName4);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                  "alert('Successfully Update'); window.location='" + "MySettings.aspx';", true);

            }
            catch
            {

            }
        }
    }
}