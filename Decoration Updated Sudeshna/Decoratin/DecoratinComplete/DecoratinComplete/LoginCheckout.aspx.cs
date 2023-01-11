using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace DecoratinComplete
{
    public partial class LoginCheckout : System.Web.UI.Page
    {
        DAL.FrontEnd dalclass = new DAL.FrontEnd();

       
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {

                    if (Session["ClientID"] == null)
                    {
                        Response.Redirect("/checkout", false);
                    }

                    int ClientID = Convert.ToInt32(Session["ClientID"]);

                    ArrayList ClientData = dalclass.getClientData(ClientID);


                    lblClientName.Text = "Hi! " + ClientData[0].ToString();

                    txtAddress.Text = ClientData[4].ToString();

                    databindme();
                    DataTable cart = (DataTable)Session["Cart"];
                    RepeaterCart.DataSource = cart;
                    RepeaterCart.DataBind();



                    try
                    {
                        int CartProductCount = cart.Rows.Count;
                        lblItemsCount.Text = CartProductCount.ToString();
                        lblGrossTotal.Text = cart.Compute("Sum(TotalPrice)", "").ToString();
                        subtotal.InnerText = lblGrossTotal.Text;
                        tax.InnerText = (Double.Parse(lblGrossTotal.Text) *(0.1)).ToString();
                        total.InnerText = (Double.Parse(lblGrossTotal.Text) * (1.1)).ToString();
                        
                            productCartVisibe.Visible = true;

                      
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
                    catch
                    {

                    }






                }







            }
            catch
            {
                Response.Redirect("/checkout", false);
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
       

        protected void BtnPlaceOrder_Click(object sender, EventArgs e)
        {
            try
            {
                int ClientId = int.Parse(Session["ClientId"].ToString());
                ArrayList ClientDetails = dalclass.findClientDetailsById(ClientId);
                String ClientName = ClientDetails[0].ToString();
                String Mobile = ClientDetails[1].ToString();
                String Email = ClientDetails[2].ToString();
                String Address = ClientDetails[3].ToString();
                String ABN = ClientDetails[4].ToString();
                String TimeStamp = DateTime.Now.ToString();
                String OrderDetails = "";



                DataTable cart = (DataTable)Session["Cart"];
                Double Subtotal = Double.Parse(cart.Compute("Sum(TotalPrice)", "").ToString());
                Double tax = Subtotal* .10;
                Double Shipping = 0; //DeliveryCharge
                Double Total = Subtotal + tax + Shipping; //TotalAmount
                Double GrandTotal = Total;
                Double GrandTotalMrp = Double.Parse(cart.Compute("Sum(TotalMrp)", "").ToString());
                Double Saving = GrandTotalMrp - Subtotal;
                int ProductCount = cart.Rows.Count;

                int Packcount = int.Parse(cart.Compute("Sum(NoOfItems)", "").ToString());
                if(Subtotal>=300)
                {

                

                int OrderId = dalclass.InsertOrder(ClientId, ClientName, Mobile, Email, Address, ABN, TimeStamp, OrderDetails, Subtotal, tax, Shipping, Total, GrandTotal, Saving, ProductCount, Packcount);


                if(OrderId != 0)
                {

                    Session["OrderID"] = OrderId;

                foreach (DataRow row in cart.Rows)
                {
                    int ProductSizeId = int.Parse(row["ProductSizeId"].ToString());
                    int ProductId = int.Parse(row["ProductId"].ToString());
                    string ProductName = row["ProductName"].ToString();
                    int CatId = int.Parse(row["CatId"].ToString());
                    string Material = row["Material"].ToString();
                    string Color = row["Color"].ToString();
                    string Dimensions = row["Dimensions"].ToString();
                    int Stock = int.Parse(row["Stock"].ToString());
                    decimal MRP = decimal.Parse(row["MRP"].ToString());
                    decimal Price = decimal.Parse(row["Price"].ToString());
                    int MinQuantity = int.Parse(row["MinQuantity"].ToString());
                    int Discount = int.Parse(row["Discount"].ToString());
                    string ProductSizeImgMbl = row["ProductSizeImgMbl"].ToString();
                    int NoOfItems = int.Parse(row["NoOfItems"].ToString());
                    decimal TotalMrp = decimal.Parse(row["TotalMrp"].ToString());
                    decimal TotalPrice = decimal.Parse(row["TotalPrice"].ToString());



                    dalclass.orderdetailsInsert(OrderId, ProductSizeId, ProductId, ProductName, CatId, Material, Color, Dimensions, Stock, MRP, Price, MinQuantity, Discount, ProductSizeImgMbl, NoOfItems, TotalMrp, TotalPrice);
                }


                    
                }
                Session["Cart"] = null;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                                                   "alert('Successfully Order Placed.'); window.location='" + "LoginOrderSuccess.aspx';", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                                                   "alert('Min order - $300.');", true);
                }

            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;

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
                        subtotal.InnerText = lblGrossTotal.Text;
                        tax.InnerText = (Double.Parse(lblGrossTotal.Text) * (0.1)).ToString();
                        total.InnerText = (Double.Parse(lblGrossTotal.Text) * (1.1)).ToString();

                        int CartProductCount = cart.Rows.Count;
                        // lblItemsCount.Text = CartProductCount.ToString();

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
                                subtotal.InnerText = lblGrossTotal.Text;
                                tax.InnerText = (Double.Parse(lblGrossTotal.Text) * (0.1)).ToString();
                                total.InnerText = (Double.Parse(lblGrossTotal.Text) * (1.1)).ToString();
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
                                subtotal.InnerText = lblGrossTotal.Text;
                                tax.InnerText = (Double.Parse(lblGrossTotal.Text) * (0.1)).ToString();
                                total.InnerText = (Double.Parse(lblGrossTotal.Text) * (1.1)).ToString();

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
                            subtotal.InnerText = lblGrossTotal.Text;
                            tax.InnerText = (Double.Parse(lblGrossTotal.Text) * (0.1)).ToString();
                            total.InnerText = (Double.Parse(lblGrossTotal.Text) * (1.1)).ToString();

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
                            subtotal.InnerText = lblGrossTotal.Text;
                            tax.InnerText = (Double.Parse(lblGrossTotal.Text) * (0.1)).ToString();
                            total.InnerText = (Double.Parse(lblGrossTotal.Text) * (1.1)).ToString();

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
        protected void LblLogOut_Click(object sender, EventArgs e)
        {
            try
            {
                Session["ClientID"] = null;
                Response.Redirect("/", false);
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

        protected void BtnAddChange_Click(object sender, EventArgs e)
        {
            Response.Redirect("/address", false);
        }
    }
}