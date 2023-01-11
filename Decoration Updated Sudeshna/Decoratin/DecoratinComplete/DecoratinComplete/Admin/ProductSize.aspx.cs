using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class ProductSize : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitProductSize_Click(object sender, EventArgs e)
        {

            try
            {
                int ProductId = int.Parse(drpProduct.SelectedValue);
                String dimensions = txtDimensions.Text;
                String weight = txtWeight.Text;
                int stock = int.Parse(txtStock.Text);
                int stocktoDispatch = 0;
                float MRP = float.Parse(txtMRP.Text);
                float price = float.Parse(txtPrice.Text);
                int discount = Convert.ToInt32(Math.Round((MRP - price) * 100 / MRP)); ;
                Boolean statusPSize = ChkStatusPSize.Checked;
                int minquantity = int.Parse(txtMinQuantity.Text);
                String productSizeLbl = drpProductSizelbl.SelectedItem.ToString();
                String ProductSizeCode = txtProductSizeCode.Text;

                int ProductSizeId = dalclass.insertProductSize(ProductId, dimensions, weight, stock, stocktoDispatch, discount, statusPSize, MRP, price, minquantity, productSizeLbl, ProductSizeCode);


                if (ProductSizeId > 0)
                {
                    string fn1 = dalclass.InsertImage("\\Product\\Desktop\\", 2);
                    string fn2 = dalclass.InsertImage("\\Product\\Mobile\\", 1);
                    string fn3 = dalclass.InsertImage("\\Product\\Slider\\", 3);
                    string SaveLocation = Server.MapPath("~/Admin") + "\\Product\\" + "\\Desktop\\" + fn1;
                    string SaveLocation1 = Server.MapPath("~/Admin") + "\\Product\\" + "\\Mobile\\" + fn2;
                    string SaveLocation2 = Server.MapPath("~/Admin") + "\\Product\\" + "\\Slider\\" + fn3;


                    if ((fileDesktop.PostedFile != null) && (fileDesktop.PostedFile.ContentLength > 0))
                    {
                        fileDesktop.PostedFile.SaveAs(SaveLocation + ".jpg");

                        dalclass.UpdateProductSizeTabeleCatDeskImg(fn1, ProductSizeId);


                        if ((fileMobile.PostedFile != null) && (fileMobile.PostedFile.ContentLength > 0))
                        {
                            fileMobile.PostedFile.SaveAs(SaveLocation1 + ".jpg");

                            dalclass.UpdateProductSizeTableMblImg(fn2, ProductSizeId);

                            if ((fileSlider.PostedFile != null) && (fileSlider.PostedFile.ContentLength > 0))
                            {

                                fileSlider.PostedFile.SaveAs(SaveLocation2 + ".jpg");

                                dalclass.UpdateProductSizeTableSlider(fn3, ProductSizeId);

                                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Inserted.'); window.location='" + "ProductSize.aspx';", true);
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
            }

            catch
            {

            }

        }

        protected void drpCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource2.DataBind();
                drpProduct.DataBind();
                SqlDataSource3.DataBind();
                GridView1.DataBind();
            }
            catch
            {

            }

            
        }
    }
}