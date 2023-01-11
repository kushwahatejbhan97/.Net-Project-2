using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
    class commm
    {

        private static string m_ConnectionString = "Data Source= SG2NWPLS14SQL-v04.shr.prod.sin2.secureserver.net;Initial Catalog=Bestdial;Persist Security Info=True;User ID=Bestdial;Password=Ro8wm^50";
        //private static string m_ConnectionString = "Data Source=DEXTEROUS-84F8BE;Initial Catalog=dexterous; User ID=sa;Password='dex@123';trusted_connection=false";
        //private static string m_ConnectionString = "Data Source=PC001;Initial Catalog=dexterous;Persist Security Info=True;User ID=sa;Password=dexterous@123";
        //private static string m_ConnectionString = "Data Source=ASUS-PC\\SQLEXPRESS;Initial Catalog=dexterous; User ID=dexterous;Password='dexterous@123';trusted_connection=false";
        // private static string m_ConnectionString = "Data Source=DEXTEROUS-PC;Initial Catalog=dexterous; User ID=sa;Password='dexterous@123';trusted_connection=false";
        public static string GetConnectionString()
        {
            return m_ConnectionString;
        }
    }

    class commmPriya
    {

        private static string m_ConnectionStringPriya = "Data Source=Priyamarketing.db.10402097.hostedresource.com; Initial Catalog=Priyamarketing; User ID=Priyamarketing; Password='Nishant@1';trusted_connection=false";
        public static string GetConnectionString()
        {
            return m_ConnectionStringPriya;
        }
    }
}