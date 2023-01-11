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
    public partial class loginSearch : System.Web.UI.Page
    {
        DAL.FrontEnd dalclass = new DAL.FrontEnd();


        protected void Page_Load(object sender, EventArgs e)
        {

            string urlredirect = "";
            try
            {

                if (!IsPostBack)
                {
                    string keysearch = Page.RouteData.Values["keysearch"].ToString();
                    urlredirect = "/search/" + keysearch;
                    if (Session["ClientID"] == null)
                    {
                        Response.Redirect(urlredirect, false);
                    }
                    int ClientID = Convert.ToInt32(Session["ClientID"]);

                    ArrayList ClientData = dalclass.getClientData(ClientID);
                    lblClientName.Text = "Hi! " + ClientData[0].ToString();
                    databindme();
                }
            }
            catch
            {
                Response.Redirect(urlredirect, false);
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

                    String keyword = Page.RouteData.Values["keysearch"].ToString();
                    HeadTitle.InnerText = "Search Reault for " + keyword;
                    HeadsubTitle.InnerText = keyword;
                    DataTable CategoryTable1 = dalclass.ProductDataFillbySearch(keyword);





                    if (CartProductCount != 0)
                    {
                        foreach (DataRow row in cart.Rows)
                        {
                            int ProductSizeId = int.Parse(row["ProductSizeId"].ToString());

                            foreach (DataRow myrow in CategoryTable1.Rows)
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

                    Repeaterproducttype1.DataSource = CategoryTable1;
                    Repeaterproducttype1.DataBind();
                    int ProductCount = Repeaterproducttype1.Items.Count;

                    if (ProductCount > 0)
                    {
                        Repeaterproducttype1.Visible = true;
                        no_products_found.Visible = false;
                    }
                    else
                    {
                        Repeaterproducttype1.Visible = false;
                        no_products_found.Visible = true;

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

        protected void FilterChange(object sender, EventArgs e)
        {
            try
            {
                String keyword = Page.RouteData.Values["keysearch"].ToString();

                //string color = "(";
                string Material = "(";

                string query = "SELECT [ProductId], [ProductName], [Url], [Material], [ProductSizeId], [Dimensions], [Stock],  [Discount], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductSizeImgMbl], [ProductSizeImgDesk], 'True' AS NotInCart, 'False' AS InCart, '0' AS NoOfItems FROM [Product] Where (KeyWords like '%" + keyword + "%' ) ";

                try
                {
                    int catId = Convert.ToInt32(RadioButtonListCat.SelectedValue);
                    if (catId > 0)
                    {
                        query = query + " AND ([CatId] = '" + catId + "')";
                    }
                }
                catch
                {

                }


                //for (int i = 0; i < CheckBoxListColor.Items.Count; i++)
                //{
                //    if (CheckBoxListColor.Items[i].Selected == true)
                //    {
                //        color += "'" + CheckBoxListColor.Items[i].Value + "'" + ',';
                //    }
                //}
                //if (color != "(")
                //{

                //    color = color.Remove(color.Length - 1);
                //    color = color + ")";
                //    query = query + " AND ( Color IN " + color + ") ";
                //}


                for (int i = 0; i < CheckBoxListMaterial.Items.Count; i++)
                {
                    if (CheckBoxListMaterial.Items[i].Selected == true)
                    {
                        Material += "'" + CheckBoxListMaterial.Items[i].Value + "'" + ',';
                    }
                }

                if (Material != "(")
                {
                    Material = Material.Remove(Material.Length - 1);
                    Material = Material + ")";
                    query = query + " AND ( Material IN " + Material + " ) ";
                }


                DataTable CategoryTable1 = dalclass.ProducSearchByFilter(query);


                Repeaterproducttype1.DataSource = CategoryTable1;
                Repeaterproducttype1.DataBind();
                int ProductCount = Repeaterproducttype1.Items.Count;

                if (ProductCount > 0)
                {
                    Repeaterproducttype1.Visible = true;
                    no_products_found.Visible = false;
                }
                else
                {
                    Repeaterproducttype1.Visible = false;
                    no_products_found.Visible = true;

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
                                   "alert('Successfully Inserted.'); window.location='" + "Category.aspx';", true);
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
    }
}