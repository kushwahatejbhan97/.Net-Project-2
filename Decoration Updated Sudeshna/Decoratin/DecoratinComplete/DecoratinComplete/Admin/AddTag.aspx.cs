using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class AddTag : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmitTag_Click(object sender, EventArgs e)
        {
            try
            {
                int CatId = int.Parse(DrpCategory.SelectedValue);
                
                String TagName = FirstCharToUpper(txtTagName.Text.Trim());
                String URL = txtTagURL.Text;

                int TagId = dalclass.insertTagDetails(CatId, TagName, URL);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Inserted.'); window.location='" + "AddTag.aspx';", true);
            }
            catch
            {

            }
        }

        private string FirstCharToUpper(string input)
        {
            input = input.Trim();
            string formatedString = "";

            string[] tokens = input.Split(' ');
            for (int i = 0; i < tokens.Length; i++)
            {
                string a = tokens[i].First().ToString().ToUpper();
                string b = tokens[i].ToLower();
                formatedString += a + String.Join("", b.Skip(1));
                formatedString += " ";
            }



            return formatedString.Trim();

        }

        protected void txtCatName_TextChanged(object sender, EventArgs e)
        {
            try
            {
                string TagName = txtTagName.Text.Trim().ToLower();
                String Url = TagName.Replace(" & ", " ");
                Url = Url.Replace("+", " ");
                Url = Url.Replace("&", " ");
                Url = Url.Replace("/", " ");
                Url = Url.Replace("(", " ");
                Url = Url.Replace(")", " ");
                Url = Url.Replace(",", "");
                Url = Url.Replace("|", "");
                Url = Url.Replace("   ", " ");
                Url = Url.Replace("  ", " ").Trim();
                Url = Url.Replace(" ", "-");
                Url = Url.Replace("---", "-");
                Url = Url.Replace("--", "-");
                txtTagURL.Text = Url;
            }
            catch
            {

            }
        }
    }
}