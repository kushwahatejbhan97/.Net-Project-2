using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class EditProductSize : System.Web.UI.Page
    {


        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnSubmitEditProductSize_Click(object sender, EventArgs e)
        {
            try
            {
                int ProductSizeId = int.Parse(drpPsize.SelectedValue);
                String dimensions = txtDimensions.Text;
                String weight = txtWeight.Text;
                int stock = int.Parse(txtStock.Text);
                Boolean statusPSize = ChkStatusPSize.Checked;
                float MRP = float.Parse(txtMRP.Text);
                float price = float.Parse(txtPrice.Text);
                int discount = Convert.ToInt32(Math.Round((MRP - price) * 100 / MRP)); ;
                int minquantity = int.Parse(txtMinQuantity.Text);
                String productSizeLbl = drpProductSizelbl.SelectedItem.ToString();
                String ProductSizeCode = txtProductSizeCode.Text;


                dalclass.UpdateEditProductSizeData(ProductSizeId, dimensions, weight, stock, statusPSize, MRP, price, minquantity, ProductSizeCode);

                int ProductId = int.Parse(drpProduct.SelectedValue);

                dalclass.updateProductbyProductSize(ProductId, ProductSizeId, dimensions, weight, stock, discount, statusPSize, MRP, price, minquantity, productSizeLbl, ProductSizeCode);  // update  product table where ProductId = ProductId

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

                }
                if ((fileMobile.PostedFile != null) && (fileMobile.PostedFile.ContentLength > 0))
                {
                    fileMobile.PostedFile.SaveAs(SaveLocation1 + ".jpg");

                    dalclass.UpdateProductTableMblImg(fn2, ProductId);
                    dalclass.UpdateProductSizeTableMblImg(fn2, ProductSizeId);
                }

                if ((fileSlider.PostedFile != null) && (fileSlider.PostedFile.ContentLength > 0))
                {

                    fileSlider.PostedFile.SaveAs(SaveLocation2 + ".jpg");

                    dalclass.UpdateProductTableSlider(fn3, ProductId);
                    dalclass.UpdateProductSizeTableSlider(fn3, ProductSizeId);

                }



                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                               "alert('Successfully Inserted.'); window.location='" + "EditProductSize.aspx';", true);
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
                    drpProduct.DataBind();
                    SqlDataSource2.DataBind();
                    drpPsize.DataBind();
                }
                else if (mySender.ID == "drpProduct")
                {
                    SqlDataSource2.DataBind();
                    drpPsize.DataBind();
                }

                int ProductSizeId = Convert.ToInt32(drpPsize.SelectedValue);

                ArrayList al = dalclass.getProductSizeTableData(ProductSizeId);

                //Dimensions, Weight, Stock, Status, MRP, Price

                txtDimensions.Text = al[0].ToString();
                txtWeight.Text = al[1].ToString();
                txtStock.Text = al[2].ToString();
                ChkStatusPSize.Checked = Boolean.Parse(al[3].ToString());
                txtMRP.Text = al[4].ToString();
                txtPrice.Text = al[5].ToString();
                txtMinQuantity.Text = al[6].ToString();
                
                //Discount, ProductSizeLabel, ProductSizeImgMbl, ProductSizeImgDesk, ProductSizeSlider
                drpProductSizelbl.Text = al[9].ToString();
                Image1.ImageUrl = "/Admin/Product/Desktop/" + al[11].ToString();
                Image2.ImageUrl = "/Admin/Product/Mobile/" + al[10].ToString();
                Image3.ImageUrl = "/Admin/Product/Slider/" + al[12].ToString();
                txtProductSizeCode.Text = al[13].ToString();


            }
            catch (Exception ex)
            {

            }

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            try
            {
                int ProductSizeId = int.Parse(drpPsize.SelectedValue);
                dalclass.deletedata(ProductSizeId);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                 "alert('Deleted Successfully.'); window.location='" + "EditProductSize.aspx';", true);
            }
            catch
            {

            }

        }
    }
}