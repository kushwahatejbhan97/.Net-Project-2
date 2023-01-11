using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
    class commm
    {

         private static string m_ConnectionString = "Data Source=148.72.232.166; Initial Catalog=Priyamarketing; User ID=Priyamarketing; Password='Nishant@1';trusted_connection=false";
        //private static string m_ConnectionString = "Data Source=DEXTEROUS-84F8BE;Initial Catalog=Priyamarketing; User ID=sa;Password='dex@123';trusted_connection=false";
        //private static string m_ConnectionString = "Data Source=PC001;Initial Catalog=Priyamarketing;Persist Security Info=True;User ID=sa;Password=dexterous@123";
        //private static string m_ConnectionString = "Data Source=ASUS-PC\\SQLEXPRESS;Initial Catalog=Priyamarketing; User ID=dexterous;Password='dexterous@123';trusted_connection=false";
        // private static string m_ConnectionString = "Data Source=DEXTEROUS-PC;Initial Catalog=Priyamarketing; User ID=sa;Password='dexterous@123';trusted_connection=false";
        public static string GetConnectionString()
        {
            return m_ConnectionString;
        }
    }
}