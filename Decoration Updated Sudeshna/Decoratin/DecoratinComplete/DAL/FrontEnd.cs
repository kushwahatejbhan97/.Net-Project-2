using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

namespace DAL
{
    public class FrontEnd
    {
        SqlCommand cmd;
        SqlCommand cmd1;
        SqlConnection con;
        SqlTransaction transaction;
        SqlDataAdapter da = new SqlDataAdapter();

        public int ClientloginPage(string username, string password)
        {
            int Clientid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT   ClientId  FROM Client  WHERE (Email  ='" + username + "' ) and (Password  ='" + password + "' ) and (block  = '0' )and (Approval  = '1' )", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Clientid = Convert.ToInt32(dr[0]);
                }
            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return Clientid;
        }

        public ArrayList getOrderDatafrmOrde(int orderID)
        {
            ArrayList OrderData = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT    NoOfItems, TotalPrice FROM OrderDetails Where OrderId ='" + orderID + "'  ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    OrderData.Add(dr[0]);
                    OrderData.Add(dr[1]);
                    

                }
            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return OrderData;
        }

        public ArrayList getOrderData(int orderID)
        {
            ArrayList OrderData = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT    Address, SubTotal, TotalAmount, ExpectedDelDate, ProductCount FROM OrderSummary Where OrderId ='" + orderID + "'  ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    OrderData.Add(dr[0]);
                    OrderData.Add(dr[1]);
                    OrderData.Add(dr[2]);
                    OrderData.Add(dr[3]);
                    OrderData.Add(dr[4]);

                }
            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return OrderData;
        }

        public int ContactInsert(string username, string email, string subject, string usermsg)
        {
            int ContactUserId = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO Contact (username , email , subject , message)  output inserted.Contactuserid VALUES " + "(@username , @email , @subject , @message)";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[4];


                param[0] = new SqlParameter("@username", SqlDbType.VarChar, 100);
                param[1] = new SqlParameter("@email", SqlDbType.VarChar, 100);
                param[2] = new SqlParameter("@subject", SqlDbType.VarChar, 500);
                param[3] = new SqlParameter("@message", SqlDbType.VarChar, 1000);
                

                param[0].Value = username;
                param[1].Value = email;
                param[2].Value = subject;
                param[3].Value = usermsg;
                
                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                ContactUserId = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                con.Close();
            }
            return ContactUserId;
        }

        public ArrayList getproductdatabyproductId(int productId)
        {
            ArrayList ProductData = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand(" SELECT [ProductName], [Color], [Type], [Material], [Theme], [SuitableFor], [Dimensions], [Weight], [Stock], [Discount], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductSizeCode]  FROM [Product] WHERE ([ProductId] = '" + productId+"')", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ProductData.Add(dr[0]);
                    ProductData.Add(dr[1]);
                    ProductData.Add(dr[2]);
                    ProductData.Add(dr[3]);
                    ProductData.Add(dr[4]);
                    ProductData.Add(dr[5]);
                    ProductData.Add(dr[6]);
                    ProductData.Add(dr[7]);
                    ProductData.Add(dr[8]);
                    ProductData.Add(dr[9]);
                    ProductData.Add(dr[10]);
                    ProductData.Add(dr[11]);
                    ProductData.Add(dr[12]);
                    ProductData.Add(dr[13]);
                    ProductData.Add(dr[14]);



                }
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return ProductData;
        }

        public ArrayList getproductidbyproductName(string productname)
        {
            ArrayList productdata = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT ProductId, ProductSizeId, CatId  FROM Product Where Url='" + productname + "' ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    productdata.Add(dr[0]);
                    productdata.Add(dr[1]);
                    productdata.Add(dr[2]);
                }
            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return productdata;
        }

        public ArrayList getClientData(int clientID)
        {
            ArrayList ClientData = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT    Name, Mobile, Email, Password, Address, PostalPIN, ABN, ReferCode  FROM Client Where ClientId ='" + clientID+"'  ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    ClientData.Add(dr[0]);
                    ClientData.Add(dr[1]);
                    ClientData.Add(dr[2]);
                    ClientData.Add(dr[3]);
                    ClientData.Add(dr[4]);
                    ClientData.Add(dr[5]);
                    ClientData.Add(dr[6]);
                    ClientData.Add(dr[7]);
                    ClientData.Add(dr[8]);


                }
            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return ClientData;
        }

        public DataTable ProductDataFillbycatagory(int catId)
        {
            DataTable ProductTable = new DataTable();

            ProductTable.Columns.Add("ProductId");
            ProductTable.Columns.Add("ProductName");
            ProductTable.Columns.Add("Url");
            ProductTable.Columns.Add("Material");
            ProductTable.Columns.Add("Color");
            ProductTable.Columns.Add("Dimensions");
            ProductTable.Columns.Add("Stock");
            ProductTable.Columns.Add("MRP");
            ProductTable.Columns.Add("Price");
            ProductTable.Columns.Add("MinQuantity");
            ProductTable.Columns.Add("Discount");
            ProductTable.Columns.Add("ProductSizeImgMbl");
            ProductTable.Columns.Add("ProductSizeId");
            ProductTable.Columns.Add("NotInCart", typeof(bool));
            ProductTable.Columns.Add("InCart", typeof(bool));
            ProductTable.Columns.Add("NoOfItems");
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [ProductId], [ProductName], [Url], [Material], [ProductSizeId], [Dimensions], [Stock],  [Discount], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductSizeImgMbl], [ProductSizeImgDesk], 'True' AS NotInCart, 'False' AS InCart, '0' AS NoOfItems FROM [Product] Where [CatId]='" + catId + "' ";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(ProductTable);

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                //throw new Exception(msg);
            }
            finally
            {

                con.Close();
            }
            return ProductTable;
        }

        public DataTable ProductDataFillbyCatSearch(String query)
        {
            DataTable ProductTable = new DataTable();

            ProductTable.Columns.Add("ProductId");
            ProductTable.Columns.Add("ProductName");
            ProductTable.Columns.Add("Url");
            ProductTable.Columns.Add("Material");
            ProductTable.Columns.Add("Color");
            ProductTable.Columns.Add("Dimensions");
            ProductTable.Columns.Add("Stock");
            ProductTable.Columns.Add("MRP");
            ProductTable.Columns.Add("Price");
            ProductTable.Columns.Add("MinQuantity");
            ProductTable.Columns.Add("Discount");
            ProductTable.Columns.Add("ProductSizeImgMbl");
            ProductTable.Columns.Add("ProductSizeId");
            ProductTable.Columns.Add("NotInCart", typeof(bool));
            ProductTable.Columns.Add("InCart", typeof(bool));
            ProductTable.Columns.Add("NoOfItems");
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(ProductTable);

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                //throw new Exception(msg);
            }
            finally
            {

                con.Close();
            }
            return ProductTable;
        }

        public DataTable TagDataFillbySearch(string tag)
        {
            DataTable ProductTable = new DataTable();

            ProductTable.Columns.Add("ProductId");
            ProductTable.Columns.Add("ProductName");
            ProductTable.Columns.Add("Url");
            ProductTable.Columns.Add("Material");
            ProductTable.Columns.Add("Color");
            ProductTable.Columns.Add("Dimensions");
            ProductTable.Columns.Add("Stock");
            ProductTable.Columns.Add("MRP");
            ProductTable.Columns.Add("Price");
            ProductTable.Columns.Add("MinQuantity");
            ProductTable.Columns.Add("Discount");
            ProductTable.Columns.Add("ProductSizeImgMbl");
            ProductTable.Columns.Add("ProductSizeId");
            ProductTable.Columns.Add("NotInCart", typeof(bool));
            ProductTable.Columns.Add("InCart", typeof(bool));
            ProductTable.Columns.Add("NoOfItems");
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [ProductId], [ProductName], [Url], [Material], [ProductSizeId], [Dimensions], [Stock],  [Discount], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductSizeImgMbl], [ProductSizeImgDesk], 'True' AS NotInCart, 'False' AS InCart, '0' AS NoOfItems FROM [Product] Where (Tags like '%" + tag + "%' )";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(ProductTable);

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                //throw new Exception(msg);
            }
            finally
            {

                con.Close();
            }
            return ProductTable;
        }

        public int getCatidbyProductId(int productId)
        {
            
            int productid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT productId  FROM Product Where ProductId='" + productId + "' ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    productid = Convert.ToInt32(dr[0]);
                }
            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return productid;
        }

        public DataTable ProductSizeDataFillbyProductId(int productId)
        {
            DataTable ProductSizeTable = new DataTable();

            ProductSizeTable.Columns.Add("ProductSizeId");
            ProductSizeTable.Columns.Add("Dimensions");


            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [ProductSizeId], [Dimensions] FROM [ProductSize] Where [ProductId]='" + productId + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(ProductSizeTable);

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                //throw new Exception(msg);
            }
            finally
            {

                con.Close();
            }
            return ProductSizeTable;
        }

        public DataTable ProductDataFillbyProductId(int productId)
        {
            DataTable ProductTable = new DataTable();

            ProductTable.Columns.Add("ProductId");
            ProductTable.Columns.Add("ProductSizeId");
            ProductTable.Columns.Add("ProductName");
            ProductTable.Columns.Add("Url");
            ProductTable.Columns.Add("Material");
            ProductTable.Columns.Add("Color");
            ProductTable.Columns.Add("Dimensions");
            ProductTable.Columns.Add("Stock");
            ProductTable.Columns.Add("MRP");
            ProductTable.Columns.Add("Price");
            ProductTable.Columns.Add("MinQuantity");
            ProductTable.Columns.Add("Discount");
            ProductTable.Columns.Add("ProductSizeLabel");
            ProductTable.Columns.Add("ProductSizeImgMbl");
            ProductTable.Columns.Add("ProductSizeImgDesk");
            ProductTable.Columns.Add("ProductSizeSlider");


            ProductTable.Columns.Add("Ratings");
            ProductTable.Columns.Add("Type");
            ProductTable.Columns.Add("Theme");
            ProductTable.Columns.Add("Weight");
            ProductTable.Columns.Add("SuitableFor");

            ProductTable.Columns.Add("NotInCart", typeof(bool));
            ProductTable.Columns.Add("InCart", typeof(bool));
            ProductTable.Columns.Add("NoOfItems");
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [ProductId], [ProductSizeId], [ProductName], [Url], [Material],  [Dimensions], [Stock],  [Discount], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductSizeImgMbl], [ProductSizeImgDesk], [ProductSizeSlider], [Ratings], [Type], [Theme], [Weight], [SuitableFor], 'True' AS NotInCart, 'False' AS InCart, '0' AS NoOfItems FROM [Product] Where [ProductId]='" + productId + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(ProductTable);

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                //throw new Exception(msg);
            }
            finally
            {

                con.Close();
            }
            return ProductTable;
        }

        public ArrayList getproductidbyUrl(string productUrl)
        {
            ArrayList productdata = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT ProductId, ProductSizeId, CatId  FROM Product Where Url='" + productUrl + "' ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    productdata.Add(dr[0]);
                    productdata.Add(dr[1]);
                    productdata.Add(dr[2]);
                }
            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return productdata;
        }

        public int getCatidbyUrl(string caturl)
        {
            int catid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT CatId  FROM Category Where Url='"+caturl+"' ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    catid = Convert.ToInt32(dr[0]);
                }
            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return catid;
        }

        public DataTable ProductDataFillbySearch(string keyword)
        {
            DataTable ProductTable = new DataTable();

            ProductTable.Columns.Add("ProductId");
            ProductTable.Columns.Add("ProductName");
            ProductTable.Columns.Add("Url");
            ProductTable.Columns.Add("Material");
            ProductTable.Columns.Add("Color");
            ProductTable.Columns.Add("Dimensions");
            ProductTable.Columns.Add("Stock");
            ProductTable.Columns.Add("MRP");
            ProductTable.Columns.Add("Price");
            ProductTable.Columns.Add("MinQuantity");
            ProductTable.Columns.Add("Discount");
            ProductTable.Columns.Add("ProductSizeImgMbl");
            ProductTable.Columns.Add("ProductSizeId");
            ProductTable.Columns.Add("NotInCart", typeof(bool));
            ProductTable.Columns.Add("InCart", typeof(bool));
            ProductTable.Columns.Add("NoOfItems");
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [ProductId], [ProductName], [Url], [Material], [ProductSizeId], [Dimensions], [Stock],  [Discount], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductSizeImgMbl], [ProductSizeImgDesk], 'True' AS NotInCart, 'False' AS InCart, '0' AS NoOfItems FROM [Product] Where (KeyWords like '%"+keyword+"%' )";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(ProductTable);

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                //throw new Exception(msg);
            }
            finally
            {

                con.Close();
            }
            return ProductTable;
        }

        public DataTable ProducSearchByFilter(string query)
        {
            DataTable ProductTable = new DataTable();

            ProductTable.Columns.Add("ProductId");
            ProductTable.Columns.Add("ProductName");
            ProductTable.Columns.Add("Url");
            ProductTable.Columns.Add("Material");
            ProductTable.Columns.Add("Color");
            ProductTable.Columns.Add("Dimensions");
            ProductTable.Columns.Add("Stock");
            ProductTable.Columns.Add("MRP");
            ProductTable.Columns.Add("Price");
            ProductTable.Columns.Add("MinQuantity");
            ProductTable.Columns.Add("Discount");
            ProductTable.Columns.Add("ProductSizeImgMbl");
            ProductTable.Columns.Add("ProductSizeId");
            ProductTable.Columns.Add("NotInCart", typeof(bool));
            ProductTable.Columns.Add("InCart", typeof(bool));
            ProductTable.Columns.Add("NoOfItems");
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(ProductTable);

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                //throw new Exception(msg);
            }
            finally
            {

                con.Close();
            }
            return ProductTable;
        }

        public DataTable ProductDataFill(int catId, string productSizelbl)
        {
            DataTable ProductTable = new DataTable();

            ProductTable.Columns.Add("ProductId");
            ProductTable.Columns.Add("ProductName");
            ProductTable.Columns.Add("Url");
            ProductTable.Columns.Add("Material");
            ProductTable.Columns.Add("Color");
            ProductTable.Columns.Add("Dimensions");
            ProductTable.Columns.Add("Stock");
            ProductTable.Columns.Add("MRP");
            ProductTable.Columns.Add("Price");
            ProductTable.Columns.Add("MinQuantity");
            ProductTable.Columns.Add("Discount");
            ProductTable.Columns.Add("ProductSizeImgMbl");
            ProductTable.Columns.Add("ProductSizeId");
            ProductTable.Columns.Add("NotInCart", typeof(bool));
            ProductTable.Columns.Add("InCart", typeof(bool));
            ProductTable.Columns.Add("NoOfItems");
            

            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                // string query = "SELECT top(8) [ProductId], [ProductName], [Url], [Title], [KeyWords], [Description], [Details], [CatId], [CatName], [Color], [Type], [Material], [Theme], [SuitableFor], [Trending], [Offers], [Recommends], [Status], [Ratings], [Brand], [ProductSizeId], [Dimensions], [Weight], [Stock], [StocktoDispatch], [Discount], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductSizeImgMbl], [ProductSizeImgDesk], [ProductSizeSlider], '1' AS NotInCart, '0' AS InCart, '0' AS NoOfItems FROM [Product] Where [CatId]='" + catId+"' and [ProductSizeLabel]='"+ productSizelbl + "' ";

               string query = "SELECT top(8) [ProductId], [ProductName], [Url], [Material], [ProductSizeId], [Dimensions], [Stock],  [Discount], [MRP], [Price], [MinQuantity], [ProductSizeLabel], [ProductSizeImgMbl], [ProductSizeImgDesk], 'True' AS NotInCart, 'False' AS InCart, '0' AS NoOfItems FROM [Product] Where [CatId]='" + catId + "' and [ProductSizeLabel]='" + productSizelbl + "' ";


                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(ProductTable);

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                //throw new Exception(msg);
            }
            finally
            {

                con.Close();
            }
            return ProductTable;
        }

        public ArrayList packInfo(int productSizeid)
        {
            ArrayList ProductData = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand(" SELECT [Price], [MRP], [Dimensions], [MinQuantity], [Stock], [Weight], [ProductSizeCode] FROM [ProductSize] WHERE ([ProductSizeId] = '" + productSizeid + "')", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ProductData.Add(dr[0]);
                    ProductData.Add(dr[1]);
                    ProductData.Add(dr[2]);
                    ProductData.Add(dr[3]);
                    ProductData.Add(dr[4]);
                    ProductData.Add(dr[5]);
                    ProductData.Add(dr[6]);



                }
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return ProductData;
        }

        public ArrayList getTabData()
        {
            ArrayList Tabdata = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT    CatId1, CatName1, CatId2, CatName2, CatId3, CatName3, CatId4, CatName4  FROM Login  ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Tabdata.Add(dr[0]);
                    Tabdata.Add(dr[1]);
                    Tabdata.Add(dr[2]);
                    Tabdata.Add(dr[3]);
                    Tabdata.Add(dr[4]);
                    Tabdata.Add(dr[5]);
                    Tabdata.Add(dr[6]);
                    Tabdata.Add(dr[7]);
                }
            }

            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return Tabdata;
        }

        public ArrayList getbannerdata()
        {
            ArrayList arrBanner = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand(" SELECT  DeskImg, URL, SliderTitle, SliderSubTitle  FROM Banner", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
               while (dr.Read())
                {
                    arrBanner.Add(dr[0]);
                    arrBanner.Add(dr[1]);
                    arrBanner.Add(dr[2]);
                    arrBanner.Add(dr[3]);
                    
                  

                }
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return arrBanner;
        }

        public int ClientRegisterPage(string username, string phoneNumber, string email, string passwword, string address, int postalPIN, string aBN )
        {
            int Clientid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO Client (Name , Mobile , Email , Password, Address, PostalPIN, ABN)  output inserted.ClientId VALUES "
                   + "(@Name , @Mobile , @Email , @Password, @Address, @PostalPIN, @ABN)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[7];


                param[0] = new SqlParameter("@Name", SqlDbType.VarChar, 200);
                param[1] = new SqlParameter("@Mobile", SqlDbType.VarChar, 16);
                param[2] = new SqlParameter("@Email", SqlDbType.VarChar, 200);
                param[3] = new SqlParameter("@Password", SqlDbType.VarChar, 200);
                param[4] = new SqlParameter("@Address", SqlDbType.VarChar, 8000);
                param[5] = new SqlParameter("@PostalPIN", SqlDbType.Int, 4);
                param[6] = new SqlParameter("@ABN", SqlDbType.VarChar, 15);
               


                param[0].Value = username;
                param[1].Value = phoneNumber;
                param[2].Value = email;
                param[3].Value = passwword;
                param[4].Value = address;
                param[5].Value = postalPIN;
                param[6].Value = aBN;
               

                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                Clientid = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                con.Close();
            }
            return Clientid;
        }



        public int ClientRegisterPageNew(string username, string phoneNumber, string email, string passwword, string address, int postalPIN, string aBN, string BusinessDes)
        {
            int Clientid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO Client (Name , Mobile , Email , Password, Address, PostalPIN, ABN, BusinessDetails)  output inserted.ClientId VALUES "
                   + "(@Name , @Mobile , @Email , @Password, @Address, @PostalPIN, @ABN, @BusinessDetails)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[8];


                param[0] = new SqlParameter("@Name", SqlDbType.VarChar, 200);
                param[1] = new SqlParameter("@Mobile", SqlDbType.VarChar, 16);
                param[2] = new SqlParameter("@Email", SqlDbType.VarChar, 200);
                param[3] = new SqlParameter("@Password", SqlDbType.VarChar, 200);
                param[4] = new SqlParameter("@Address", SqlDbType.VarChar, 8000);
                param[5] = new SqlParameter("@PostalPIN", SqlDbType.Int, 4);
                param[6] = new SqlParameter("@ABN", SqlDbType.VarChar, 15);
                param[7] = new SqlParameter("@BusinessDetails", SqlDbType.VarChar, 8000);


                param[0].Value = username;
                param[1].Value = phoneNumber;
                param[2].Value = email;
                param[3].Value = passwword;
                param[4].Value = address;
                param[5].Value = postalPIN;
                param[6].Value = aBN;
                param[7].Value = BusinessDes;

                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                Clientid = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                con.Close();
            }
            return Clientid;
        }

        public int UpdateClientData(int ClientID, string postalPIN, string address)
        {
            int ClientId = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Client  SET PostalPIN= '" + postalPIN + "', Address='"+ address + "'  WHERE  (ClientId = '" + ClientID + "')", con);
          
            try
            {
                con.Open();
                ClientId = cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
            }
            finally
            {
                con.Close();

            }
            return ClientId;
        }

        public int InsertOrder(int clientId, string clientName, string mobile, string email, string address, string aBN, string timeStamp, string orderDetails, double subtotal, double tax, double shipping, double total, double grandTotal, double saving, int productCount, int packcount)
        {
            int OrderId = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO OrderSummary (ClientId , ClientName , Mobile , Email, Address, ABN, Date, OrderDetails, SubTotal, Tax, DeliveryCharge, TotalAmount, GrandTotal, Saving, ProductCount, Packcount)  output inserted.OrderId VALUES "
                   + "(@ClientId , @ClientName , @Mobile , @Email, @Address, @ABN, @Date, @OrderDetails, @SubTotal, @Tax, @DeliveryCharge, @TotalAmount, @GrandTotal, @Saving, @ProductCount, @Packcount)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[16];


                param[0] = new SqlParameter("@ClientId", SqlDbType.Int, 4);
                param[1] = new SqlParameter("@ClientName", SqlDbType.VarChar, 100);
                param[2] = new SqlParameter("@Mobile", SqlDbType.VarChar, 16);
                param[3] = new SqlParameter("@Email", SqlDbType.VarChar, 200);
                param[4] = new SqlParameter("@Address", SqlDbType.VarChar, 5000);
                param[5] = new SqlParameter("@ABN", SqlDbType.VarChar, 15);
                param[6] = new SqlParameter("@Date", SqlDbType.VarChar, 50);
                param[7] = new SqlParameter("@OrderDetails", SqlDbType.VarChar, 5000);
                param[8] = new SqlParameter("@SubTotal", SqlDbType.Decimal, 5);
                param[9] = new SqlParameter("@Tax", SqlDbType.Decimal, 5);
                param[10] = new SqlParameter("@DeliveryCharge", SqlDbType.Decimal, 5);
                param[11] = new SqlParameter("@TotalAmount", SqlDbType.Decimal, 5);
                param[12] = new SqlParameter("@GrandTotal", SqlDbType.Decimal, 5);
                param[13] = new SqlParameter("@Saving", SqlDbType.Decimal, 5);
                param[14] = new SqlParameter("@ProductCount", SqlDbType.Int, 4);
                param[15] = new SqlParameter("@Packcount", SqlDbType.Int, 4);




                param[0].Value = clientId;
                param[1].Value = clientName;
                param[2].Value = mobile;
                param[3].Value = email;
                param[4].Value = address;
                param[5].Value = aBN;
                param[6].Value = timeStamp;
                param[7].Value = orderDetails;
                param[8].Value = subtotal;
                param[9].Value = tax;
                param[10].Value = shipping;
                param[11].Value = total;
                param[12].Value = grandTotal;
                param[13].Value = saving;
                param[14].Value = productCount;
                param[15].Value = packcount;
               

                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                OrderId = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                con.Close();
            }
            return OrderId;
        }

        public ArrayList getProductdata(int ProductSizeId)
        {
            ArrayList ProductData = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand(" SELECT  ProductSize.ProductSizeId, Product.ProductId, Product.ProductName, Product.CatId, Product.Material, Product.Color, Product.Dimensions, Product.Stock, Product.MRP, Product.Price, Product.MinQuantity, Product.Discount, Product.ProductSizeImgMbl FROM  ProductSize INNER JOIN Product ON ProductSize.ProductId = Product.ProductId WHERE  (ProductSize.ProductSizeId = '" + ProductSizeId + "')", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ProductData.Add(dr[0]);
                    ProductData.Add(dr[1]);
                    ProductData.Add(dr[2]);
                    ProductData.Add(dr[3]);
                    ProductData.Add(dr[4]);
                    ProductData.Add(dr[5]);
                    ProductData.Add(dr[6]);
                    ProductData.Add(dr[7]);
                    ProductData.Add(dr[8]);
                    ProductData.Add(dr[9]);
                    ProductData.Add(dr[10]);
                    ProductData.Add(dr[11]);
                    ProductData.Add(dr[12]);



                }
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return ProductData;
        }

        public void orderdetailsInsert(int orderId, int productSizeId, int productId, string productName, int catId, string material, string color, string dimensions, int stock, decimal mRP, decimal price, int minQuantity, int discount, string productSizeImgMbl, int noOfItems, decimal totalMrp, decimal totalPrice)
        {
            
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO OrderDetails (OrderId , ProductSizeId , ProductId , ProductName, CatId, Material, Color, Dimensions, Stock, MRP, Price, MinQuantity, Discount, ProductSizeImgMbl, NoOfItems, TotalMrp, TotalPrice )  output inserted.OrderDetailsId VALUES "
                   + "(@OrderId , @ProductSizeId , @ProductId , @ProductName, @CatId, @Material, @Color, @Dimensions, @Stock, @MRP, @Price, @MinQuantity, @Discount, @ProductSizeImgMbl, @NoOfItems, @TotalMrp, @TotalPrice)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[17];


                param[0] = new SqlParameter("@OrderId", SqlDbType.Int, 4);
                param[1] = new SqlParameter("@ProductSizeId", SqlDbType.Int, 4);
                param[2] = new SqlParameter("@ProductId", SqlDbType.Int, 4);
                param[3] = new SqlParameter("@ProductName", SqlDbType.VarChar, 1000);
                param[4] = new SqlParameter("@CatId", SqlDbType.Int, 4);
                param[5] = new SqlParameter("@Material", SqlDbType.VarChar, 200);
                param[6] = new SqlParameter("@Color", SqlDbType.VarChar, 200);
                param[7] = new SqlParameter("@Dimensions", SqlDbType.VarChar, 200);
                param[8] = new SqlParameter("@Stock", SqlDbType.Int, 4);
                param[9] = new SqlParameter("@MRP", SqlDbType.Decimal, 5);
                param[10] = new SqlParameter("@Price", SqlDbType.Decimal, 5);
                param[11] = new SqlParameter("@MinQuantity", SqlDbType.Int, 4);
                param[12] = new SqlParameter("@Discount", SqlDbType.Int, 4);
                param[13] = new SqlParameter("@ProductSizeImgMbl", SqlDbType.VarChar, 100);
                param[14] = new SqlParameter("@NoOfItems", SqlDbType.Int, 4);
                param[15] = new SqlParameter("@TotalMrp", SqlDbType.Decimal, 5);
                param[16] = new SqlParameter("@TotalPrice", SqlDbType.Decimal, 5);




                param[0].Value = orderId;
                param[1].Value = productSizeId;
                param[2].Value = productId;
                param[3].Value = productName;
                param[4].Value = catId;
                param[5].Value = material;
                param[6].Value = color;
                param[7].Value = dimensions;
                param[8].Value = stock;
                param[9].Value = mRP;
                param[10].Value = price;
                param[11].Value = minQuantity;
                param[12].Value = discount;
                param[13].Value = productSizeImgMbl;
                param[14].Value = noOfItems;
                param[15].Value = totalMrp;
                param[16].Value = totalPrice;
                


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
               cmd.ExecuteScalar();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
               

            }
            finally
            {
                con.Close();
            }
            
        }

        public ArrayList findClientDetailsById(int clientId)
        {
            ArrayList ClientName = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand(" SELECT   Name, Mobile, Email, Address, ABN  FROM Client  WHERE (ClientId  ='" + clientId + "' ) ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ClientName.Add(dr[0]);
                    ClientName.Add(dr[1]);
                    ClientName.Add(dr[2]);
                    ClientName.Add(dr[3]);
                    ClientName.Add(dr[4]);
                    

                }
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return ClientName;
        }
    }
}
