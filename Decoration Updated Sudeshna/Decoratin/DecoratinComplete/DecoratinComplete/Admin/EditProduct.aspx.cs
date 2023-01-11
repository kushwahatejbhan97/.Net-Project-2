using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class EditProduct : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int ProductId = Convert.ToInt32(DropDownList2.SelectedValue);

                String DrpProductName = DropDownList2.SelectedItem.ToString();
                ArrayList al = dalclass.getProductData(ProductId);
                // Type, Theme, SuitableFor, Trending, Offers, Recommends, Status

                txtProductName.Text = al[0].ToString();
                try
                {
                    drpBrand.Text = al[1].ToString();
                }
                catch
                {

                }

                txtKeyword.Text = al[2].ToString();
                txtDetails.Text = al[3].ToString();
                try
                {
                    drpCategory.SelectedValue = al[4].ToString();
                    SqlDbTags.DataBind();
                    CheckBoxListtag.DataBind();
                }
                catch
                {

                }

                txtColor.Text = al[5].ToString();
                txtMaterial.Text = al[6].ToString();
                txtType.Text = al[7].ToString();
                txtTheme.Text = al[8].ToString();
                txtSuitable.Text = al[9].ToString();
                ChkTrending.Checked = Convert.ToBoolean(al[10]);
                chkOffers.Checked = Boolean.Parse(al[11].ToString());
                chkRecommends.Checked = Convert.ToBoolean(al[12]);
                try
                {
                    chkStatus.Checked = Convert.ToBoolean(al[13]);
                }
                catch
                {

                }
               





            }
            catch
            {

            }


        }

        protected void btnSubmitEditProduct_Click(object sender, EventArgs e)
        {
            try
            {
                int ProductId = int.Parse(DropDownList2.SelectedValue);
                String ProductName = FirstCharToUpper(txtProductName.Text.Trim());
                String brandName = drpBrand.SelectedItem.ToString();
                String keywords = txtKeyword.Text;
                String details = txtDetails.Text;
                int CatId = int.Parse(drpCategory.SelectedValue);
                String catname = drpCategory.SelectedItem.ToString();
                String color = txtColor.Text;
                String material = txtMaterial.Text;
                String type = txtType.Text;
                String theme = txtTheme.Text;
                String suitableFor = txtSuitable.Text;
                Boolean trending = ChkTrending.Checked;
                Boolean offers = chkOffers.Checked;
                Boolean recommends = chkRecommends.Checked;
                Boolean status = chkStatus.Checked;
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


                dalclass.UpdateProductData(ProductId, ProductName, brandName, keywords, details, CatId, catname, color, material, type, theme, suitableFor, trending, offers, recommends, status, Tags);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Update Primary'); window.location='" + "EditProduct.aspx';", true);

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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                int Productid = int.Parse(DropDownList2.SelectedValue);
                dalclass.deletedatabyProduct(Productid);
                dalclass.deleteProductSizebyProductid(Productid);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                 "alert('Deleted Successfully.'); window.location='" + "EditProduct.aspx';", true);
            }
            catch
            {

            }
        }

        protected void btnUpdatePrimary_Click(object sender, EventArgs e)
        {

            try
            {
                int ProductId = int.Parse(DropDownList21.SelectedValue);
                int ProductSizeId = int.Parse(drpPsizeUpdate.SelectedValue);
                ArrayList al = dalclass.getProductSizeTableData(ProductSizeId);
                string Dimensions = al[0].ToString();
                string Weight = al[1].ToString();
                string Stock = al[2].ToString();
                Boolean StatusPSize = Boolean.Parse(al[3].ToString());
                string MRP = al[4].ToString();
                string Price = al[5].ToString();
                string MinQuantity = al[6].ToString();
                int StocktoDispatch = int.Parse(al[7].ToString());
                int Discount = int.Parse(al[8].ToString());
                string ProductSizeLabel = al[9].ToString();
                string ProductSizeImgMbl = al[10].ToString();
                string ProductSizeImgDesk = al[11].ToString();
                string ProductSizeSlider = al[12].ToString();

                dalclass.updateProductbyProductSizeMakeItPrimarynew(ProductId, ProductSizeId, Dimensions, Weight, Stock, StatusPSize, MRP, Price, MinQuantity, StocktoDispatch, Discount, ProductSizeLabel, ProductSizeImgMbl, ProductSizeImgDesk, ProductSizeSlider);


                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Update Primary'); window.location='" + "EditProduct.aspx';", true);
            }
            catch
            {

            }
            



            
        }

        protected void drpPsize_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                DropDownList mySender = (DropDownList)sender;
                if (mySender.ID == "drpcategory")
                {
                    SqlDataSource1.DataBind();
                    DropDownList21.DataBind();
                    SqlDataSource2.DataBind();
                    drpPsizeUpdate.DataBind();
                    SqlDbTags.DataBind();
                    CheckBoxListtag.DataBind();

                }
                else if (mySender.ID == "drpProduct")
                {
                    SqlDataSource2.DataBind();
                    drpPsizeUpdate.DataBind();
                }

                int ProductSizeId = Convert.ToInt32(drpPsizeUpdate.SelectedValue);

                ArrayList al = dalclass.getProductSizeTableData(ProductSizeId);

                

                string Dimensions = al[0].ToString();
                string Weight = al[1].ToString();
                string Stock = al[2].ToString();
                Boolean StatusPSize = Boolean.Parse(al[3].ToString());
                string MRP = al[4].ToString();
                string Price = al[5].ToString();
                string MinQuantity = al[6].ToString();
                int StocktoDispatch = int.Parse(al[7].ToString());
                int Discount = int.Parse(al[8].ToString());
                string ProductSizeLabel = al[9].ToString();
                string ProductSizeImgMbl = al[10].ToString();
                string ProductSizeImgDesk = al[11].ToString();
                string ProductSizeSlider = al[12].ToString();




            }
            catch (Exception ex)
            {

            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource4.DataBind();
                DropDownList2.DataBind();
                DropDownList2_SelectedIndexChanged(sender, e);

            }
            catch
            {

            }
        }
    }
}