using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Class1
    {
        SqlCommand cmd;
        SqlConnection con;
        SqlDataAdapter da = new SqlDataAdapter();
        public ArrayList Shoplogin(string UserName, string password)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(" SELECT  userid, username, accesslevel, Enable  FROM Login  WHERE (username ='" + UserName + "') AND (password ='" + password + "')", con);

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
               
            }
            finally
            {
                con.Close();
            }
            return al;
        }

        

        public string Clientcount()
        {
            String al = "0";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(@" SELECT        COUNT(Id) AS Expr1 FROM post ", con);

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

        public string ArtisrCount()
        {
            String al = "0";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(@" SELECT        COUNT(OthersId) AS Expr1 FROM Others ", con);

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

        public string Modelcount()
        {
            String al = "0";
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand(@" SELECT        COUNT(ModelId) AS Expr1 FROM Applications ", con);

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

        public DataTable SearchModelfull(string phone)
        {
            DataTable Applications = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [FirstName], [LastName], [Email], [Phone], [Gender],  [Image1] FROM [Applications] WHERE ([Phone] = '" + phone + "') ORDER BY [Phone] ASC";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(Applications);

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
            return Applications;

        }

        public DataTable SearchModelById(int ModelId)
        {
            DataTable Applications = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [FirstName], [LastName], [Email], [Phone], [Gender],  [Image1], [Country] ,[City], [Address], [Profession], [Gender], [Skills],  [Height], [DressSize], [Waist], [ShoeSize], [HairColor], [Weight], [Chest], [Hips], [EyeColor], [SkinColor] FROM [Applications] WHERE ([ModelId]  = '" + ModelId + "') ";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(Applications);

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
            return Applications;

        }



        public DataTable SearchArtistById(int OthersId)
        {
            DataTable Artist = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [OthersId], [FirstName], [LastName], [Email], [Phone], [Gender], [Country], [City], [Address], [Profession], [Image1], [Skills] FROM [Others] WHERE ([OthersId]  = '" + OthersId + "') ";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(Artist);

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
            return Artist;

        }

        public DataTable SearchModelImageById(int ModelId)
        {
            DataTable Applications = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [ModelId], [Title], [ModelSliderId], [ALT] FROM [ModelSlider] WHERE ([ModelId]  = '" + ModelId + "') ";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(Applications);

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
            return Applications;

        }

        public DataTable SearchModel()
        {
            DataTable Applications = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [FirstName], [LastName], [Email], [Phone], [Gender], [ModelId], [Image1] FROM [Applications] ORDER BY [ModelId] ASC";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(Applications);

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
            return Applications;
        }

        public DataTable SearchModel(int ModelId)
        {
            int ModelId = int.Parse(Request.QueryString["ModelId"]);
            DataTable Applications = new DataTable();
            con = new SqlConnection(commm.GetConnectionString());
            try
            {
                con.Open();
                string query = "SELECT [FirstName], [LastName], [Email], [Phone], [Gender], [ModelId], [Image1] FROM [Applications] WHERE ([ModelId] = '" + ModelId + "') ORDER BY [ModelId] ASC";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(Applications);

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
            return Applications;
        }

        public void UpdatePass(string pass, int Id)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE login SET password='" + pass + "' WHERE  (userid = '" + Id + "')", con);

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

        public void contact1(string name, string email, string message)
        {
            throw new NotImplementedException();
        }

        public void contact(string name, string email, string message, string phone)
        {
            con = new SqlConnection(commm.GetConnectionString());
            int id = 0;
            try
            {
                string sql = "INSERT INTO contact(Name,Email,Phone,Message) output inserted.Id VALUES(@name,@email,@phone,@message)";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[4];


                param[0] = new SqlParameter("@name", SqlDbType.VarChar, 100);
                param[1] = new SqlParameter("@email", SqlDbType.VarChar, 500);
                param[2] = new SqlParameter("@phone", SqlDbType.VarChar, 500);
                param[3] = new SqlParameter("@message", SqlDbType.VarChar, 500);
               



                param[0].Value = name;
                param[1].Value = email;
                param[2].Value = phone;
                param[3].Value = message;
                

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


          
        }

        public int OtherApplications(string fname, string lname, string email, string phone, string country, string city, string address, string profession, string Gender, string skills)
        {
            con = new SqlConnection(commm.GetConnectionString());
            int OthersId = 0;
            try
            {
                string sql = "INSERT INTO Others(FirstName,LastName,Email,Phone,Country,City,Address,Profession,Gender,Skills) output inserted.OthersId VALUES(@fname,@lname,@email,@phone,@country,@city,@address,@profession,@Gender,@skills)";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[10];


                param[0] = new SqlParameter("@fname", SqlDbType.VarChar, 100);
                param[1] = new SqlParameter("@lname", SqlDbType.VarChar, 500);
                param[2] = new SqlParameter("@email", SqlDbType.VarChar, 500);
                param[3] = new SqlParameter("@phone", SqlDbType.VarChar, 500);
                param[4] = new SqlParameter("@country", SqlDbType.VarChar, 500);
                param[5] = new SqlParameter("@city", SqlDbType.VarChar, 500);
                param[6] = new SqlParameter("@address", SqlDbType.VarChar, 200);
                param[7] = new SqlParameter("@profession", SqlDbType.VarChar, 50);
                param[8] = new SqlParameter("@Gender", SqlDbType.VarChar, 50);
                param[9] = new SqlParameter("@skills", SqlDbType.VarChar, 700);



                param[0].Value = fname;
                param[1].Value = lname;
                param[2].Value = email;
                param[3].Value = phone;
                param[4].Value = country;
                param[5].Value = city;
                param[6].Value = address;
                param[7].Value = profession;
                param[8].Value = Gender;
                param[9].Value = skills;

                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                OthersId = Int32.Parse(cmd.ExecuteScalar().ToString());


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


            return OthersId;

        }

        public void UpdateOtherImg(string fn1, int othersId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Others  SET Image1='" + fn1 + ".jpg" + "' WHERE  (OthersId = '" + othersId + "')", con);

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

        public int Apply(string fname, string lname, string email, string phone, string country, string city, string address, string profession, string Gender, string skills)
        {
            con = new SqlConnection(commm.GetConnectionString());
            int ModelId = 0;
            try
            {
                string sql = "INSERT INTO Applications(FirstName,LastName,Email,Phone,Country,City,Address,Profession,Gender,Skills) output inserted.ModelId VALUES(@fname,@lname,@email,@phone,@country,@city,@address,@profession,@Gender,@skills)";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[10];


                param[0] = new SqlParameter("@fname", SqlDbType.VarChar, 100);
                param[1] = new SqlParameter("@lname", SqlDbType.VarChar, 500);
                param[2] = new SqlParameter("@email", SqlDbType.VarChar, 500);
                param[3] = new SqlParameter("@phone", SqlDbType.VarChar, 500);
                param[4] = new SqlParameter("@country", SqlDbType.VarChar, 500);
                param[5] = new SqlParameter("@city", SqlDbType.VarChar, 500);
                param[6] = new SqlParameter("@address", SqlDbType.VarChar, 200);
                param[7] = new SqlParameter("@profession", SqlDbType.VarChar, 50);
                param[8] = new SqlParameter("@Gender", SqlDbType.VarChar, 50);
                param[9] = new SqlParameter("@skills", SqlDbType.VarChar, 700);



                param[0].Value = fname;
                param[1].Value = lname;
                param[2].Value = email;
                param[3].Value = phone;
                param[4].Value = country;
                param[5].Value = city;
                param[6].Value = address;
                param[7].Value = profession;
                param[8].Value = Gender;
                param[9].Value = skills;

                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                ModelId = Int32.Parse(cmd.ExecuteScalar().ToString());


            }
            catch(Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }


            return ModelId;
           

        }

      

      

        public string InsertImage(string Location, int type)
        {
            String insertedid = "";
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO ImageResource (Location, Type)  output inserted.ImageId VALUES "
                   + "(@Location, @Type)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[2];


                param[0] = new SqlParameter("@Location", SqlDbType.VarChar, 500);
                param[1] = new SqlParameter("@Type", SqlDbType.Int, 4);



                param[0].Value = Location;
                param[1].Value = type;



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
              

            }
            finally
            {
                con.Close();
            }



            return insertedid;
        }

        public void Personalinfo(int ModelId, string height, string dress, string waist, string shoe, string hair, string weight, string hips, string eye, string skin,string chest)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Applications  SET Height='" + height + "',DressSize='"+ dress + "',Waist='" + waist + "',ShoeSize='" + shoe + "',HairColor='" + hair + "',Weight='" + weight + "',Chest='" + chest + "',Hips='" + hips + "',EyeColor='" + eye + "',SkinColor='" + skin + "' WHERE  (ModelId = '" + ModelId + "')", con);

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

        public void ItemSliderInsert(int ModelId, string fn2, string Fname, string v)
        {
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "Insert Into ModelSlider(ModelId, ALT, URL,Title) output inserted. ModelSliderId Values" +
                "(@ModelId,@fn2,@Fname,@v)";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[4];

                param[0] = new SqlParameter("@ModelId", SqlDbType.Int, 200);
                param[1] = new SqlParameter("@fn2", SqlDbType.VarChar, 200);
                param[2] = new SqlParameter("@Fname", SqlDbType.VarChar, 200);
                param[3] = new SqlParameter("@v", SqlDbType.VarChar, 200);

                param[0].Value = ModelId;
                param[1].Value = fn2;
                param[2].Value = Fname;
                param[3].Value = v;

                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                string msg;
                msg = ex.Message;
            }
            finally
            {
                con.Close();
            }
        }



        public void UpdateImg(string fn1, int ModelId)
        {
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("UPDATE Applications  SET Image1='" + fn1 +"' WHERE  (ModelId = '" + ModelId + "')", con);

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

        public int PostJob(string firstname, string lastname, string email, string phone, string country, string city, string address, string position, string skills)
        {
            int insertedid = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO post (FirstName,LastName,Email,Phone,Country,City,Address,Position,Skills)  output inserted.Id VALUES "
                   + "(@firstname,@lastname,@email,@phone,@country,@city,@address,@position,@skills)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[9];


                param[0] = new SqlParameter("@firstname", SqlDbType.VarChar, 100);
                param[1] = new SqlParameter("@lastname", SqlDbType.VarChar, 500);
                param[2] = new SqlParameter("@email", SqlDbType.VarChar, 500);
                param[3] = new SqlParameter("@phone", SqlDbType.VarChar, 500);
                param[4] = new SqlParameter("@country", SqlDbType.VarChar, 500);
                param[5] = new SqlParameter("@city", SqlDbType.VarChar, 500);
                param[6] = new SqlParameter("@address", SqlDbType.VarChar, 500);
                param[7] = new SqlParameter("@position", SqlDbType.VarChar, 500);
                param[8] = new SqlParameter("@skills", SqlDbType.VarChar, 500);
                



                param[0].Value = firstname;
                param[1].Value = lastname;
                param[2].Value = email;
                param[3].Value = phone;
                param[4].Value = country;
                param[5].Value = city;
                param[6].Value = address;
                param[7].Value = position;
                param[8].Value = skills;
               
           
                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                insertedid = Int32.Parse(cmd.ExecuteScalar().ToString());
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



            return insertedid;

        }
    }
}
