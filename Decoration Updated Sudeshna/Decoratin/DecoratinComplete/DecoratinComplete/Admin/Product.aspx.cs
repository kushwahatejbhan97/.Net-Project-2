using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class Product : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitProduct_Click(object sender, EventArgs e)
        {
            try
            {
                String ProductName = FirstCharToUpper(txtProductName.Text.Trim());
                String Url = ProductName.Replace(" & ", " ");
                Url = Url.Replace("+", " ");
                Url = Url.Replace("'", "");
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

                String title = ProductName;
               
                String details = txtDetails.Text;
                String description = details;
                int CatId = int.Parse(drpCategory.SelectedValue);
                String catname = drpCategory.SelectedItem.ToString();
                String color = txtColor.Text;
                String type = txtType.Text;
                String material = txtMaterial.Text;
                String theme = txtTheme.Text;
                String suitableFor = txtSuitable.Text;
                float ratings = 5;
                String brandName = drpBrand.SelectedItem.ToString();
                Boolean trending = ChkTrending.Checked;
                Boolean offers = chkOffers.Checked;
                Boolean recommends = chkRecommends.Checked;
                Boolean status = chkStatus.Checked;
                int minquantity = int.Parse(txtMinQuantity.Text);
                String productSizeLbl = drpProductSizelbl.SelectedItem.ToString();
                String keywords = ProductName + " " + catname + " "+ description + " "+ txtKeyword.Text;
                string Tags = "";

                for (int i = 0; i < CheckBoxListtag.Items.Count; i++)
                {
                    if (CheckBoxListtag.Items[i].Selected == true)// getting selected value from CheckBox List  
                    {
                        Tags += CheckBoxListtag.Items[i].Value + " ,"; // add selected Item text to the String .  
                    }


                }

                for (int i = 0; i < CBGeneralList.Items.Count; i++)
                {
                    if (CBGeneralList.Items[i].Selected == true)// getting selected value from CheckBox List  
                    {
                        Tags += CBGeneralList.Items[i].Value + " ,"; // add selected Item text to the String .  
                    }
                }




                int ProductId = dalclass.insertProduct(ProductName, Url, title, keywords,
                    description, details, CatId, catname, color, type, material,
                    theme, suitableFor, ratings, brandName, trending,
                    offers, recommends, status, Tags);


                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                    "alert('Successfully Inserted.'); window.location='" + "Product.aspx';", true);


                if (ProductId > 0)
                {
                    //Product size......................
                    String dimensions = txtDimensions.Text;
                    String weight = txtWeight.Text;
                    int stock = int.Parse(txtStock.Text);
                    int stocktoDispatch = 0;
                    float MRP = float.Parse(txtMRP.Text);
                    float price = float.Parse(txtPrice.Text);
                    int discount = Convert.ToInt32(Math.Round((MRP - price) * 100 / MRP)); ;
                    Boolean statusPSize = ChkStatusPSize.Checked;
                    String ProductSizeCode = txtProductSizeCode.Text;
                    int ProductSizeId = dalclass.insertProductSize(ProductId, dimensions, weight, stock, stocktoDispatch, discount, statusPSize, MRP, price, minquantity, productSizeLbl, ProductSizeCode);

                    dalclass.updateProduct(ProductId, ProductSizeId, dimensions, weight, stock, stocktoDispatch, discount, statusPSize, MRP, price, minquantity, productSizeLbl, ProductSizeCode); // update  product table where ProductId = ProductId



                    string fn1 = dalclass.InsertImage("\\Product\\Desktop\\", 2);
                    string fn2 = dalclass.InsertImage("\\Product\\Mobile\\", 1);
                    string fn3 = dalclass.InsertImage("\\Product\\Slider\\", 3);
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Product\\" + "\\Desktop\\" + fn1;
                    string SaveLocation1 = Server.MapPath("~/Admin") + "\\Product\\" + "\\Mobile\\" + fn2;
                    string SaveLocation2 = Server.MapPath("~/Admin") + "\\Product\\" + "\\Slider\\" + fn3;


                    if ((fileDesktop.PostedFile != null) && (fileDesktop.PostedFile.ContentLength > 0))
                    {
                        fileDesktop.PostedFile.SaveAs(SaveLocation + ".jpg");

                        dalclass.UpdateProductTabeleCatDeskImg(fn1, ProductId);
                        dalclass.UpdateProductSizeTabeleCatDeskImg(fn1, ProductSizeId);


                        if ((fileMobile.PostedFile != null) && (fileMobile.PostedFile.ContentLength > 0))
                        {
                            fileMobile.PostedFile.SaveAs(SaveLocation1 + ".jpg");

                            dalclass.UpdateProductTableMblImg(fn2, ProductId);
                            dalclass.UpdateProductSizeTableMblImg(fn2, ProductSizeId);

                            if ((fileSlider.PostedFile != null) && (fileSlider.PostedFile.ContentLength > 0))
                            {

                                fileSlider.PostedFile.SaveAs(SaveLocation2 + ".jpg");

                                dalclass.UpdateProductTableSlider(fn3, ProductId);
                                dalclass.UpdateProductSizeTableSlider(fn3, ProductSizeId);
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Inserted.'); window.location='" + "Product.aspx';", true);
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
                else
                {
                }







           

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Inserted.'); window.location='" + "Product.aspx';", true);
            }

            catch
            {

            }

        }

        private string FirstCharToUpper(string ProductName)
        {
            ProductName = ProductName.Trim();
            string formatedString = "";

            string[] tokens = ProductName.Split(' ');
            for (int i = 0; i < tokens.Length; i++)
            {
                string a = tokens[i].First().ToString().ToUpper();
                string b = tokens[i].ToLower();
                formatedString += a + String.Join("", b.Skip(1));
                formatedString += " ";
            }



            return formatedString.Trim();
        }

        protected void BtnClearAll_Click(object sender, EventArgs e)
        {

        }
    }
}