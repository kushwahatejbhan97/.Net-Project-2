using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class category : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmitCat_Click(object sender, EventArgs e)
        {
            try
            {
                String input = FirstCharToUpper(txtCatName.Text.Trim());
                String URL = TxtUrl.Text;
                String title = txttitle.Text;
                string description = txtdescription.Text;
                string keyword = txtkeyword.Text;
                int CatId = dalclass.insertCategory(input, URL, title, description, keyword);

                if (CatId > 0)
                {
                    string fn1 = dalclass.InsertImage("\\Category\\Desktop\\", 2);
                    string fn2 = dalclass.InsertImage("\\Category\\Mobile\\", 1);
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Category\\" + "\\Desktop\\" + fn1;
                    string SaveLocation1 = Server.MapPath("~/Admin") + "\\Category\\" + "\\Mobile\\" + fn2;


                    if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                    {
                        FileUpload1.PostedFile.SaveAs(SaveLocation + ".jpg");
                        //var image = System.Drawing.Image.FromFile(@SaveLocation + ".jpg");
                        dalclass.UpdateCatDeskImg(fn1, CatId);
                        dalclass.UpdateUrl(fn1);

                        if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
                        {
                            FileUpload2.PostedFile.SaveAs(SaveLocation1 + ".jpg");
                            var image1 = System.Drawing.Image.FromFile(@SaveLocation1 + ".jpg");
                            dalclass.UpdateCatMblImg(fn2, CatId);
                            dalclass.UpdateUrl(fn2);



                            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Inserted.'); window.location='" + "category.aspx';", true);

                        }
                        else
                        {
                        }
                    }
                    else
                    {
                    }
                }
                else
                {
                }




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
                string CatName = txtCatName.Text.Trim().ToLower();
                String Url = CatName.Replace(" & ", " ");
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
                TxtUrl.Text = Url;
            }
            catch
            {

            }
        }
    }
}