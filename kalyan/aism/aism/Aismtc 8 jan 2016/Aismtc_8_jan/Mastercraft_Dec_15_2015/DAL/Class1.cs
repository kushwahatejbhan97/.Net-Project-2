using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
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
            cmd = new SqlCommand("SELECT Id FROM aismtc_login WHERE (user_name ='" + username + "')AND(passwd ='" + password + "')", con);
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


        public int add_details(int enrollment_no, String name, String fathers_name, String course_name, String grade)
        {
            int id = 0;

            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO aismtc_student_details  (enrollment_no, name, fathers_name, course_name, grade) output inserted.id VALUES   (@enrollment_no, @name, @fathers_name, @course_name, @grade)";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[5];


                param[0] = new SqlParameter("@enrollment_no", SqlDbType.Int);
                param[1] = new SqlParameter("@name", SqlDbType.VarChar, 50);
                param[2] = new SqlParameter("@fathers_name", SqlDbType.VarChar, 50);
                param[3] = new SqlParameter("@course_name", SqlDbType.VarChar, 50);
                param[4] = new SqlParameter("@grade", SqlDbType.VarChar, 50);


                param[0].Value = enrollment_no;
                param[1].Value = name;
                param[2].Value = fathers_name;
                param[3].Value = course_name;
                param[4].Value = grade;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                id = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                return id;

            }


            finally
            {
                con.Close();
            }

            return id;
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

        public String text_finder(int id)
        {
            String text1 = "Default";

            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT text  FROM aismtc_text  WHERE (id = '" + id + "')", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    text1 = dr[0].ToString();


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
            return text1;

        }

        public int add_New_Media(String file_name, String url, String author, String url_620_300, String original_url)
        {
            int insertedid = 0;

            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO aismtc_img_upload (file_name, url, date, author,url_620_300 ,original_url ) output inserted.id VALUES ( @file_name, @url, @date, @author, @url_620_300,@original_url )";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[6];


                param[0] = new SqlParameter("@file_name", SqlDbType.VarChar, 500);
                param[1] = new SqlParameter("@url", SqlDbType.VarChar, 500);
                param[2] = new SqlParameter("@date", SqlDbType.VarChar, 500);
                param[3] = new SqlParameter("@author", SqlDbType.VarChar, 500);
                param[4] = new SqlParameter("@url_620_300", SqlDbType.VarChar, 500);
                param[5] = new SqlParameter("@original_url", SqlDbType.VarChar, 500);


                param[0].Value = file_name;
                param[1].Value = url;
                param[2].Value = DateTime.Now.ToString();
                param[3].Value = author;
                param[4].Value = url_620_300;
                param[5].Value = original_url;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                insertedid = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                return insertedid;

            }


            finally
            {
                con.Close();
            }

            return insertedid;
        }

        public String package_finder(int id)
        {
            String text1 = "Default";

            con = new SqlConnection(commm.GetConnectionString());
            cmd = new SqlCommand("SELECT text  FROM aismtc_packages  WHERE (id = '" + id + "')", con);

            try
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    text1 = dr[0].ToString();


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
            return text1;

        }

        public int add_success(String file_name, String url, String author, String url_620_300, String original_url)
        {
            int success_id = 0;

            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO aismtc_success (file_name, url, date, author,url_620_300 ,original_url ) output inserted.success_id VALUES ( @file_name, @url, @date, @author, @url_620_300,@original_url )";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[6];


                param[0] = new SqlParameter("@file_name", SqlDbType.VarChar, 500);
                param[1] = new SqlParameter("@url", SqlDbType.VarChar, 500);
                param[2] = new SqlParameter("@date", SqlDbType.VarChar, 500);
                param[3] = new SqlParameter("@author", SqlDbType.VarChar, 500);
                param[4] = new SqlParameter("@url_620_300", SqlDbType.VarChar, 500);
                param[5] = new SqlParameter("@original_url", SqlDbType.VarChar, 500);


                param[0].Value = file_name;
                param[1].Value = url;
                param[2].Value = DateTime.Now.ToString();
                param[3].Value = author;
                param[4].Value = url_620_300;
                param[5].Value = original_url;


                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                success_id = Int32.Parse(cmd.ExecuteScalar().ToString());
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                return success_id;

            }


            finally
            {
                con.Close();
            }

            return success_id;
        }

        public int career(String name, String email, String phone, String address, String reference)
        {
            int carrer_id = 0;

            con = new SqlConnection(commm.GetConnectionString());
            string sql = "INSERT INTO aismtc_career (name, email, phone, address, reference) output inserted.carrer_id VALUES   (@name, @email, @phone, @address, @reference)";


            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[5];


                param[0] = new SqlParameter("@name", SqlDbType.VarChar, 50);
                param[1] = new SqlParameter("@email", SqlDbType.VarChar, 50);
                param[2] = new SqlParameter("@phone", SqlDbType.VarChar, 50);
                param[3] = new SqlParameter("@address", SqlDbType.VarChar, 50);
                param[4] = new SqlParameter("@reference", SqlDbType.VarChar, 50);


                param[0].Value = name;
                param[1].Value = email;
                param[2].Value = phone;
                param[3].Value = address;
                param[4].Value = reference;


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



    }
}
