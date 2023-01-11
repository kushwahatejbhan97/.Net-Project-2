using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit.Account
{
    public partial class edit_listing_details : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    CheckBoxList1.DataBind();
                    String selectedtag = dalclass.get_company_selected_tags(Int32.Parse(Session["CompId"].ToString()));
                    string[] tokens = selectedtag.Split(',');



                    for (int i = 0; i <= CheckBoxList1.Items.Count; i++)
                    {

                        int count = CheckBoxList1.Items.Count;
                        for (int x = 0; x < tokens.Length; x++)
                        {
                            String name = CheckBoxList1.Items[i].ToString();
                            if (CheckBoxList1.Items[i].ToString() == tokens[x].ToString())
                            {

                                CheckBoxList1.Items[i].Selected = true;

                            }


                        }
                    }
                }
            }
            catch { }

            try
            {
                if (!Page.IsPostBack)
                {
                    CheckBoxList2.DataBind();
                    String selectedtag = dalclass.get_company_selected_keyword(Int32.Parse(Session["CompId"].ToString()));
                    string[] tokens = selectedtag.Split(',');

                    for (int i = 0; i < CheckBoxList2.Items.Count; i++)
                    {

                        int count = CheckBoxList2.Items.Count;
                        for (int x = 0; x < tokens.Length; x++)
                        {
                            String name = CheckBoxList2.Items[i].ToString();
                            if (CheckBoxList2.Items[i].ToString() == tokens[x].ToString())
                            {

                                CheckBoxList2.Items[i].Selected = true;

                            }


                        }
                    }
                }
            }
            catch { }
        }

        protected void btnaddlistingsite_Click(object sender, EventArgs e)
        {

            try
            {


                //int id = dalclass.Addlisting_from_site_tbl(0, txtcompanyname.Text, txtownername.Text, txtYearstablis.Text, txtmobileNo.Text, txtLandlineno.Text, txtemailid.Text, txtwebsite.Text, txtlocation.Text, txtfulladdress.Text, txtCity.Text, txtmap.Text, DateTime.Now.ToShortDateString(), "", 0, "", "123456");
                //string compname = txtcompanyname.Text;
                //string complocation = txtlocation.Text;
                //string compcity = txtCity.Text;



                //List<String> YrStrList = new List<string>();

                //foreach (ListItem item in CheckBoxList1.Items)
                //{
                //    if (item.Selected)
                //    { YrStrList.Add(item.Text); }
                //}
                //String YrStr = String.Join(",", YrStrList.ToArray());


                //List<String> catKeywordStrList = new List<string>();

                //foreach (ListItem item in CheckBoxList2.Items)
                //{
                //    if (item.Selected)
                //    { catKeywordStrList.Add(item.Text); }
                //}
                //String KeyStr = String.Join(",", catKeywordStrList.ToArray());


                //string compkeyword = KeyStr + "," + YrStr + "," + compname + "," + complocation + "," + compcity;
                //string compurl = compname + " " + complocation + " " + compcity;
                //compurl = compurl.Replace(" ", "-");

                //dalclass.update_comp_key_url_catid(Int32.Parse(DropDownList2.SelectedValue.ToString()), compkeyword, compurl, id);
                //dalclass.Company_listing_Keyword_tbl(id, KeyStr);

                //dalclass.Company_tags_table(id, YrStr);

               

                //if (id > 0)
                //{
                //    Response.Redirect("list-add-successfully.aspx");
                //}
            }
            catch
            {
                string display = "Something Went Wrong ! Please Try Again";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
        }
    }
}