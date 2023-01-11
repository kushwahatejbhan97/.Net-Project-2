using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace DecoratinComplete
{
    public partial class Default : System.Web.UI.Page
    {
        DAL.FrontEnd dalclass = new DAL.FrontEnd();



        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Session["ClientID"] != null)
                    {
                        Response.Redirect("/home", false);
                    }

                    bannerbind();
                    databindme();
                }
            }
            catch
            {

            }
            

        }

        protected void bannerbind()
        {
            try
            {
                ArrayList arrBanner = dalclass.getbannerdata();
                banner1.Src = "Admin/Banner/Desktop/" + arrBanner[0];
                Banner1Url.HRef = arrBanner[1].ToString();
                Banner1Title.InnerText = arrBanner[2].ToString();
                Banner1ST.InnerText = arrBanner[3].ToString();

                banner2.Src = "Admin/Banner/Desktop/" + arrBanner[4];
                Banner2Url.HRef = arrBanner[5].ToString();
                Banner2Title.InnerText = arrBanner[6].ToString();
                Banner2ST.InnerText = arrBanner[7].ToString();

                banner3.Src = "Admin/Banner/Desktop/" + arrBanner[8];
                Banner3Url.HRef = arrBanner[9].ToString();
                Banner3Title.InnerText = arrBanner[10].ToString();
                Banner3ST.InnerText = arrBanner[11].ToString();


                banner4.Src = "Admin/Banner/Desktop/" + arrBanner[12];
                Banner4Url.HRef = arrBanner[13].ToString();
                Banner4Title.InnerText = arrBanner[14].ToString();
                Banner4ST.InnerText = arrBanner[15].ToString();


                banner5.Src = "Admin/Banner/Desktop/" + arrBanner[16];
                Banner5Url.HRef = arrBanner[17].ToString();
                Banner5Title.InnerText = arrBanner[18].ToString();
                Banner5ST.InnerText = arrBanner[19].ToString();

                //banner6.Src = "Admin/Banner/Desktop/" + arrBanner[20];
                //Banner6Url.HRef = arrBanner[21].ToString();
                //Banner6Title.InnerText = arrBanner[22].ToString();
                //Banner6ST.InnerText = arrBanner[23].ToString();

                banner7.Src = "Admin/Banner/Desktop/" + arrBanner[24];
                Banner7Url.HRef = arrBanner[25].ToString();
                Banner7Title.InnerText = arrBanner[26].ToString();
                Banner7ST.InnerText = arrBanner[27].ToString();

                banner8.Src = "Admin/Banner/Desktop/" + arrBanner[28];
                Banner8Url.HRef = arrBanner[29].ToString();
                Banner8Title.InnerText = arrBanner[30].ToString();
                Banner8ST.InnerText = arrBanner[31].ToString();
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
                    ArrayList Tabdata = dalclass.getTabData();
                    int CatId1 = int.Parse(Tabdata[0].ToString());
                    liCatName1.InnerText = Tabdata[1].ToString();
                    int CatId2 = int.Parse(Tabdata[2].ToString());
                    liCatName2.InnerText = Tabdata[3].ToString();
                    int CatId3 = int.Parse(Tabdata[4].ToString());
                    liCatName3.InnerText = Tabdata[5].ToString();
                    int CatId4 = int.Parse(Tabdata[6].ToString());
                    liCatName4.InnerText = Tabdata[7].ToString();



                    string ProductSizelbl = "New";
                    DataTable DbProductt1 = dalclass.ProductDataFill(CatId1, ProductSizelbl);

                    DataTable DbProductt2 = dalclass.ProductDataFill(CatId2, ProductSizelbl);

                    DataTable DbProductt3 = dalclass.ProductDataFill(CatId3, ProductSizelbl);


                    DataTable DbProductt4 = dalclass.ProductDataFill(CatId4, ProductSizelbl);


                    if (CartProductCount != 0)
                    {
                        foreach (DataRow row in cart.Rows)
                        {
                            int ProductSizeId = int.Parse(row["ProductSizeId"].ToString());

                            foreach (DataRow myrow in DbProductt1.Rows)
                            {
                                int DbProductt1SizeId = int.Parse(myrow["ProductSizeId"].ToString());
                                if (ProductSizeId == DbProductt1SizeId)
                                {
                                    myrow["NotInCart"] = false;
                                    myrow["InCart"] = true;
                                    myrow["NoOfItems"] = row["NoOfItems"].ToString();

                                }
                            }

                            foreach (DataRow myrow in DbProductt2.Rows)
                            {
                                int DbProductt1SizeId = int.Parse(myrow["ProductSizeId"].ToString());
                                if (ProductSizeId == DbProductt1SizeId)
                                {
                                    myrow["NotInCart"] = false;
                                    myrow["InCart"] = true;
                                    myrow["NoOfItems"] = row["NoOfItems"].ToString();

                                }
                            }

                            foreach (DataRow myrow in DbProductt3.Rows)
                            {
                                int DbProductt1SizeId = int.Parse(myrow["ProductSizeId"].ToString());
                                if (ProductSizeId == DbProductt1SizeId)
                                {
                                    myrow["NotInCart"] = false;
                                    myrow["InCart"] = true;
                                    myrow["NoOfItems"] = row["NoOfItems"].ToString();

                                }
                            }

                            foreach (DataRow myrow in DbProductt4.Rows)
                            {
                                int DbProductt1SizeId = int.Parse(myrow["ProductSizeId"].ToString());
                                if (ProductSizeId == DbProductt1SizeId)
                                {
                                    myrow["NotInCart"] = false;
                                    myrow["InCart"] = true;
                                    myrow["NoOfItems"] = row["NoOfItems"].ToString();

                                }
                            }




                        }

                    }

                    Repeaterproducttype1.DataSource = DbProductt1;
                    Repeaterproducttype1.DataBind();

                    RepeaterProductType2.DataSource = DbProductt2;
                    RepeaterProductType2.DataBind();


                    RepeaterProductType3.DataSource = DbProductt3;
                    RepeaterProductType3.DataBind();


                    RepeaterProductType4.DataSource = DbProductt4;
                    RepeaterProductType4.DataBind();
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


                //data comming from button

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


        protected void LblLogOut_Click(object sender, EventArgs e)
        {

        }

        protected void BtnLogInsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                String username = TxtUserName.Text;
                String password = TxtLogInPassword.Text;

                int Clientid = dalclass.ClientloginPage(username, password);

                if (Clientid != 0)
                {
                    Session["ClientId"] = Clientid;
                    Response.Redirect("/home", false);
                }
            }
            catch
            {

            }
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
    }
}