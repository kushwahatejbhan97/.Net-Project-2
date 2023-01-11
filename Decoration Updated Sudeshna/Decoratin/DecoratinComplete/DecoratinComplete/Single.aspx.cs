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
    public partial class Single : System.Web.UI.Page
    {
        DAL.FrontEnd dalclass = new DAL.FrontEnd();

        protected void Page_Load(object sender, EventArgs e)
        {
            string urlredirect = "";
            try
            {

                if (!IsPostBack)
                {
                    string ProductUrl = Page.RouteData.Values["ProductUrl"].ToString();
                    urlredirect = "/productes/" + ProductUrl;
                    if (Session["ClientID"] != null)
                    {
                        Response.Redirect(urlredirect, false);
                    }

                    databindme();
                }
            }
            catch
            {
                
            }
        }

        
        protected void databindme()
        {
            try
            {
                DataTable cart = new DataTable();
                if (Session["Cart"] == null)
                {

                    cart.Columns.Add("ProductSizeId");
                    cart.Columns.Add("ProductId");
                    cart.Columns.Add("ProductName");
                    cart.Columns.Add("CatId");
                    cart.Columns.Add("Material");
                    cart.Columns.Add("Color");
                    cart.Columns.Add("Dimensions");
                    cart.Columns.Add("Stock");
                    cart.Columns.Add("MRP", typeof(float));
                    cart.Columns.Add("Price", typeof(float));
                    cart.Columns.Add("MinQuantity");
                    cart.Columns.Add("Discount");
                    cart.Columns.Add("ProductSizeImgMbl");
                    cart.Columns.Add("NoOfItems", typeof(int));
                    cart.Columns.Add("TotalMrp", typeof(float));
                    cart.Columns.Add("TotalPrice", typeof(float));

                    Session["Cart"] = cart;
                }
                cart = (DataTable)Session["Cart"];
                RepeaterCart.DataSource = cart;
                RepeaterCart.DataBind();
                lblGrossTotal.Text = cart.Compute("Sum(TotalPrice)", "").ToString();
                int CartProductCount = cart.Rows.Count;
                lblItemsCount.Text = CartProductCount.ToString();
                if (CartProductCount > 0)
                {
                    itemcart.Visible = true;
                    NoItemCart.Visible = false;
                }
                else
                {
                    itemcart.Visible = false;
                    NoItemCart.Visible = true;

                }

                try
                {
                    string Productname = Page.RouteData.Values["ProductUrl"].ToString();
                    HeadTitle.InnerText = Productname;
                    HeadsubTitle.InnerText = Productname;
                    ArrayList Productnamebedcrm = dalclass.getproductidbyproductName(Productname);
                    int Productid = Convert.ToInt32(Productname[0]);
                    int ProductSizeid = Convert.ToInt32(Productname[1]);
                    int catid = Convert.ToInt32(Productname[2]);




                    string ProductUrl = Page.RouteData.Values["ProductUrl"].ToString();
                    ArrayList Prodidnsizeid = dalclass.getproductidbyUrl(ProductUrl);
                    int ProductId = Convert.ToInt32 (Prodidnsizeid[0]);
                    int ProductSizeId = Convert.ToInt32(Prodidnsizeid[1]);
                    int catId = Convert.ToInt32(Prodidnsizeid[2]);


                    DataTable ProductData  = dalclass.ProductDataFillbyProductId(ProductId);

                    DataTable CategoryData = dalclass.ProductDataFillbycatagory(catId);





                    if (CartProductCount != 0)
                    {
                        foreach (DataRow row in cart.Rows)
                        {
                            int ProductSize = int.Parse(row["ProductSizeId"].ToString());

                            foreach (DataRow myrow in CategoryData.Rows)
                            {
                                int DbProductt1SizeId = int.Parse(myrow["ProductSizeId"].ToString());
                                if (ProductSize == DbProductt1SizeId)
                                {
                                    myrow["NotInCart"] = false;
                                    myrow["InCart"] = true;
                                    myrow["NoOfItems"] = row["NoOfItems"].ToString();

                                }
                            }




                        }

                    }

                    Repeaterproducttype1.DataSource = CategoryData;
                    Repeaterproducttype1.DataBind();

                    ArrayList ArrPrductData = dalclass.getproductdatabyproductId(ProductId);
                    Session["productname"] = ArrPrductData[0].ToString();
                    ProductName.InnerText = ArrPrductData[0].ToString() + "-"+ ArrPrductData[14].ToString();
                    Discount.InnerText = ArrPrductData[9].ToString() + "%";
                    if (ArrPrductData[9].ToString() == "0")
                    {
                        Discount.Visible = false;
                    }
                    ProductSizeLabel.InnerText = ArrPrductData[13].ToString();
                    Price.InnerHtml = "<span class='item_price' style='color: #fc636b;'>" + ArrPrductData[11].ToString() + "</span> <del>- " + ArrPrductData[10].ToString() + "</del>";
                    Price.Visible = false;

                    if (ArrPrductData[1].ToString()!="" && ArrPrductData[1].ToString().ToUpper() != "NA")
                    {
                        Color.InnerHtml = "Color :<span>" + ArrPrductData[1].ToString() + "</span>";
                        divColor.Visible = true;
                    }


                    if (ArrPrductData[2].ToString() != "" && ArrPrductData[2].ToString().ToUpper() != "NA")
                    {
                        Type.InnerHtml = "Type :<span>" + ArrPrductData[2].ToString() + "</span>";
                        divType.Visible = true;
                    }
                    if (ArrPrductData[3].ToString() != "" && ArrPrductData[3].ToString().ToUpper() != "NA")
                    {
                        Material.InnerHtml = "Material :<span>" + ArrPrductData[3].ToString() + "</span>";
                        divMaterial.Visible = true;
                    }
                    if (ArrPrductData[4].ToString() != "" && ArrPrductData[4].ToString().ToUpper() != "NA")
                    {
                        Theme.InnerHtml = "Theme :<span>" + ArrPrductData[4].ToString() + "</span>";
                        divTheme.Visible = true;
                    }
                    if (ArrPrductData[5].ToString() != "" && ArrPrductData[5].ToString().ToUpper() != "NA")
                    {
                        SuitableFor.InnerHtml = "SuitableFor :<span>" + ArrPrductData[5].ToString() + "</span>";
                        divSuitableFor.Visible = true;
                    }
                    if (ArrPrductData[6].ToString() != "" && ArrPrductData[6].ToString().ToUpper() != "NA")
                    {
                        Dimension.InnerHtml = "Dimension :<span>" + ArrPrductData[6].ToString() + "</span>";
                        divDimension.Visible = true;
                    }
                    if (ArrPrductData[7].ToString() != "" && ArrPrductData[7].ToString().ToUpper() != "NA")
                    {
                        Weight.InnerHtml = "Weight :<span>" + ArrPrductData[7].ToString() + "</span>";
                        divWeight.Visible = true;
                    }
                    if (ArrPrductData[8].ToString() != "" && ArrPrductData[8].ToString().ToUpper() != "NA")
                    {
                        Stock.InnerHtml = "Stock :<span>" + ArrPrductData[8].ToString() + "</span>";
                        divStock.Visible = true;
                    }

                    if (ArrPrductData[12].ToString() != "" && ArrPrductData[12].ToString().ToUpper() != "NA")
                    {

                        MinQuantity.InnerHtml = "MinQuantity :<span>" + ArrPrductData[12].ToString() + "</span>";
                        divMinQuantity.Visible = true;

                    }

                    //Repeater1.DataSource = ProductData;
                    //Repeater1.DataBind();

                    RepeaterLeftImg.DataSource = ProductData;
                    RepeaterLeftImg.DataBind();


                    DataTable ProductSizeData = dalclass.ProductSizeDataFillbyProductId(ProductId);
                    RadioButtonList1.DataSource = ProductSizeData;
                    RadioButtonList1.DataBind();

                    foreach (DataRow dr in ProductSizeData.Rows)
                    {
                        int rowdProductSizeId = int.Parse(dr["ProductSizeId"].ToString());
                        if(ProductId== rowdProductSizeId)
                        {
                            RadioButtonList1.Items.FindByText(dr["ProductSizeId"].ToString()).Selected = true;
                        }


                       
                    }


                    try
                    {


                       
                        //searching from same product with same productsizeId in datatable
                        foreach (DataRow row in cart.Rows)//all data comming in table's row format
                        {
                            if (Int32.Parse(row["ProductSizeId"].ToString()) == ProductSizeId)
                            {
                                DivAddBtn.Visible = false;
                                DivQty.Visible = true;
                                lblProQty.Text = row["NoOfItems"].ToString();

                            }
                        }



                    }
                    catch (Exception ex)
                    {

                    }

                }
                catch (Exception ex)
                {

                }




            }
            catch
            {
            }
        }

        protected void databindMycart()
        {
            try
            {
                DataTable cart = new DataTable();
                
                cart = (DataTable)Session["Cart"];
                RepeaterCart.DataSource = cart;
                RepeaterCart.DataBind();
                lblGrossTotal.Text = cart.Compute("Sum(TotalPrice)", "").ToString();
                int CartProductCount = cart.Rows.Count;
                lblItemsCount.Text = CartProductCount.ToString();
                if (CartProductCount > 0)
                {
                    itemcart.Visible = true;
                    NoItemCart.Visible = false;
                }
                else
                {
                    itemcart.Visible = false;
                    NoItemCart.Visible = true;
                }

                try
                {
                    

                    int ProductSizeId = int.Parse(RadioButtonList1.SelectedValue);
                    DivAddBtn.Visible = true;
                    DivQty.Visible = false;
                    lblProQty.Text ="0";
                    //searching from same product with same productsizeId in datatable
                    foreach (DataRow row in cart.Rows)//all data comming in table's row format
                    {
                        if (Int32.Parse(row["ProductSizeId"].ToString()) == ProductSizeId)
                        {
                            DivAddBtn.Visible = false;
                            DivQty.Visible = true;
                            lblProQty.Text = row["NoOfItems"].ToString();

                        }
                    }



                }
                catch (Exception ex)
                {

                }




            }
            catch
            {
            }
        }


        protected void Repeaterproducttype1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            try
            {


                int ProductSizeId = int.Parse(e.CommandArgument.ToString());
                ArrayList Details = dalclass.getProductdata(ProductSizeId);
                int ProductId = int.Parse(Details[1].ToString());
                String ProductName = Details[2].ToString();
                int CatId = int.Parse(Details[3].ToString());
                String Material = Details[4].ToString();
                String Color = Details[5].ToString();
                String Dimensions = Details[6].ToString();
                int Stock = int.Parse(Details[7].ToString());
                float MRP = float.Parse(Details[8].ToString());
                float Price = float.Parse(Details[9].ToString());
                int MinQuantity = int.Parse(Details[10].ToString());
                int Discount = int.Parse(Details[11].ToString());
                String ProductSizeImgMbl = Details[12].ToString();

                DataTable cart = new DataTable();
                if (Session["Cart"] == null)
                {

                    cart.Columns.Add("ProductSizeId");
                    cart.Columns.Add("ProductId");
                    cart.Columns.Add("ProductName");
                    cart.Columns.Add("CatId");
                    cart.Columns.Add("Material");
                    cart.Columns.Add("Color");
                    cart.Columns.Add("Dimensions");
                    cart.Columns.Add("Stock");
                    cart.Columns.Add("MRP", typeof(float));
                    cart.Columns.Add("Price", typeof(float));
                    cart.Columns.Add("MinQuantity");
                    cart.Columns.Add("Discount");
                    cart.Columns.Add("ProductSizeImgMbl");
                    cart.Columns.Add("NoOfItems");
                    cart.Columns.Add("TotalMrp", typeof(float));
                    cart.Columns.Add("TotalPrice", typeof(float));

                    Session["Cart"] = cart;
                }

                cart = (DataTable)Session["Cart"]; //data comming from session cart

                if (e.CommandName == "Add")
                {
                    int Qty = 0;


                    //searching from same product with same productsizeId in datatable
                    foreach (DataRow row in cart.Rows)//all data comming in table's row format
                    {
                        if (Int32.Parse(row["ProductSizeId"].ToString()) == ProductSizeId)
                        {
                            Qty = Int32.Parse(row["NoOfItems"].ToString());

                        }
                    }

                    if (Qty == 0)
                    {
                        Qty = MinQuantity;

                        float TotalMrp = (Qty * MRP);
                        float TotalPrice = (Qty * Price);

                        var Newrow = cart.NewRow();
                        Newrow["ProductSizeId"] = ProductSizeId;
                        Newrow["ProductId"] = ProductId;
                        Newrow["ProductName"] = ProductName;
                        Newrow["CatId"] = CatId;
                        Newrow["Material"] = Material;
                        Newrow["Color"] = Color;
                        Newrow["Dimensions"] = Dimensions;
                        Newrow["Stock"] = Stock;
                        Newrow["MRP"] = MRP;
                        Newrow["Price"] = Price;
                        Newrow["MinQuantity"] = MinQuantity;
                        Newrow["Discount"] = Discount;
                        Newrow["ProductSizeImgMbl"] = ProductSizeImgMbl;
                        Newrow["NoOfItems"] = Qty;
                        Newrow["TotalMrp"] = TotalMrp;
                        Newrow["TotalPrice"] = TotalPrice;

                        cart.Rows.Add(Newrow);
                        Session["Cart"] = cart;

                        databindme();

                    }
                    else if (Qty > 0)
                    {
                        foreach (DataRow row in cart.Rows)//all data comming in table's row format
                        {
                            if (Int32.Parse(row["ProductSizeId"].ToString()) == ProductSizeId)
                            {
                                Qty++;
                                float TotalMrp = (Qty * MRP);
                                float TotalPrice = (Qty * Price);

                                row["NoOfItems"] = Qty;
                                row["TotalMrp"] = TotalMrp;
                                row["TotalPrice"] = TotalPrice;
                                Session["Cart"] = cart;
                                databindme();
                            }
                        }
                    }

                }
                else if (e.CommandName == "Increase")
                {
                    int Qty = 0;
                    foreach (DataRow row in cart.Rows)//all data comming in table's row format
                    {
                        if (Int32.Parse(row["ProductSizeId"].ToString()) == ProductSizeId)
                        {
                            Qty = Int32.Parse(row["NoOfItems"].ToString());
                            Qty++;
                            if (Qty <= Stock)
                            {
                                float TotalMrp = (Qty * MRP);
                                float TotalPrice = (Qty * Price);

                                row["NoOfItems"] = Qty;
                                row["TotalMrp"] = TotalMrp;
                                row["TotalPrice"] = TotalPrice;
                                Session["Cart"] = cart;
                                databindme();
                            }

                        }
                    }
                }
                else if (e.CommandName == "Decrease")
                {
                    int Qty = 0;

                    foreach (DataRow row in cart.Rows)//all data comming in table's row format
                    {
                        if (Int32.Parse(row["ProductSizeId"].ToString()) == ProductSizeId)
                        {

                            Qty = Int32.Parse(row["NoOfItems"].ToString());
                            Qty--;
                            if (Qty >= MinQuantity)
                            {
                                float TotalMrp = (Qty * MRP);
                                float TotalPrice = (Qty * Price);

                                row["NoOfItems"] = Qty;
                                row["TotalMrp"] = TotalMrp;
                                row["TotalPrice"] = TotalPrice;
                                Session["Cart"] = cart;
                            }
                            else
                            {
                                row.Delete();
                                Session["Cart"] = cart;

                            }



                            databindme();



                        }
                    }


                }
                else if (e.CommandName == "Delete")
                {


                    foreach (DataRow row in cart.Rows)//all data comming in table's row format
                    {
                        if (Int32.Parse(row["ProductSizeId"].ToString()) == ProductSizeId)
                        {
                            row.Delete();
                            databindme();
                        }
                    }
                }
            }
            catch
            {

            }
        }

        protected void BtnLogInsubmit_Click(object sender, EventArgs e)
        {

        }

        protected void BtnSignUpSunmit_Click(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("/search/" + txtsearch.Text, false);
            }
            catch
            {

            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int ProductSizeid = int.Parse(RadioButtonList1.SelectedValue);
                ArrayList packInfoData = dalclass.packInfo(ProductSizeid);

                Price.InnerHtml = "<span class='item_price' style='color: #fc636b;'>" + packInfoData[0].ToString() + "</span> <del>- " + packInfoData[1].ToString() + "</del>";
                Price.Visible = false;
                if (packInfoData[2].ToString() != "" && packInfoData[2].ToString().ToUpper() != "NA")
                {
                    Dimension.InnerHtml = "Dimension :<span>" + packInfoData[2].ToString() + "</span>";
                    divDimension.Visible = true;
                }
                if (packInfoData[3].ToString() != "" && packInfoData[3].ToString().ToUpper() != "NA")
                {

                    MinQuantity.InnerHtml = "MinQuantity :<span>" + packInfoData[3].ToString() + "</span>";
                    divMinQuantity.Visible = true;

                }
                if (packInfoData[4].ToString() != "" && packInfoData[4].ToString().ToUpper() != "NA")
                {
                    Stock.InnerHtml = "Stock :<span>" + packInfoData[4].ToString() + "</span>";
                    divStock.Visible = true;
                }
                if (packInfoData[5].ToString() != "" && packInfoData[5].ToString().ToUpper() != "NA")
                {
                    Weight.InnerHtml = "Weight :<span>" + packInfoData[5].ToString() + "</span>";
                    divWeight.Visible = true;
                }
                ProductName.InnerText = Session["productname"].ToString() + "-" + packInfoData[6].ToString();
                
                databindMycart();

            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }

        }

        protected void LbtnAddToCart_Click(object sender, EventArgs e)
        {
            try
            {
                int ProductSizeId = int.Parse(RadioButtonList1.SelectedValue);
                ArrayList Details = dalclass.getProductdata(ProductSizeId);
                int ProductId = int.Parse(Details[1].ToString());
                String ProductName = Details[2].ToString();
                int CatId = int.Parse(Details[3].ToString());
                String Material = Details[4].ToString();
                String Color = Details[5].ToString();
                String Dimensions = Details[6].ToString();
                int Stock = int.Parse(Details[7].ToString());
                float MRP = float.Parse(Details[8].ToString());
                float Price = float.Parse(Details[9].ToString());
                int MinQuantity = int.Parse(Details[10].ToString());
                int Discount = int.Parse(Details[11].ToString());
                String ProductSizeImgMbl = Details[12].ToString();

                DataTable cart = new DataTable();
                if (Session["Cart"] == null)
                {

                    cart.Columns.Add("ProductSizeId");
                    cart.Columns.Add("ProductId");
                    cart.Columns.Add("ProductName");
                    cart.Columns.Add("CatId");
                    cart.Columns.Add("Material");
                    cart.Columns.Add("Color");
                    cart.Columns.Add("Dimensions");
                    cart.Columns.Add("Stock");
                    cart.Columns.Add("MRP", typeof(float));
                    cart.Columns.Add("Price", typeof(float));
                    cart.Columns.Add("MinQuantity");
                    cart.Columns.Add("Discount");
                    cart.Columns.Add("ProductSizeImgMbl");
                    cart.Columns.Add("NoOfItems");
                    cart.Columns.Add("TotalMrp", typeof(float));
                    cart.Columns.Add("TotalPrice", typeof(float));

                    Session["Cart"] = cart;
                }

                cart = (DataTable)Session["Cart"]; //data comming from session cart

                int Qty = 0;
                Qty = MinQuantity;

                float TotalMrp = (Qty * MRP);
                float TotalPrice = (Qty * Price);

                var Newrow = cart.NewRow();
                Newrow["ProductSizeId"] = ProductSizeId;
                Newrow["ProductId"] = ProductId;
                Newrow["ProductName"] = ProductName;
                Newrow["CatId"] = CatId;
                Newrow["Material"] = Material;
                Newrow["Color"] = Color;
                Newrow["Dimensions"] = Dimensions;
                Newrow["Stock"] = Stock;
                Newrow["MRP"] = MRP;
                Newrow["Price"] = Price;
                Newrow["MinQuantity"] = MinQuantity;
                Newrow["Discount"] = Discount;
                Newrow["ProductSizeImgMbl"] = ProductSizeImgMbl;
                Newrow["NoOfItems"] = Qty;
                Newrow["TotalMrp"] = TotalMrp;
                Newrow["TotalPrice"] = TotalPrice;

                cart.Rows.Add(Newrow);
                Session["Cart"] = cart;

                databindMycart();


            }
            catch
            {

            }
            


        }

        protected void LBtnDecrease_Click(object sender, EventArgs e)
        {
            try
            {
                int ProductSizeId = int.Parse(RadioButtonList1.SelectedValue);
                ArrayList Details = dalclass.getProductdata(ProductSizeId);
                int ProductId = int.Parse(Details[1].ToString());
                String ProductName = Details[2].ToString();
                int CatId = int.Parse(Details[3].ToString());
                String Material = Details[4].ToString();
                String Color = Details[5].ToString();
                String Dimensions = Details[6].ToString();
                int Stock = int.Parse(Details[7].ToString());
                float MRP = float.Parse(Details[8].ToString());
                float Price = float.Parse(Details[9].ToString());
                int MinQuantity = int.Parse(Details[10].ToString());
                int Discount = int.Parse(Details[11].ToString());
                String ProductSizeImgMbl = Details[12].ToString();

                DataTable cart = new DataTable();
                if (Session["Cart"] == null)
                {

                    cart.Columns.Add("ProductSizeId");
                    cart.Columns.Add("ProductId");
                    cart.Columns.Add("ProductName");
                    cart.Columns.Add("CatId");
                    cart.Columns.Add("Material");
                    cart.Columns.Add("Color");
                    cart.Columns.Add("Dimensions");
                    cart.Columns.Add("Stock");
                    cart.Columns.Add("MRP", typeof(float));
                    cart.Columns.Add("Price", typeof(float));
                    cart.Columns.Add("MinQuantity");
                    cart.Columns.Add("Discount");
                    cart.Columns.Add("ProductSizeImgMbl");
                    cart.Columns.Add("NoOfItems");
                    cart.Columns.Add("TotalMrp", typeof(float));
                    cart.Columns.Add("TotalPrice", typeof(float));

                    Session["Cart"] = cart;
                }

                cart = (DataTable)Session["Cart"]; //data comming from session cart

                int Qty = 0;

                foreach (DataRow row in cart.Rows)//all data comming in table's row format
                {
                    if (Int32.Parse(row["ProductSizeId"].ToString()) == ProductSizeId)
                    {

                        Qty = Int32.Parse(row["NoOfItems"].ToString());
                        Qty--;
                        if (Qty >= MinQuantity)
                        {
                            float TotalMrp = (Qty * MRP);
                            float TotalPrice = (Qty * Price);

                            row["NoOfItems"] = Qty;
                            row["TotalMrp"] = TotalMrp;
                            row["TotalPrice"] = TotalPrice;
                            Session["Cart"] = cart;
                            databindMycart();
                        }
                        else
                        {
                            row.Delete();
                            Session["Cart"] = cart;
                            databindMycart();
                            DivAddBtn.Visible = true;
                            DivQty.Visible = false;
                            lblProQty.Text = "0";


                        }



                        


                    }
                }

            }
            catch(Exception ex)
            {

            }
        }

        protected void LbtnIncrease_Click(object sender, EventArgs e)
        {
            try
            {
                int ProductSizeId = int.Parse(RadioButtonList1.SelectedValue);
                ArrayList Details = dalclass.getProductdata(ProductSizeId);
                int ProductId = int.Parse(Details[1].ToString());
                String ProductName = Details[2].ToString();
                int CatId = int.Parse(Details[3].ToString());
                String Material = Details[4].ToString();
                String Color = Details[5].ToString();
                String Dimensions = Details[6].ToString();
                int Stock = int.Parse(Details[7].ToString());
                float MRP = float.Parse(Details[8].ToString());
                float Price = float.Parse(Details[9].ToString());
                int MinQuantity = int.Parse(Details[10].ToString());
                int Discount = int.Parse(Details[11].ToString());
                String ProductSizeImgMbl = Details[12].ToString();

                DataTable cart = new DataTable();
                if (Session["Cart"] == null)
                {

                    cart.Columns.Add("ProductSizeId");
                    cart.Columns.Add("ProductId");
                    cart.Columns.Add("ProductName");
                    cart.Columns.Add("CatId");
                    cart.Columns.Add("Material");
                    cart.Columns.Add("Color");
                    cart.Columns.Add("Dimensions");
                    cart.Columns.Add("Stock");
                    cart.Columns.Add("MRP", typeof(float));
                    cart.Columns.Add("Price", typeof(float));
                    cart.Columns.Add("MinQuantity");
                    cart.Columns.Add("Discount");
                    cart.Columns.Add("ProductSizeImgMbl");
                    cart.Columns.Add("NoOfItems");
                    cart.Columns.Add("TotalMrp", typeof(float));
                    cart.Columns.Add("TotalPrice", typeof(float));

                    Session["Cart"] = cart;
                }

                cart = (DataTable)Session["Cart"]; //data comming from session cart

                int Qty = 0;
                foreach (DataRow row in cart.Rows)//all data comming in table's row format
                {
                    if (Int32.Parse(row["ProductSizeId"].ToString()) == ProductSizeId)
                    {
                        Qty = Int32.Parse(row["NoOfItems"].ToString());
                        Qty++;
                        if (Qty <= Stock)
                        {
                            float TotalMrp = (Qty * MRP);
                            float TotalPrice = (Qty * Price);

                            row["NoOfItems"] = Qty;
                            row["TotalMrp"] = TotalMrp;
                            row["TotalPrice"] = TotalPrice;
                            Session["Cart"] = cart;
                            databindMycart();
                            
                        }

                    }
                }


            }
            catch(Exception ex)
            {

            }
        }
    }
}