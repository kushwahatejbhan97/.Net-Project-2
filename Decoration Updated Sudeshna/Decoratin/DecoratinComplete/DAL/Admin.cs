using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Collections;
using System.Data;

namespace DAL
{

    public class Admin
    {
        SqlCommand cmd;
        SqlCommand cmd1;
        SqlConnection con;
        SqlTransaction transaction;
        SqlDataAdapter da = new SqlDataAdapter();

        public int insertCategory(string input, string uRL, string title, string description, string keyword)
        {
            int CatId = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO Category (CatName , Url , Title , Description, Keyword)  output inserted.CatId VALUES "
                   + "(@CatName, @Url, @Title, @Description, @Keyword)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[5];


                param[0] = new SqlParameter("@CatName", SqlDbType.VarChar, 500);
                param[1] = new SqlParameter("@Url", SqlDbType.VarChar, 500);
                param[2] = new SqlParameter("@Title", SqlDbType.VarChar, 200);
                param[3] = new SqlParameter("@Description", SqlDbType.VarChar, 2000);
                param[4] = new SqlParameter("@Keyword", SqlDbType.VarChar, 2000);


                param[0].Value = input;
                param[1].Value = uRL;
                param[2].Value = title;
                param[3].Value = description;
                param[4].Value = keyword;

                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                CatId = Int32.Parse(cmd.ExecuteScalar().ToString());
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
            return CatId;
        }

        public int insertTagDetails(int catId, string tagName, string uRL)
        {
            int TagId = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO Tag (TagName , CatId , Url)  output inserted.TagId VALUES "
                   + "(@TagName , @CatId , @Url)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[3];


                param[0] = new SqlParameter("@TagName", SqlDbType.VarChar, 100);
                param[1] = new SqlParameter("@CatId", SqlDbType.Int, 4);
                param[2] = new SqlParameter("@Url", SqlDbType.VarChar, 150);
               


                param[0].Value = tagName;
                param[1].Value = catId;
                param[2].Value = uRL;
                

                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                TagId = Int32.Parse(cmd.ExecuteScalar().ToString());
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
            return TagId;
        }

