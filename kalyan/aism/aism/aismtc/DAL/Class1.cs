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

        public ArrayList login(string userName, string password)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT userid , username, accesslevel, Enable FROM Login WHERE (username ='" + userName + "') AND (password ='" + password + "')", con);
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
            }
            finally
            {
                con.Close();
            }
            return al; 
        }

        public string insertfile(string Location, int type)
        {
            String insertedid = "";
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO FileResources (Location, Type)  output inserted.fileId VALUES "
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
                throw new Exception(msg);

            }
            finally
            {
                con.Close();
            }
            
            return insertedid;
        }

        public int addsuccess(string name, string author, string date,  string originalurl,string fn1)
        {
            int al = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "Insert into aismtc_success(file_name,author,date,url, original_url) output inserted.success_id Values('" + name + "','" + author + "','" + date + "','" + fn1 + "', '" + originalurl + "' )";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.Text;
                al = Int32.Parse(cmd.ExecuteScalar().ToString());

            }
            catch (SqlException ex)
            {
                string message;
                message = ex.Message;


            }
            finally
            {
                con.Close();
            }
            return al;
        }

        public void addstudentspeak(string pagename, string writer, string text)
        {
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO aismtc_student_speak(page_name, writer ,text) Values('" + pagename + "', '" + writer + "', '" + text + "')";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteScalar();

            }
            catch (SqlException ex)
            {
                string message;
                message = ex.Message;


            }
            finally
            {
                con.Close();
            }
        }

        public void addcareer(string pagename, string header, string text)
        {
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO aismtc_text(page_name, header,text) Values('" + pagename + "', '" + header + "', '" + text + "')";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteScalar();

            }
            catch (SqlException ex)
            {
                string message;
                message = ex.Message;


            }
            finally
            {
                con.Close();
            }
        }

        public void addalumuni(string pagename, string header, string text)
        {
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO aismtc_text(page_name, header,text) Values('" + pagename + "', '" + header + "', '" + text + "')";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteScalar();

            }
            catch (SqlException ex)
            {
                string message;
                message = ex.Message;


            }
            finally
            {
                con.Close();
            }
        }

        public void Testimonial(string pagename, string writer, string text)
        {

            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO aismtc_testimonials(page_name, writer,text) Values('" + pagename + "', '" + writer + "', '" + text + "')";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteScalar();

            }
            catch (SqlException ex)
            {
                string message;
                message = ex.Message;


            }
            finally
            {
                con.Close();
            }
            


        }


        public ArrayList find_stu_details(String enrollment_no)
        {
            ArrayList details = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT        certification_no, name, fathers_name, course_name, grade, date_of_completion FROM            aismtc_allumuni WHERE        (certification_no = '" + enrollment_no + "')", con);


            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    details.Add(dr[0]);
                    details.Add(dr[1]);
                    details.Add(dr[2]);
                    details.Add(dr[3]);
                    details.Add(dr[4]);
                    details.Add(dr[5]);
                }
                dr.Close();
            }
            catch
            {
                string msg;
                msg = "Please check your connection.";
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }

            return details;


        }

        public int career(string name, string email, string phone, string address, string reference, string fn1)
        {
            int carrer_id = 0;

            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO aismtc_career (name, email, phone, address, reference, upload_resume) output inserted.carrer_id VALUES   (@name, @email, @phone, @address, @reference, @upload_resume)";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[6];


                param[0] = new SqlParameter("@name", SqlDbType.VarChar, 50);
                param[1] = new SqlParameter("@email", SqlDbType.VarChar, 50);
                param[2] = new SqlParameter("@phone", SqlDbType.VarChar, 50);
                param[3] = new SqlParameter("@address", SqlDbType.VarChar, 50);
                param[4] = new SqlParameter("@reference", SqlDbType.VarChar, 50);
                param[5] = new SqlParameter("@upload_resume", SqlDbType.VarChar, 50);

                param[0].Value = name;
                param[1].Value = email;
                param[2].Value = phone;
                param[3].Value = address;
                param[4].Value = reference;
                param[5].Value = fn1;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                carrer_id = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                return carrer_id;

            }


            finally
            {
                con.Close();
            }

            return carrer_id;
        }

        public ArrayList AddNotice(string heading, string iD, string notice)
        {
            ArrayList al = new ArrayList();
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "Insert into aismtc_notice(heading,img_url,text) Values ('" + heading + "','" + iD + "','" + notice + "')";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteScalar();

            }
            catch (SqlException ex)
            {
                string message;
                message = ex.Message;


            }
            finally
            {
                con.Close();
            }
            return al;


        }

        
        public void AddCertificate(string certificate, string name, string fatherName, string courceName, string grade, string duration)
        {
            
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "Insert into aismtc_allumuni(certification_no, name, fathers_name, course_name, grade, date_of_completion)  Values (@certification_no, @name, @fathers_name, @course_name, @grade, @date_of_completion)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[6];

                param[0] = new SqlParameter("@certification_no", SqlDbType.VarChar, 150);
                param[1] = new SqlParameter("@name", SqlDbType.VarChar, 150);
                param[2] = new SqlParameter("@fathers_name", SqlDbType.VarChar, 150);
                param[3] = new SqlParameter("@course_name", SqlDbType.VarChar, 150);
                param[4] = new SqlParameter("@grade", SqlDbType.VarChar, 150);
                param[5] = new SqlParameter("@date_of_completion", SqlDbType.VarChar, 150);

                param[0].Value = certificate ;
                param[1].Value = name;
                param[2].Value = fatherName;
                param[3].Value = courceName;
                param[4].Value = grade;
                param[5].Value = duration;



                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                cmd.ExecuteScalar();

            }
            catch (Exception ex)
            {
                string message;
                message = ex.Message;


            }
            finally
            {
                con.Close();
            }
            

        }



        public string InsertImage(string Location, int type)
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
                throw new Exception(msg);

            }
            finally
            {
                con.Close();
            }



            return insertedid;
        }

        public int Addslider(string sliderName, string textline1, string textline2, string url, string imgurl)
        {

            int al = 0;
            con = new SqlConnection(commm.GetConnectionString());
            string sql = "Insert into aism_Slider(slidername,TextLine1,TextLine2,URL, imgurl) output inserted.Sliderid Values('" + sliderName + "','" + textline1 + "','" + textline2 + "','" + url + "', '"+ imgurl + "' )";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.Text;
                al = Int32.Parse(cmd.ExecuteScalar().ToString());

            }
            catch (SqlException ex)
            {
                string message;
                message = ex.Message;
                

            }
            finally
            {
                con.Close();
            }
            return al;
        }
    }
}
