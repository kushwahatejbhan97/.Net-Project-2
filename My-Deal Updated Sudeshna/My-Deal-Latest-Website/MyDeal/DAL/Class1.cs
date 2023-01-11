using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace DAL
{
    public class Class1
    {
        SqlCommand cmd;
        SqlCommand cmd1;
        SqlConnection con;
        SqlTransaction transaction;
        SqlDataAdapter da = new SqlDataAdapter();

        public ArrayList usser_Type_Finder(String username, String password)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT id, access_level, user_name, contactno FROM NewListing_Website_login_tbl WHERE (user_name ='" + username + "') AND (password ='" + password + "')", con);
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
                }
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
            return al;
        }

        public ArrayList getTgImage(int tagid)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT   CatIConImageID FROM NewListing_Website_tags_tbl WHERE  (TagId = '" + tagid + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al.Add(dr[0]);
                    

                }
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
            return al;
        }

        public ArrayList getImage(int catid)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT   CatIConImageID, CatImageID FROM NewListing_Website_category_tbl WHERE        (CatId = '" + catid + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al.Add(dr[0]);
                    al.Add(dr[1]);
                    
                }
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
            return al;
        }

        public int insertListingNew(int catId, string companyname, string emailid, string mobileNo, string landlineno, string yearstablis, string website, string ownername, string cityname, string location, string fulladdress, string password, string des, string map, string tags, string uRL, string Keyword, string RegsitrationDate, string CategoryName)
        {
            int CompanyId = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO NewListing_Website_listing_tbl (CatId, CompanyName , Email , Mobile , LandLine, YearEstablish, Website, OwnerName, City, Location, Address, Password, Describtion, NewMap, Tags,  url, KeyWord, RegsitrationDate, CategoryName )  output inserted.CompanyId VALUES "
                   + "(@CatId, @CompanyName , @Email , @Mobile , @LandLine, @YearEstablish, @Website, @OwnerName, @City, @Location, @Address, @Password, @Describtion, @NewMap, @Tags, @url, @KeyWord, @RegsitrationDate, @CategoryName)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[19];


                param[0] = new SqlParameter("@CatId", SqlDbType.Int, 4);
                param[1] = new SqlParameter("@CompanyName", SqlDbType.VarChar, 200);
                param[2] = new SqlParameter("@Email", SqlDbType.VarChar, 200);
                param[3] = new SqlParameter("@Mobile", SqlDbType.VarChar, 200);
                param[4] = new SqlParameter("@LandLine", SqlDbType.VarChar, 50);
                param[5] = new SqlParameter("@YearEstablish", SqlDbType.VarChar, 50);
                param[6] = new SqlParameter("@Website", SqlDbType.VarChar, 200);
                param[7] = new SqlParameter("@OwnerName", SqlDbType.VarChar, 200);
                param[8] = new SqlParameter("@City", SqlDbType.VarChar, 50);
                param[9] = new SqlParameter("@Location", SqlDbType.VarChar, 500);
                param[10] = new SqlParameter("@Address", SqlDbType.VarChar, 500);
                param[11] = new SqlParameter("@Password", SqlDbType.VarChar, 200);
                param[12] = new SqlParameter("@Describtion", SqlDbType.VarChar, 8000);
                param[13] = new SqlParameter("@NewMap", SqlDbType.VarChar, 300);
                param[14] = new SqlParameter("@Tags", SqlDbType.VarChar, 300);
                param[15] = new SqlParameter("@Url", SqlDbType.VarChar, 2000);
                param[16] = new SqlParameter("@KeyWord", SqlDbType.VarChar, 500);
                param[17] = new SqlParameter("@RegsitrationDate", SqlDbType.VarChar, 50);
                param[18] = new SqlParameter("@CategoryName", SqlDbType.VarChar, 200);

                param[0].Value = catId;
                param[1].Value = companyname;
                param[2].Value = emailid;
                param[3].Value = mobileNo;
                param[4].Value = landlineno;
                param[5].Value = yearstablis;
                param[6].Value = website;
                param[7].Value = ownername;
                param[8].Value = cityname;
                param[9].Value = location;
                param[10].Value = fulladdress;
                param[11].Value = password;
                param[12].Value = des;
                param[13].Value = map;
                param[14].Value = tags;
                param[15].Value = uRL;
                param[16].Value = Keyword;
                param[17].Value = RegsitrationDate;
                param[18].Value = CategoryName;





                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                CompanyId = Int32.Parse(cmd.ExecuteScalar().ToString());
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
            return CompanyId;
        }

        public void UpdateTagIConImageID(string fn1, int id)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE NewListing_Website_tags_tbl  SET CatIConImageID='" + fn1 + "' WHERE  (TagId = '" + id + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
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
        }

        public ArrayList getAllListingData(int companyId)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand(" SELECT   CompanyName, OwnerName, YearEstablish, Mobile, LandLine, Email, Password, Website, Location, Address, Enable, Describtion, Map, Tags, ListingImageID  FROM NewListing_Website_listing_tbl  WHERE (CompanyId  ='" + companyId + "' ) ", con);

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
                    al.Add(dr[14]);


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

        


        

        public ArrayList getUserData(int userid)
        {
            ArrayList ClientData = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT    Name , Email , Mobile , Password, Address  FROM NewListing_Website_User Where UserId ='" + userid + "'  ", con);

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

        public void deletedata(int companyId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("Delete from NewListing_Website_listing_tbl  WHERE  (CompanyId = '" + companyId + "')", con);
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

        public void UpdateProductData(int CompanyId, string companyName, string ownerName, string yearEstablish, string mobile, string landLine, string email, string password, string website, string location, string address, bool enable, string describtion, string map, string tags)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE NewListing_Website_listing_tbl SET CompanyName ='" + companyName + "',OwnerName ='" + ownerName + "', YearEstablish ='" + yearEstablish + "', Mobile ='" + mobile + "', LandLine ='" + landLine + "', Email ='" + email + "' , Password ='" + password + "' , Website ='" + website + "' , Location ='" + location + "' , Address ='" + address + "' , Enable ='" + enable + "' , Describtion ='" + describtion + "' , NewMap ='" + map + "',Tags ='" + tags + "'  WHERE  (CompanyId = '" + CompanyId + "')", con);
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

        public DataTable SelectCompnyByCatName(string catName)
        {
            DataTable OrderTable = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [CompanyId], [CompanyName], [Mobile], [Password], [VerMobile], [CatId], [OwnerName], [YearEstablish], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Latitude], [Longitude], [url], [ListingType], [Priority], [Tags], [ListingImageID] FROM [NewListing_Website_listing_tbl] WHERE ([CategoryName] like '%" + catName + "%' )";
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

        public int getCatidbyUrl(string caturl)
        {

            int catid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT CatId  FROM NewListing_Website_category_tbl Where urlc='" + caturl + "' ", con);

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

        public DataTable SelectCompnyByCatName(int catid)
        {
            DataTable OrderTable = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [CompanyId], [CompanyName], [Mobile], [Password], [VerMobile], [OwnerName], [YearEstablish], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Latitude], [Longitude], [url], [ListingType], [Priority], [Tags], [ListingImageID], [CategoryName] FROM [NewListing_Website_listing_tbl] WHERE [CatId]='" + catid + "'";
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

        public DataTable ListingDataFillbyCat(string catsearch)
        {
            DataTable ListingTable = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [CompanyId], [CompanyName], [Mobile], [Password], [VerMobile], [CatId], [OwnerName], [YearEstablish], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Latitude], [Longitude], [url], [ListingType], [Priority], [Tags], [ListingImageID] FROM [NewListing_Website_listing_tbl] WHERE Where [CatId]='" + catsearch + "' ";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(ListingTable);

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
            return ListingTable;
        }

        public DataTable ListingDataFillbySearch(string keyword)
        {
            DataTable ListingTable = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [CompanyId], [CompanyName], [Mobile], [Password], [VerMobile], [CatId], [OwnerName], [YearEstablish], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Latitude], [Longitude], [url], [ListingType], [Priority], [Tags], [ListingImageID] FROM [NewListing_Website_listing_tbl] WHERE ([KeyWord] like '%" + keyword + "%' )";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(ListingTable);

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
            return ListingTable;
        }

        public int CityInsert(string cityname)
        {

            int Cityid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO Updated_State_City_List (CityName)  output inserted.ID VALUES "
                   + "(@CityName)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[1];


                param[0] = new SqlParameter("@CityName", SqlDbType.VarChar, 200);



                param[0].Value = cityname;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                Cityid = Int32.Parse(cmd.ExecuteScalar().ToString());
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
            return Cityid;
        }

        public void Update_NewListing_Website_listing_tbl_Catname(int id, string Catname)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE  NewListing_Website_listing_tbl  SET  CategoryName = '" + Catname + "' WHERE     (CompanyId = '" + id + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }

        public DataTable SelectListingByCompanyName(string CompanyUrl)
        {
            DataTable OrderTable = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [CompanyId], [CompanyName], [Mobile], [Password], [VerMobile], [CatId], [OwnerName], [YearEstablish], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Latitude], [Longitude], [url], [ListingType], [Priority], [Tags], [ListingImageID],[Describtion],[NewMap],[CategoryName] FROM [NewListing_Website_listing_tbl] WHERE ([url] = '" + CompanyUrl + "' )";
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

        public ArrayList getListingData(int companyId)
        {
            throw new NotImplementedException();
        }

        public ArrayList GetListingDataByNewListing_Website_listing_tbl(String Tags)
        {
            throw new NotImplementedException();
        }

        public int Addlisting_from_site_tbl(int CatId, string CompanyName, string OwnerName, string YearEstablish, string Mobile,
              string LandLine, string Email, string Website, string Location, string Address, string City, string Map,
              string RegsitrationDate, string KeyWord, int TotalReview, string url, string Password, String latitude, String longitude)
        {
            int id = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = @"INSERT INTO NewListing_Website_listing_tbl(CatId, CompanyName, OwnerName, YearEstablish, Mobile, LandLine, Email, Website, Location, Address, City, Map, RegsitrationDate, KeyWord, TotalReview, url, Password, Latitude, Longitude)  
                         OUTPUT  inserted.CompanyId VALUES      
                        (@CatId,@CompanyName,@OwnerName,@YearEstablish,@Mobile,@LandLine,@Email,@Website,@Location,@Address,@City,
                       @Map,@RegsitrationDate,@KeyWord,@TotalReview,@url,@Password,@Latitude,@Longitude)";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[19];

                param[0] = new SqlParameter("@CatId", SqlDbType.VarChar, 50);
                param[1] = new SqlParameter("@CompanyName", SqlDbType.VarChar, 50);
                param[2] = new SqlParameter("@OwnerName", SqlDbType.VarChar, 50);
                param[3] = new SqlParameter("@YearEstablish", SqlDbType.VarChar, 50);
                param[4] = new SqlParameter("@Mobile", SqlDbType.VarChar, 50);
                param[5] = new SqlParameter("@LandLine", SqlDbType.VarChar, 50);
                param[6] = new SqlParameter("@Email", SqlDbType.VarChar, 50);
                param[7] = new SqlParameter("@Website", SqlDbType.VarChar, 50);
                param[8] = new SqlParameter("@Location", SqlDbType.VarChar, 50);
                param[9] = new SqlParameter("@Address", SqlDbType.VarChar, 500);
                param[10] = new SqlParameter("@City", SqlDbType.VarChar, 50);
                param[11] = new SqlParameter("@Map", SqlDbType.VarChar, 50);
                param[12] = new SqlParameter("@RegsitrationDate", SqlDbType.VarChar, 50);
                param[13] = new SqlParameter("@KeyWord", SqlDbType.VarChar, 50);
                param[14] = new SqlParameter("@TotalReview", SqlDbType.Int, 4);
                param[15] = new SqlParameter("@url", SqlDbType.VarChar, 500);
                param[16] = new SqlParameter("@Password", SqlDbType.VarChar, 50);
                param[17] = new SqlParameter("@Latitude", SqlDbType.VarChar, 50);
                param[18] = new SqlParameter("@Longitude", SqlDbType.VarChar, 50);


                param[0].Value = CatId;
                param[1].Value = CompanyName;
                param[2].Value = OwnerName;
                param[3].Value = YearEstablish;
                param[4].Value = Mobile;
                param[5].Value = LandLine;
                param[6].Value = Email;
                param[7].Value = Website;
                param[8].Value = Location;
                param[9].Value = Address;
                param[10].Value = City;
                param[11].Value = Map;
                param[12].Value = RegsitrationDate;
                param[13].Value = KeyWord;
                param[14].Value = TotalReview;
                param[15].Value = url;
                param[16].Value = Password;
                param[17].Value = latitude;
                param[18].Value = longitude;



                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                id = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {


            }


            finally
            {
                con.Close();
            }

            return id;
        }

        public void Update_NewListing_Website_listing_tbl(int id, string listTags)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE  NewListing_Website_listing_tbl  SET  Tags = '" + listTags + "' WHERE     (CompanyId = '" + id + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }

        public int Addlisting_from_site_tble(int CatId, string CompanyName, string OwnerName, string YearEstablish, string Mobile,
           string LandLine, string Email, string Website, string Location, string Address, string City, string Map,
           string RegsitrationDate, string KeyWord, int TotalReview, string url, string Password, String txtDes, String txtMap)
        {
            int id = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = @"INSERT INTO NewListing_Website_listing_tbl(CatId, CompanyName, OwnerName, YearEstablish, Mobile, LandLine, Email, Website, Location, Address, City, Map, RegsitrationDate, KeyWord, TotalReview, url, Password, Describtion, NewMap)  
                         OUTPUT  inserted.CompanyId VALUES      
                        (@CatId,@CompanyName,@OwnerName,@YearEstablish,@Mobile,@LandLine,@Email,@Website,@Location,@Address,@City,
                       @Map,@RegsitrationDate,@KeyWord,@TotalReview,@url,@Password,@Describtion,@NewMap)";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[19];

                param[0] = new SqlParameter("@CatId", SqlDbType.VarChar, 50);
                param[1] = new SqlParameter("@CompanyName", SqlDbType.VarChar, 50);
                param[2] = new SqlParameter("@OwnerName", SqlDbType.VarChar, 50);
                param[3] = new SqlParameter("@YearEstablish", SqlDbType.VarChar, 50);
                param[4] = new SqlParameter("@Mobile", SqlDbType.VarChar, 50);
                param[5] = new SqlParameter("@LandLine", SqlDbType.VarChar, 50);
                param[6] = new SqlParameter("@Email", SqlDbType.VarChar, 50);
                param[7] = new SqlParameter("@Website", SqlDbType.VarChar, 50);
                param[8] = new SqlParameter("@Location", SqlDbType.VarChar, 50);
                param[9] = new SqlParameter("@Address", SqlDbType.VarChar, 500);
                param[10] = new SqlParameter("@City", SqlDbType.VarChar, 50);
                param[11] = new SqlParameter("@Map", SqlDbType.VarChar, 50);
                param[12] = new SqlParameter("@RegsitrationDate", SqlDbType.VarChar, 50);
                param[13] = new SqlParameter("@KeyWord", SqlDbType.VarChar, 50);
                param[14] = new SqlParameter("@TotalReview", SqlDbType.Int, 4);
                param[15] = new SqlParameter("@url", SqlDbType.VarChar, 500);
                param[16] = new SqlParameter("@Password", SqlDbType.VarChar, 50);
                param[17] = new SqlParameter("@Describtion", SqlDbType.VarChar, 8000);
                param[18] = new SqlParameter("@NewMap", SqlDbType.VarChar, 50);



                param[0].Value = CatId;
                param[1].Value = CompanyName;
                param[2].Value = OwnerName;
                param[3].Value = YearEstablish;
                param[4].Value = Mobile;
                param[5].Value = LandLine;
                param[6].Value = Email;
                param[7].Value = Website;
                param[8].Value = Location;
                param[9].Value = Address;
                param[10].Value = City;
                param[11].Value = Map;
                param[12].Value = RegsitrationDate;
                param[13].Value = KeyWord;
                param[14].Value = TotalReview;
                param[15].Value = url;
                param[16].Value = Password;
                param[17].Value = txtDes;
                param[18].Value = txtMap;




                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                id = Int32.Parse(cmd.ExecuteScalar().ToString());
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

            return id;
        }

        public void UpdateListingImageID(string fn1, int id)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE NewListing_Website_listing_tbl  SET ListingImageID='" + fn1 + "' WHERE  (CompanyId = '" + id + "')", con);

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

        public int UserloginPage(string username, string password)
        {
            int Userid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT   UserId  FROM NewListing_Website_User  WHERE (Mobile  ='" + username + "' ) and (Password  ='" + password + "' ) ", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Userid = Convert.ToInt32(dr[0]);
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
            return Userid;
        }

        public int UserRegisterPage(string name, string email, string phone, string password)
        {
            int Userid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO NewListing_Website_User (Name , Email , Mobile , Password)  output inserted.UserId VALUES "
                   + "(@Name , @Email , @Mobile , @Password)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[4];


                param[0] = new SqlParameter("@Name", SqlDbType.VarChar, 200);
                param[1] = new SqlParameter("@Email", SqlDbType.VarChar, 200);
                param[2] = new SqlParameter("@Mobile", SqlDbType.VarChar, 16);
                param[3] = new SqlParameter("@Password", SqlDbType.VarChar, 200);




                param[0].Value = name;
                param[1].Value = email;
                param[2].Value = phone;
                param[3].Value = password;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                Userid = Int32.Parse(cmd.ExecuteScalar().ToString());

            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                con.Close();
            }
            return Userid;
        }

        public ArrayList Lp_usser_login_Finder(String username, String password)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT CompanyId, CompanyName, VerMobile FROM NewListing_Website_listing_tbl WHERE (Mobile ='" + username + "') AND (Password ='" + password + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al.Add(dr[0]);
                    al.Add(dr[1]);
                    al.Add(dr[2]);
                }
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
            return al;
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

        public void UpdateCatIConImageID(string fn2, int id)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE NewListing_Website_category_tbl  SET CatIConImageID='" + fn2 + "' WHERE  (CatId = '" + id + "')", con);

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

        public void UpdateCatImageID(string fn1, int id)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE NewListing_Website_category_tbl  SET CatImageID='" + fn1 + "' WHERE  (CatId = '" + id + "')", con);

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

        public int add_New_Category(String CategoryName, Boolean popular, Boolean hr, Boolean industries, String compurl)
        {
            int cat_id = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO NewListing_Website_category_tbl (CategoryName, Enable, EnableBottom, Industries, urlc) output inserted.Catid VALUES (@CategoryName,@Enable,@EnableBottom,@Industries,@urlc)";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[5];


                param[0] = new SqlParameter("@CategoryName", SqlDbType.VarChar, 500);
                param[1] = new SqlParameter("@Enable", SqlDbType.VarChar, 500);
                param[2] = new SqlParameter("@EnableBottom", SqlDbType.VarChar, 500);
                param[3] = new SqlParameter("@Industries", SqlDbType.VarChar, 500);
                param[4] = new SqlParameter("@urlc", SqlDbType.VarChar, 200);


                param[0].Value = CategoryName;
                param[1].Value = popular;
                param[2].Value = hr;
                param[3].Value = industries;
                param[4].Value = compurl;



                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                cat_id = Int32.Parse(cmd.ExecuteScalar().ToString());
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

            return cat_id; ;
        }

        public int Company_tags_table(int compid, string listTags)
        {
            int id = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO NewListing_Website_listing_Tag_tbl (CompanyId, Tags) OUTPUT inserted.CompTagId VALUES (@CompanyId,@Tags)";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[2];


                param[0] = new SqlParameter("@CompanyId", SqlDbType.Int, 4);
                param[1] = new SqlParameter("@Tags", SqlDbType.VarChar, 5000);



                param[0].Value = compid;
                param[1].Value = listTags;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                id = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {


            }


            finally
            {
                con.Close();
            }

            return id;
        }

        public int Company_listing_Keyword_tbl(int compid, string keyword)
        {
            int id = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO NewListing_Website_listing_Keyword_tbl (CompanyId, Keywords) OUTPUT inserted.CompKeyWordId VALUES (@CompanyId,@Keywords)";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[2];


                param[0] = new SqlParameter("@CompanyId", SqlDbType.Int, 4);
                param[1] = new SqlParameter("@Keywords", SqlDbType.VarChar, 5000);



                param[0].Value = compid;
                param[1].Value = keyword;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                id = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {


            }


            finally
            {
                con.Close();
            }

            return id;
        }

        public int getCategory_id(int id)
        {
            int cate = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT CatId  FROM  NewListing_Website_listing_tbl   WHERE (CompanyId = '" + id + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    cate = Int32.Parse(dr[0].ToString());
                }
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
            return cate;
        }

        public string getCategory_name(int id)
        {
            string cate = "";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT CategoryName  FROM  NewListing_Website_category_tbl   WHERE (Catid = '" + id + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    cate = dr[0].ToString();
                }
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
            return cate;
        }

        public string getcompany_tags_name(int id)
        {
            string cate = "";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT Tags  FROM  NewListing_Website_listing_Tag_tbl   WHERE (CompanyId = '" + id + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    cate = dr[0].ToString();
                }
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
            return cate;
        }

        public string getcompany_keywords_name(int id)
        {
            string cate = "";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT Keywords  FROM  NewListing_Website_listing_Keyword_tbl   WHERE (CompanyId = '" + id + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    cate = dr[0].ToString();
                }
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
            return cate;
        }

        public ArrayList Get_Compny_info(int compid)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT   CatId, CompanyName, OwnerName, YearEstablish, Mobile, LandLine, Email, Website, Location, Address, City, Map, RegsitrationDate, KeyWord, Enable,  TotalReview, url, Password FROM    NewListing_Website_listing_tbl WHERE        (CompanyId = '" + compid + "')", con);
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
                    al.Add(dr[14]);
                    al.Add(dr[15]);
                    al.Add(dr[16]);
                    al.Add(dr[17]);

                }
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
            return al;
        }

        public int Company_enquiry_table(int CompanyId, string LookingFor, string Name, string Mobile, string Email, string Message, string Date)
        {
            int id = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO NewListing_Website_Inquiry_tbl (CompanyId, LookingFor, Name, Mobile, Email, Message, Date) OUTPUT  inserted.EnquiryId VALUES (@CompanyId,@LookingFor,@Name,@Mobile,@Email,@Message,@Date)";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[7];


                param[0] = new SqlParameter("@CompanyId", SqlDbType.Int, 4);
                param[1] = new SqlParameter("@LookingFor", SqlDbType.VarChar, 50);
                param[2] = new SqlParameter("@Name", SqlDbType.VarChar, 50);
                param[3] = new SqlParameter("@Mobile", SqlDbType.VarChar, 50);
                param[4] = new SqlParameter("@Email", SqlDbType.VarChar, 50);
                param[5] = new SqlParameter("@Message", SqlDbType.VarChar, 500);
                param[6] = new SqlParameter("@Date", SqlDbType.VarChar, 50);



                param[0].Value = CompanyId;
                param[1].Value = LookingFor;
                param[2].Value = Name;
                param[3].Value = Mobile;
                param[4].Value = Email;
                param[5].Value = Message;
                param[6].Value = Date;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                id = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {


            }


            finally
            {
                con.Close();
            }

            return id;
        }

        public int Insert_get_Quote_table(string LookingFor, string Name, string Mobile, string Email, string Message, string City, String Date)
        {
            int id = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO NewListing_Website_Get_quote_tbl (LookingFor, Name, Mobile, Email, Message, City, Date) OUTPUT  inserted.Quoteid VALUES (@LookingFor,@Name,@Mobile,@Email,@Message, @City, @Date)";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[7];



                param[0] = new SqlParameter("@LookingFor", SqlDbType.VarChar, 50);
                param[1] = new SqlParameter("@Name", SqlDbType.VarChar, 50);
                param[2] = new SqlParameter("@Mobile", SqlDbType.VarChar, 50);
                param[3] = new SqlParameter("@Email", SqlDbType.VarChar, 50);
                param[4] = new SqlParameter("@Message", SqlDbType.VarChar, 500);
                param[5] = new SqlParameter("@City", SqlDbType.VarChar, 500);
                param[6] = new SqlParameter("@Date", SqlDbType.VarChar, 50);




                param[0].Value = LookingFor;
                param[1].Value = Name;
                param[2].Value = Mobile;
                param[3].Value = Email;
                param[4].Value = Message;
                param[5].Value = City;
                param[6].Value = Date;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                id = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {


            }


            finally
            {
                con.Close();
            }

            return id;
        }





        public int Insert_User_review_table(int CompanyId, string Name, string Mobile, string Email, string Date, int star, string Text)
        {
            int id = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO NewListing_Website_Review_tbl  (CompanyId, Name, Mobile, Email, Date, star, Text) OUTPUT  inserted.Revid  VALUES   (@CompanyId,@Name,@Mobile,@Email,@Date,@star,@Text)";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[7];



                param[0] = new SqlParameter("@CompanyId", SqlDbType.Int, 4);
                param[1] = new SqlParameter("@Name", SqlDbType.VarChar, 50);
                param[2] = new SqlParameter("@Mobile", SqlDbType.VarChar, 50);
                param[3] = new SqlParameter("@Email", SqlDbType.VarChar, 50);
                param[4] = new SqlParameter("@Date", SqlDbType.VarChar, 50);
                param[5] = new SqlParameter("@star", SqlDbType.Int, 4);
                param[6] = new SqlParameter("@Text", SqlDbType.VarChar, 5000);




                param[0].Value = CompanyId;
                param[1].Value = Name;
                param[2].Value = Mobile;
                param[3].Value = Email;
                param[4].Value = Date;
                param[5].Value = star;
                param[6].Value = Text;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                id = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {


            }


            finally
            {
                con.Close();
            }

            return id;
        }

        public int update_comp_key_url_catid(int cateid, String keyword, String url, int compid)
        {
            int sid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE       NewListing_Website_listing_tbl  SET    CatId ='" + cateid + "', KeyWord ='" + keyword + "', url ='" + url + "'  WHERE   (CompanyId = '" + compid + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                //dr.Close();
                con.Close();
            }
            return sid;

        }


        public void update_Dexterou_message_counter_table(String senderid, int count)
        {
            con = new SqlConnection(commmPriya.GetConnectionString());
            cmd = new SqlCommand("UPDATE  Dexterous_Message_Counter_Table      SET   CurrentCount ='" + count + "' WHERE  (Senderid = '" + senderid + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }

        public ArrayList Select_Dexterou_message_counter_table(String senderid)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commmPriya.GetConnectionString());
            cmd = new SqlCommand("SELECT   CurrentCount, LimitCount,CustomerMobile FROM  Dexterous_Message_Counter_Table WHERE        (Senderid = '" + senderid + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al.Add(dr[0]);
                    al.Add(dr[1]);
                    al.Add(dr[2]);


                }
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
            return al;
        }


        public int get_visitor_count()
        {
            int cate = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT   Count    FROM  NewListing_Website_visiting_counter ", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    cate = Int32.Parse(dr[0].ToString());
                }
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
            return cate;
        }

        public void updat_visitor_count_table(int count)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE  NewListing_Website_visiting_counter      SET   Count ='" + count + "'", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }


        public void Update_comp_Password(int CompanyId, string Password)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE    NewListing_Website_listing_tbl  SET   Password = '" + Password + "' WHERE        (CompanyId = '" + CompanyId + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }


        public ArrayList check_for_subcate(int cateid)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT TagId, Tags, urlt, Catid   FROM  NewListing_Website_tags_tbl   WHERE  (Catid = '" + cateid + "')", con);
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
                }
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
            return al;
        }

        public int user_email_finder(String mail_id)
        {
            int u_id = 0;
            ArrayList list = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT        CompanyId FROM  NewListing_Website_listing_tbl WHERE        (Mobile = '" + mail_id + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    u_id = int.Parse(dr[0].ToString());

                }
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
            return u_id;

        }

        public void update_user_Password(String password, String MAIL_ID)
        {
            ArrayList list = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand("UPDATE    NewListing_Website_listing_tbl   SET   Password ='" + password + "' WHERE    (Mobile = '" + MAIL_ID + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
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


        }

        public int update_verified_mobile_true(String mobile, String status, int compid)
        {
            int sid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE       NewListing_Website_listing_tbl  SET    Mobile ='" + mobile + "', Enable ='" + status + "'  WHERE   (CompanyId = '" + compid + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                //dr.Close();
                con.Close();
            }
            return sid;

        }

        public String get_company_ListingType(int compid)
        {
            String type = "";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT ListingType  FROM  NewListing_Website_listing_tbl   WHERE (CompanyId = '" + compid + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    type = dr[0].ToString();
                }
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
            return type;
        }

        public void update_user_Listing_Type(String listtype, int compid)
        {
            ArrayList list = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());

            cmd = new SqlCommand("UPDATE    NewListing_Website_listing_tbl   SET   ListingType ='" + listtype + "' WHERE    (CompanyId = '" + compid + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
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


        }


        public ArrayList getMataDetailsCompany(int compid)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT CompanyName, Location, City, KeyWord  FROM NewListing_Website_listing_tbl WHERE (CompanyId = '" + compid + "')", con);

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
                }
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
            return al;
        }

        public int get_company_categoryid(int compid)
        {
            int catid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT CatId  FROM  NewListing_Website_listing_tbl   WHERE (CompanyId = '" + compid + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    catid = Int32.Parse(dr[0].ToString());
                }
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
            return catid;
        }

        public String get_company_selected_tags(int compid)
        {
            String tags = "";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT Tags  FROM  NewListing_Website_listing_Tag_tbl   WHERE (CompanyId = '" + compid + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    tags = dr[0].ToString();
                }
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
            return tags;
        }

        public String get_company_selected_keyword(int compid)
        {
            String tags = "";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT Keywords  FROM  NewListing_Website_listing_Keyword_tbl   WHERE (CompanyId = '" + compid + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    tags = dr[0].ToString();
                }
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
            return tags;
        }



        public void update_Company_listing_Keyword_tbl(int companyId, String keyword)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE  NewListing_Website_listing_Keyword_tbl  SET  Keywords = '" + keyword + "' WHERE     (CompanyId = '" + companyId + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }

        public void update_Company_tags_table(int companyId, String tags)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE  NewListing_Website_listing_Tag_tbl  SET  Tags = '" + tags + "' WHERE     (CompanyId = '" + companyId + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }

        public void update_Company_Full_Keyword_table(int companyId, String fullkeyword)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE  NewListing_Website_listing_tbl  SET  KeyWord = '" + fullkeyword + "' WHERE     (CompanyId = '" + companyId + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }

        public ArrayList get_urlt(string caturl)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT Catid, CategoryName  FROM  NewListing_Website_category_tbl   WHERE (urlc = '" + caturl + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al.Add(dr[0]);
                    al.Add(dr[1]);



                }
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
            return al;
        }

        public ArrayList select_All_tags(int catid)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT Tags  FROM  NewListing_Website_tags_tbl   WHERE (Catid = '" + catid + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al.Add(dr[0]);
                }
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
            return al;
        }

        public ArrayList get_key_old()
        {
            ArrayList list = new ArrayList();

            con = new SqlConnection(commmPriya.GetConnectionString());
            cmd = new SqlCommand("SELECT CompanyId, KeyWord FROM NewListing_Website_listing_tbl", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);

                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    for (int j = 0; j <= dt.Columns.Count - 1; j++)
                    {
                        list.Add(dt.Rows[i][j].ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                //dr.Close();
                con.Close();
            }
            return list;

        }

        public void update_key_new(int companyId, String fullkeyword)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE  NewListing_Website_listing_tbl  SET  KeyWord = '" + fullkeyword + "' WHERE     (CompanyId = '" + companyId + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }

        public void update_category_u7rl(int catid, String fullkeyword)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE  NewListing_Website_category_tbl  SET  urlc = '" + fullkeyword + "' WHERE     (Catid = '" + catid + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }

        public ArrayList select_Category_List_By_HeadTag(String Condition)
        {
            ArrayList list = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT CategoryName, Catid FROM  NewListing_Website_category_tbl   " + Condition + ")", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);

                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    for (int j = 0; j <= dt.Columns.Count - 1; j++)
                    {
                        list.Add(dt.Rows[i][j].ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                //dr.Close();
                con.Close();
            }
            return list;

        }




        public DataTable SelectCompnyBykeysearch(string keysearch, string city, int catid)
        {
            DataTable OrderTable = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [CompanyId], [CompanyName], [Mobile], [Password], [VerMobile], [CatId], [OwnerName], [YearEstablish], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Latitude], [Longitude], [url], [ListingType], [Priority], [Tags], [ListingImageID] FROM [NewListing_Website_listing_tbl] WHERE ([KeyWord] like '%" + keysearch + "%' ) AND [City]='" + city + "' AND [CatId]='" + catid + "'";
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
        public DataTable SelectCompnyBytags(string tags)
        {
            DataTable OrderTable = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [CompanyId], [CompanyName], [Mobile], [Password], [VerMobile], [CatId], [OwnerName], [YearEstablish], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Latitude], [Longitude], [url], [ListingType], [Priority], [Tags], [ListingImageID] FROM [NewListing_Website_listing_tbl] WHERE ([Tags] like '%" + tags + "%' )";
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

        public int getCategory_id_ByCatname(String Catname)
        {
            int cate = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT CatId  FROM  NewListing_Website_listing_tbl   WHERE (CategoryName = '" + Catname + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    cate = Int32.Parse(dr[0].ToString());
                }
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
            return cate;
        }

        public int MessageCounterInfo()
        {
            int totalCount = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT   MessageCount FROM  NewListing_Website_login_tbl", con);


            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    totalCount = Int32.Parse(dr[0].ToString());
                }
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
            return totalCount;
        }


        public int Update_TotalMessageCountAdmin(int _count)
        {
            int st = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd1 = new SqlCommand("UPDATE NewListing_Website_login_tbl SET MessageCount = MessageCount - '" + _count + "'", con);
            try
            {
                con.Open();
                st = cmd1.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
            return st;
        }



        public String Existeing_company_finder_By_Mobile(String Mobile)
        {
            String cpname = "";
            ArrayList list = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT CompanyName FROM  NewListing_Website_listing_tbl WHERE  (Mobile = '" + Mobile + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    cpname = dr[0].ToString();
                }
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
            return cpname;

        }


        public int update_New_comp_key_catid(int cateid, String keyword, int compid)
        {
            int sid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE NewListing_Website_listing_tbl  SET    CatId ='" + cateid + "', KeyWord = KeyWord + ','+ '" + keyword + "'  WHERE   (CompanyId = '" + compid + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                //dr.Close();
                con.Close();
            }
            return sid;

        }

        public int update_Mobile_verificateion(int compid)
        {
            int sid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE NewListing_Website_listing_tbl  SET    VerMobile ='True' WHERE   (CompanyId = '" + compid + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                //dr.Close();
                con.Close();
            }
            return sid;

        }


        public int get_company_EnquiryCount(int compid)
        {
            int count = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT  COUNT(EnquiryId) AS TotalCount FROM NewListing_Website_Inquiry_tbl GROUP BY CompanyId HAVING  (CompanyId = '" + compid + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    count = Int32.Parse(dr[0].ToString());
                }
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
            return count;
        }

        public int get_company_ReviewCount(int compid)
        {
            int count = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT  COUNT(Revid) AS TotalCount FROM NewListing_Website_Review_tbl GROUP BY CompanyId HAVING  (CompanyId = '" + compid + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    count = Int32.Parse(dr[0].ToString());
                }
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
            return count;
        }

        public int Select_Company_List_count(String city, int catID)
        {
            int count = 0;

            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(@"SELECT count(*) as Listcount  FROM NewListing_Website_listing_tbl  WHERE    ((CatId  = '" + catID + "') AND (City = '" + city + "'))", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    count = Int32.Parse((dr[0].ToString()));
                }
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
            return count;
        }

        public int Select_Company_List_count_main(String city, String keyword)
        {
            int count = 0;

            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(@"SELECT count(*) as Listcount  FROM NewListing_Website_listing_tbl  WHERE    ((KeyWord LIKE '%" + keyword + "%') AND (City = '" + city + "'))", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    count = Int32.Parse((dr[0].ToString()));
                }
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
            return count;
        }

        public int Select_Company_List_count_tag(String city, String keyword)
        {
            int count = 0;

            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(@"SELECT count(*) as Listcount from NewListing_Website_listing_tbl INNER JOIN  NewListing_Website_listing_Tag_tbl ON NewListing_Website_listing_tbl.CompanyId = NewListing_Website_listing_Tag_tbl.CompanyId   WHERE (NewListing_Website_listing_tbl.City = '" + city + "') AND (NewListing_Website_listing_Tag_tbl.Tags LIKE '%" + keyword + "%')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    count = Int32.Parse((dr[0].ToString()));
                }
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
            return count;
        }

        public int Select_Company_List_count_by_Keyword(String keyword)
        {
            int count = 0;

            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(@"SELECT count(*) as Listcount  FROM NewListing_Website_listing_tbl  WHERE    ((KeyWord LIKE '%" + keyword + "%'))", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    count = Int32.Parse((dr[0].ToString()));
                }
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
            return count;
        }

        public int update_Mobile_verificateion_BY_MOBILE(String Mobile)
        {
            int sid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE NewListing_Website_listing_tbl  SET    VerMobile ='True' WHERE   (Mobile = '" + Mobile + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                //dr.Close();
                con.Close();
            }
            return sid;

        }


        public ArrayList get_Company_Image_Id(int CompanyId)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT CompImgID, CatId  FROM  NewListing_Website_listing_tbl   WHERE (CompanyId  = '" + CompanyId + "')", con);
            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    al.Add(dr[0]);
                    al.Add(dr[1]);
                }
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
            return al;
        }

        public void Update_Company_imageId(int CompanyId, int ImgId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE  NewListing_Website_listing_tbl  SET  CompImgID  = '" + ImgId + "' WHERE     (CompanyId  = '" + CompanyId + "')", con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg;
                msg = ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
        }
    }
}