        public int UpdateTabData(int catId1, string catName1, int catId2, string catName2, int catId3, string catName3, int catId4, string catName4)
        {
            int rowsUpdated = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Login  SET CatId1='" + catId1 + "', CatName1= '" + catName1 + "', CatId2='" + catId2 + "', CatName2= '" + catName2 + "' , CatId3='" + catId3 + "', CatName3= '" + catName3 + "' , CatId4='" + catId4 + "', CatName4= '" + catName4 + "'", con);

            try
            {
                con.Open();
                rowsUpdated =  cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
            return rowsUpdated;
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


        public string Stock()
        {
            String al = "0";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(@" SELECT        COUNT(ProductSizeId) AS Expr1 FROM ProductSize ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al = dr[0].ToString();


                }
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
            return al;
        }

        public string CountUsers()
        {
            String al = "0";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(@" SELECT        COUNT(ClientId) AS Expr1
             FROM            Client ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al = dr[0].ToString();


                }
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
            return al;
        }

        public string numberoforder()
        {
            String al = "0";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(@" SELECT        COUNT(OrderId) AS Expr1 FROM OrderSummary ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al = dr[0].ToString();


                }
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
            return al;
        }

        public string amount()
        {
            String al = "0";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(@"SELECT        SUM(TotalAmount) AS Quant
FROM            OrderSummary  WHERE ([Status] = 5)    ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al = dr[0].ToString();


                }
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
            return al;
        }

        public int UpdateBanner(string bannertitle, string bannerSubtitle, string bannerurl, int BannerId)
        {
            int NoOfRowsUpdated = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Banner  SET SliderTitle='" + bannertitle + "', SliderSubTitle= '" + bannerSubtitle + "', URL= '" + bannerurl + "'  WHERE  (BannerId = '" + BannerId + "')", con);

            try
            {
                con.Open();
                NoOfRowsUpdated = cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
            return NoOfRowsUpdated;
        }

        public int UpdateOrderItem(int orderDetailsId)
        {
            int rowUpdated = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE       OrderDetails SET Status = 0, NoOfItems = 0, TotalPrice = 0 WHERE  (OrderDetailsId = '" + orderDetailsId + "') and (Status = 1)", con);
            //DELETE FROM Order_details WHERE (Id = '" + Id + "')
            try
            {
                con.Open();
                rowUpdated = cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
            }
            finally
            {
                con.Close();

            }
            return rowUpdated;
        }

        public void deletedata(int productSizeId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("Delete from ProductSize  WHERE  (ProductSizeId = '" + productSizeId + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }

        public void UpdateOrderStatus(int orderId, int Status, String StatusText)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE OrderSummary  SET Status='" + Status + "', StatusText= '"+ StatusText +"'  WHERE  (OrderId = '" + orderId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        public DataTable OrderDataFill(int status)
        {
            DataTable OrderTable = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [OrderId], [ClientId], [ClientName], [Mobile], [Email], [Address], [ABN], [Date], [Status], [CurrentStatus], [StatusText], [OrderDetails], [SubTotal], [Tax], [TotalAmount],[GrandTotal], [DeliveryCharge], [Saving], [ProductCount], [Packcount] , [PaymentMode], [PaymentStatus], [DeliveredDate], [TxnId], [ExpectedDelDate], [cupon], [cuponCode], [couponDis], [CouponTitle], [CouponDescription] FROM [OrderSummary] WHERE ([Status] = '" + status + "') ORDER BY [OrderId] ASC";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(OrderTable);

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
            return OrderTable;
        }


        public DataTable TabDataFill()
        {
            DataTable OrderTable = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [CatId], [CatName] FROM [Category]";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(OrderTable);

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
            return OrderTable;
        }
        public void deletedatabyProduct(int Productid)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("Delete from Product  WHERE  (ProductId = '" + Productid + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }

        public void deleteProductSizebyProductid(int Productid)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("Delete from ProductSize  WHERE  (ProductId = '" + Productid + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }
        public DataTable OrderDataFillByOrderId(int status, int orderId)
        {
            DataTable OrderTable = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [OrderId], [ClientId], [ClientName], [Mobile], [Email], [Address], [ABN], [Date], [Status], [CurrentStatus], [StatusText], [OrderDetails], [SubTotal], [Tax], [TotalAmount],[GrandTotal], [DeliveryCharge], [Saving], [ProductCount], [Packcount] , [PaymentMode], [PaymentStatus], [DeliveredDate], [TxnId], [ExpectedDelDate], [cupon], [cuponCode], [couponDis], [CouponTitle], [CouponDescription] FROM [OrderSummary] WHERE ([Status] = '" + status + "') And ([OrderId]=" + orderId + ") ORDER BY [OrderId] ASC";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(OrderTable);

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
            return OrderTable;
        }

        public void updateProductbyProductSizeMakeItPrimarynew(int productId, int productSizeId, string dimensions, string weight, string stock, bool statusPSize, string mRP, string price, string minQuantity, int stocktoDispatch, int discount, string productSizeLabel, string productSizeImgMbl, string productSizeImgDesk, string productSizeSlider)
        {
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand("UPDATE Product SET ProductSizeId='" + productSizeId + "' ,   Dimensions='" + dimensions + "', Weight='" + weight + "', Stock='" + stock + "', Status='" + statusPSize + "' ,MRP='" + mRP + "',Price='" + price + "',MinQuantity='" + minQuantity + "',StocktoDispatch='" + stocktoDispatch + "',Discount='" + discount + "' , ProductSizeLabel='" + productSizeLabel + "',ProductSizeImgMbl='" + productSizeImgMbl + "',ProductSizeImgDesk='" + productSizeImgDesk + "',ProductSizeSlider='" + productSizeSlider + "' Where (ProductId='" + productId + "') ", con);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                // throw new Exception(msg);
            }
            finally
            {
                con.Close();

            }
        }

        public void UpdateBannerByBannerCatPage(string bannertitle, string bannerSubtitle, string bannerurl, int BannerCatPageId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE BannerForCatPage  SET SliderTitle='" + bannertitle + "', SliderSubTitle= '" + bannerSubtitle + "', URL= '" + bannerurl + "'  WHERE  (BannerCatPageId = '" + BannerCatPageId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
           
        }

        public void UpdateSliderMblImg(string fn2, int sliderId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Slider  SET MblImg='" + fn2 + ".jpg" + "' WHERE  (id = '" + sliderId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        public void UpdateSliderDeskImg(string fn1, int sliderId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Slider  SET DeskImg='" + fn1 + ".jpg" + "' WHERE  (id = '" + sliderId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        public void UpdateBannerDeskImg(string fn1, int bannerId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Banner  SET DeskImg='" + fn1 + ".jpg" + "' WHERE  (BannerId = '" + bannerId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }


        public void UpdateBannerlImg(string fn2, int bannerId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Banner  SET MblImg='" + fn2 + ".jpg" + "' WHERE  (BannerId = '" + bannerId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        public int insertSlider(string sliderName, bool status, string slidertitle, string sliderSubtitle, string url)
        {
            int SliderId = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO Slider (name , show, SliderTitle, SliderSubTitle, URL)  output inserted.id VALUES "
                   + "(@name , @show, @SliderTitle, @SliderSubTitle, @URL)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[5];


                param[0] = new SqlParameter("@name", SqlDbType.VarChar, 50);
                param[1] = new SqlParameter("@show", SqlDbType.Bit, 1);
                param[2] = new SqlParameter("@SliderTitle", SqlDbType.VarChar, 200);
                param[3] = new SqlParameter("@SliderSubTitle", SqlDbType.VarChar, 200);
                param[4] = new SqlParameter("@URL", SqlDbType.VarChar, 200);
               


                param[0].Value = sliderName;
                param[1].Value = status;
                param[2].Value = slidertitle;
                param[3].Value = sliderSubtitle;
                param[4].Value = url;
             


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                SliderId = Int32.Parse(cmd.ExecuteScalar().ToString());
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



            return SliderId;
        }

      
        public void updatepass(int userId, string newpassword)
        {
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand("UPDATE Login SET  password = '" + newpassword + "' Where(userid='" + userId + "') ", con);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();

            }
        }

        public int insertPinAmount(int pinCode, string area)
        {
            int PinId = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO Pin_Amount_Table (pin , Area)  output inserted.id VALUES "
                   + "(@pin , @Area)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[2];


                param[0] = new SqlParameter("@pin", SqlDbType.Int, 4);
                param[1] = new SqlParameter("@Area", SqlDbType.VarChar, 150);




                param[0].Value = pinCode;
                param[1].Value = area;



                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                PinId = Int32.Parse(cmd.ExecuteScalar().ToString());
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
            return PinId;
        }

        public void UpdateProductSizeTabeleCatDeskImg(string fn1, int productSizeId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE ProductSize  SET ProductSizeImgDesk='" + fn1 + ".jpg" + "' WHERE  (ProductSizeId = '" + productSizeId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        public int insertEmpIdtoDel(string delName, string delAddress, string delPhone, string delAddressProof, string delPassword)
        {
            int EmpId = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO Delivery (Dname , Daddress , Dmobile , Daddressproof, Dpassword)  output inserted.DID VALUES "
                   + "(@Dname , @Daddress , @Dmobile , @Daddressproof, @Dpassword)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[5];


                param[0] = new SqlParameter("@Dname", SqlDbType.VarChar, 100);
                param[1] = new SqlParameter("@Daddress", SqlDbType.VarChar, 200);
                param[2] = new SqlParameter("@Dmobile", SqlDbType.VarChar, 100);
                param[3] = new SqlParameter("@Daddressproof", SqlDbType.VarChar, 100);
                param[4] = new SqlParameter("@Dpassword", SqlDbType.VarChar, 100);



                param[0].Value = delName;
                param[1].Value = delAddress;
                param[2].Value = delPhone;
                param[3].Value = delAddressProof;
                param[4].Value = delPassword;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                EmpId = Int32.Parse(cmd.ExecuteScalar().ToString());
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
            return EmpId;
        }

        public void UpdateProductSizeTableSlider(string fn3, int productSizeId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE ProductSize  SET ProductSizeSlider='" + fn3 + ".jpg" + "' WHERE  (ProductSizeId = '" + productSizeId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        public void UpdateProductSizeTableMblImg(string fn2, int productSizeId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE ProductSize  SET ProductSizeImgMbl='" + fn2 + ".jpg" + "' WHERE  (ProductSizeId = '" + productSizeId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        public void UpdateEditProductSizeData(int productSizeId, string dimensions, string weight, int stock, bool statusPSize, float mRP, float price, int minquantity, String ProductSizeCode)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE ProductSize SET Dimensions ='" + dimensions + "',Weight ='" + weight + "', Stock ='" + stock + "', Status ='" + statusPSize + "', MRP ='" + mRP + "', Price ='" + price + "', MinQuantity ='" + minquantity + "', ProductSizeCode='"+ProductSizeCode+"' WHERE  (ProductSizeId = '" + productSizeId + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }

        public ArrayList getProductSizeTableData(int productSizeId)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand(" SELECT   Dimensions, Weight, Stock, Status, MRP, Price, MinQuantity, StocktoDispatch, Discount, ProductSizeLabel, ProductSizeImgMbl, ProductSizeImgDesk, ProductSizeSlider, ProductSizeCode  FROM ProductSize  WHERE (ProductSizeId  ='" + productSizeId + "' ) ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al.Add(dr[0]);
                    al.Add(dr[1]);
                    al.Add(dr[2]);
                    al.Add(dr[3]);
                    al.Add(dr[4]);
                    al.Add(dr[5]);
                    al.Add(dr[6]);
                    al.Add(dr[7]);
                    al.Add(dr[8]);
                    al.Add(dr[9]);
                    al.Add(dr[10]);
                    al.Add(dr[11]);
                    al.Add(dr[12]);
                    al.Add(dr[13]);


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
            return al;
        }

        public void UpdateProductTableMblImg(string fn2, int productId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Product  SET ProductSizeImgMbl='" + fn2 + ".jpg" + "' WHERE  (ProductId = '" + productId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        public void UpdateProductTableSlider(string fn3, int productId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Product  SET ProductSizeSlider='" + fn3 + ".jpg" + "' WHERE  (ProductId = '" + productId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        public void UpdateProductTabeleCatDeskImg(string fn1, int productId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Product  SET ProductSizeImgDesk='" + fn1 + ".jpg" + "' WHERE  (ProductId = '" + productId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        public ArrayList getProductData(int productId)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand(" SELECT   ProductName, Brand, KeyWords, Details, CatId,  Color, Material, Type, Theme, SuitableFor, Trending, Offers, Recommends, Status  FROM Product  WHERE (ProductId  ='" + productId + "' ) ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al.Add(dr[0]);
                    al.Add(dr[1]);
                    al.Add(dr[2]);
                    al.Add(dr[3]);
                    al.Add(dr[4]);
                    al.Add(dr[5]);
                    al.Add(dr[6]);
                    al.Add(dr[7]);
                    al.Add(dr[8]);
                    al.Add(dr[9]);
                    al.Add(dr[10]);
                    al.Add(dr[11]);
                    al.Add(dr[12]);
                    al.Add(dr[13]);





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
            return al;
        }

        public void UpdateProductData(int productId, string productName, string brandName, string keywords, string details, int catId, string catname, string color, string material, string type, string theme, string suitableFor, bool trending, bool offers, bool recommends, bool status, string Tags)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Product SET ProductName ='" + productName + "',Brand ='" + brandName + "', KeyWords ='" + keywords + "', Details ='" + details + "', CatId ='" + catId + "', CatName ='" + catname + "' , Color ='" + color + "' , Material ='" + material + "' , Type ='" + type + "' , Theme ='" + theme + "' , SuitableFor ='" + suitableFor + "' , Trending ='" + trending + "' , Offers ='" + offers + "' , Recommends ='" + recommends + "',Status ='" + status + "',Tags ='" + Tags + "'  WHERE  (ProductId = '" + productId + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }

        public int loginpage(string username, string password)
        {
            int userid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT   userid  FROM Login  WHERE (username  ='" + username + "' ) and (password  ='" + password + "' )", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    userid = Convert.ToInt32(dr[0]);
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
            return userid;
        }



        public int insertProduct(string productName, string uRL, string title, string keywords, string description, string details, int catId, string catname, string color, string type, string material, string theme, string suitableFor, float ratings, string brandName, bool trending, bool offers, bool recommends, bool status, string Tags)
        {
            int ProductId = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO Product (ProductName , Url , Title , KeyWords, Description, Details,CatId,CatName,Color,Type,Material,Theme,SuitableFor,Trending,Offers,Recommends,Status,Ratings,Brand, Tags)  output inserted.ProductId VALUES "
                   + "(@ProductName , @Url , @Title , @KeyWords, @Description, @Details, @CatId, @CatName, @Color, @Type, @Material, @Theme, @SuitableFor, @Trending, @Offers, @Recommends, @Status, @Ratings, @Brand, @Tags)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[20];


                param[0] = new SqlParameter("@ProductName", SqlDbType.VarChar, 1000);
                param[1] = new SqlParameter("@Url", SqlDbType.VarChar, 500);
                param[2] = new SqlParameter("@Title", SqlDbType.VarChar, 200);
                param[3] = new SqlParameter("@KeyWords", SqlDbType.VarChar, 8000);
                param[4] = new SqlParameter("@Description", SqlDbType.VarChar, 8000);
                param[5] = new SqlParameter("@Details", SqlDbType.VarChar, 8000);
                param[6] = new SqlParameter("@CatId", SqlDbType.Int, 4);
                param[7] = new SqlParameter("@CatName", SqlDbType.VarChar, 200);
                param[8] = new SqlParameter("@Color", SqlDbType.VarChar, 200);
                param[9] = new SqlParameter("@Type", SqlDbType.VarChar, 200);
                param[10] = new SqlParameter("@Material", SqlDbType.VarChar, 200);
                param[11] = new SqlParameter("@Theme", SqlDbType.VarChar, 200);
                param[12] = new SqlParameter("@SuitableFor", SqlDbType.VarChar, 200);
                param[13] = new SqlParameter("@Trending", SqlDbType.Bit, 1);
                param[14] = new SqlParameter("@Offers", SqlDbType.Bit, 1);
                param[15] = new SqlParameter("@Recommends", SqlDbType.Bit, 1);
                param[16] = new SqlParameter("@Status", SqlDbType.Bit, 1);
                param[17] = new SqlParameter("@Ratings", SqlDbType.Decimal, 5);
                param[18] = new SqlParameter("@Brand", SqlDbType.VarChar, 200);
                param[19] = new SqlParameter("@Tags", SqlDbType.VarChar, 300);


                param[0].Value = productName;
                param[1].Value = uRL;
                param[2].Value = title;
                param[3].Value = keywords;
                param[4].Value = description;
                param[5].Value = details;
                param[6].Value = catId;
                param[7].Value = catname;
                param[8].Value = color;
                param[9].Value = type;
                param[10].Value = material;
                param[11].Value = theme;
                param[12].Value = suitableFor;
                param[17].Value = ratings;

                param[13].Value = trending;
                param[14].Value = offers;
                param[15].Value = recommends;
                param[16].Value = status;
                param[18].Value = brandName;
                param[19].Value = Tags;




                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                ProductId = Int32.Parse(cmd.ExecuteScalar().ToString());
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
            return ProductId;
        }

        public void updateProduct(int productId, int productSizeId, string dimensions, string weight, int stock, int stocktoDispatch, int discount, bool statusPSize, float mRP, float price, int minquantity, String productSizeLbl, String ProductSizeCode)
        {
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand("UPDATE Product SET   ProductSizeId='" + productSizeId + "', Dimensions='" + dimensions + "',Weight='" + weight + "',Stock='" + stock + "' ,StocktoDispatch='" + stocktoDispatch + "',Discount='" + discount + "',Status='" + statusPSize + "',MRP='" + mRP + "',Price='" + price + "',MinQuantity='" + minquantity + "',ProductSizeLabel='" + productSizeLbl + "', ProductSizeCode='"+ ProductSizeCode +"'  Where (ProductId='" + productId + "') ", con);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                // throw new Exception(msg);
            }
            finally
            {
                con.Close();

            }
        }


        public void updateProductbyProductSize(int productId, int productSizeId, string dimensions, string weight, int stock,  int discount, bool statusPSize, float mRP, float price, int minquantity, String productSizeLbl, String ProductSizeCode)
        {
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand("UPDATE Product SET    Dimensions='" + dimensions + "',Weight='" + weight + "',Stock='" + stock + "' ,Discount='" + discount + "',Status='" + statusPSize + "',MRP='" + mRP + "',Price='" + price + "',MinQuantity='" + minquantity + "',ProductSizeLabel='" + productSizeLbl + "', ProductSizeCode='" + ProductSizeCode + "' Where (ProductId='" + productId + "') and (ProductSizeId='" + productSizeId + "')  ", con);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                // throw new Exception(msg);
            }
            finally
            {
                con.Close();

            }
        }

        public void updateProductbyProductSizeMakeItPrimary(int productId, int productSizeId, string dimensions, string weight, int stock, int discount, bool statusPSize, float mRP, float price, int minquantity, String productSizeLbl)
        {
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand("UPDATE Product SET (ProductSizeId='" + productSizeId + "'),   Dimensions='" + dimensions + "',Weight='" + weight + "',Stock='" + stock + "' ,Discount='" + discount + "',Status='" + statusPSize + "',MRP='" + mRP + "',Price='" + price + "',MinQuantity='" + minquantity + "',ProductSizeLabel='" + productSizeLbl + "' Where (ProductId='" + productId + "') ", con);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                // throw new Exception(msg);
            }
            finally
            {
                con.Close();

            }
        }

        public int insertProductSize(int productId, string dimensions, string weight, int stock, int stocktoDispatch, int discount, bool statusPSize, float mRP, float price, int minquantity, String productSizeLbl, String ProductSizeCode)
        {
            int ProductSizeId = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO ProductSize (Dimensions , Weight , Stock , StocktoDispatch, Discount, Status, MRP, Price, ProductId, MinQuantity, ProductSizeLabel, ProductSizeCode)  output inserted.ProductSizeId VALUES "
                   + "(@Dimensions , @Weight , @Stock , @StocktoDispatch, @Discount, @Status , @MRP , @Price, @ProductId, @MinQuantity, @ProductSizeLabel, @ProductSizeCode)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[12];


                param[0] = new SqlParameter("@Dimensions", SqlDbType.VarChar, 200);
                param[1] = new SqlParameter("@Weight", SqlDbType.VarChar, 200);
                param[2] = new SqlParameter("@Stock", SqlDbType.Int, 4);
                param[3] = new SqlParameter("@StocktoDispatch", SqlDbType.Int, 4);
                param[4] = new SqlParameter("@Discount", SqlDbType.Int, 4);
                param[5] = new SqlParameter("@Status", SqlDbType.Bit, 1);
                param[6] = new SqlParameter("@MRP", SqlDbType.Decimal, 5);
                param[7] = new SqlParameter("@Price", SqlDbType.Decimal, 5);
                param[8] = new SqlParameter("@ProductId", SqlDbType.Int, 4);
                param[9] = new SqlParameter("@MinQuantity", SqlDbType.Int, 4);
                param[10] = new SqlParameter("@ProductSizeLabel", SqlDbType.VarChar, 10);
                
                param[11] = new SqlParameter("@ProductSizeCode", SqlDbType.VarChar, 50);


                param[0].Value = dimensions;
                param[1].Value = weight;
                param[2].Value = stock;
                param[3].Value = stocktoDispatch;
                param[4].Value = discount;
                param[5].Value = statusPSize;
                param[6].Value = mRP;
                param[7].Value = price;
                param[8].Value = productId;
                param[9].Value = minquantity;
                param[10].Value = productSizeLbl;
                param[11].Value = ProductSizeCode;





                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                ProductSizeId = Int32.Parse(cmd.ExecuteScalar().ToString());
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
            return ProductSizeId;
        }




        public void UpdateUrl(string URL)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE ImageResources  SET URL=" + URL + " WHERE  (ImageId = '" + URL + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }

        }

        public void UpdateCatMblImg(string fn2, int catId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Category  SET CatImgMbl='" + fn2 + ".jpg" + "' WHERE  (CatId = '" + catId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }

        }

        public void UpdateCatDeskImg(string fn1, object CatId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Category  SET CatImgDesk='" + fn1 + ".jpg" + "' WHERE  (CatId = '" + CatId + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        public string InsertImage(string location, int typ)
        {
            String insertedid = "";
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO ImageResources (Location, Type)  output inserted.ImageId VALUES "
                   + "(@Location, @Type)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[2];


                param[0] = new SqlParameter("@Location", SqlDbType.VarChar, 500);
                param[1] = new SqlParameter("@Type", SqlDbType.Int, 4);



                param[0].Value = location;
                param[1].Value = typ;



                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                insertedid = cmd.ExecuteScalar().ToString();
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



            return insertedid;
        }
    }
}
