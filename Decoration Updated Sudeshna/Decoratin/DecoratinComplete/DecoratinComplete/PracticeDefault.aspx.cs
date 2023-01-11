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
    public partial class PracticeDefault : System.Web.UI.Page
    {
        DAL.FrontEnd dalclass = new DAL.FrontEnd();

        public object LblQty { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    Session["ClientID"] = "100001";
                    if (Session["ClientID"] != null)
                    {
                        Response.Redirect("Home.aspx");
                    }

                    databindme();
                    bannerbind();
                    try
                    {


                        int CatId1 = 18;
                        string ProductSizelbl = "New";
                        DataTable DbProductt1 = dalclass.ProductDataFill(CatId1, ProductSizelbl);
                        Repeaterproducttype1.DataSource = DbProductt1;
                        Repeaterproducttype1.DataBind();

                        int CatId2 = 19;
                        DataTable DbProductt2 = dalclass.ProductDataFill(CatId2, ProductSizelbl);
                        RepeaterProductType2.DataSource = DbProductt2;
                        RepeaterProductType2.DataBind();

                        int CatId3 = 20;
                        DataTable DbProductt3 = dalclass.ProductDataFill(CatId3, ProductSizelbl);
                        RepeaterProductType3.DataSource = DbProductt3;
                        RepeaterProductType3.DataBind();

                        int CatId4 = 21;
                        DataTable DbProductt4 = dalclass.ProductDataFill(CatId4, ProductSizelbl);
                        RepeaterProductType4.DataSource = DbProductt4;
                        RepeaterProductType4.DataBind();

                    }
                    catch
                    {

                    }

                }
                DataTable cart = (DataTable)Session["Cart"];
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
            }
            catch (Exception ex)
            { }
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

                banner6.Src = "Admin/Banner/Desktop/" + arrBanner[20];
                Banner6Url.HRef = arrBanner[21].ToString();
                Banner6Title.InnerText = arrBanner[22].ToString();
                Banner6ST.InnerText = arrBanner[23].ToString();

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
                string[] Details = new string[13];
                Details = e.CommandArgument.ToString().Split(';');
                int ProductSizeId = int.Parse(Details[0].ToString());
                int ProductId = int.Parse(Details[1].ToString());
                String ProductName = Details[2];
                int CatId = int.Parse(Details[3]);
                String Material = Details[4];
                String Color = Details[5];
                String Dimensions = Details[6];
                int Stock = int.Parse(Details[7]);
                float MRP = float.Parse(Details[8].ToString());
                float Price = float.Parse(Details[9].ToString());
                int MinQuantity = int.Parse(Details[10]);
                int Discount = int.Parse(Details[11]);
                String ProductSizeImgMbl = Details[12];

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

                cart = (DataTable)Session["Cart"]; //data comming from session card

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
                        RepeaterCart.DataSource = cart;
                        RepeaterCart.DataBind();
                        Double Subtotal = Double.Parse(cart.Compute("Sum(TotalPrice)", "").ToString());
                        lblGrossTotal.Text = Subtotal.ToString();
                        Double tax = .10;
                        Double Shipping = 5.5;
                        Double Total = Subtotal + tax + Shipping;

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
                    }
                    else if (Qty > 0)
                    {
                        foreach (DataRow row in cart.Rows)//all data comming in table's row format
                        {
                            if (Int32.Parse(row["ProductSizeId"].ToString()) == ProductSizeId)
                            {
                                Qty = Qty + 1;
                                float TotalMrp = (Qty * MRP);
                                float TotalPrice = (Qty * Price);

                                row["NoOfItems"] = Qty;
                                row["TotalMrp"] = TotalMrp;
                                row["TotalPrice"] = TotalPrice;
                                Session["Cart"] = cart;
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
                            Qty = Qty + 1;
                            if (Qty <= Stock)
                            {
                                float TotalMrp = (Qty * MRP);
                                float TotalPrice = (Qty * Price);

                                row["NoOfItems"] = Qty;
                                row["TotalMrp"] = TotalMrp;
                                row["TotalPrice"] = TotalPrice;
                                Session["Cart"] = cart;
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
                            Qty = Qty - 1;
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
                            }



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
            try
            {
                String username = TxtUserName.Text;
                String password = TxtLogInPassword.Text;

                int Clientid = dalclass.ClientloginPage(username, password);

                if (Clientid != 0)
                {
                    Session["ClientId"] = Clientid;
                    Response.Redirect("/home");
                }
            }
            catch
            {

            }
        }

        protected void BtnSignUpSunmit_Click(object sender, EventArgs e)
        {


            try
            {
                String username = TxtSignUpName.Text;
                String phoneNumber = TxtSignUpPhone.Text;
                String email = TxtSignUpEmail.Text;
                String passwword = TxtSignUpPasswword.Text;
                String address = TxtSignUpAddress.Text;
                int postalPIN = int.Parse(TxtSignUpPostalPIN.Text);
                String ABN = TxtSignUpABN.Text;

                int Clientid = dalclass.ClientRegisterPage(username, phoneNumber, email, passwword, address, postalPIN, ABN);

                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                   "alert('Successfully Inserted.'); window.location='" + "/';", true);
            }

            catch
            {

            }








        }
    }
}