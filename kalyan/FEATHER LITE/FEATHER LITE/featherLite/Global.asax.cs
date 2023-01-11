using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace featherLite
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoute(RouteTable.Routes);

        }

        private void RegisterRoute(RouteCollection routes)
        {
            try { 
            routes.MapPageRoute("Home", "Home", "~/default.aspx");
            routes.MapPageRoute("ContactUs", "ContactUs", "~/contact.aspx");
            routes.MapPageRoute("Education", "Education", "~/education.aspx");
            routes.MapPageRoute("ExecutiveTables", "ExecutiveTables", "~/ExecutiveTables.aspx");
            routes.MapPageRoute("Genesis", "Genesis", "~/Genesis.aspx");
            routes.MapPageRoute("OfficeChairs", "OfficeChairs", "~/Officechairs.aspx");
            routes.MapPageRoute("Sofas", "Sofas", "~/Sofas.aspx");
            routes.MapPageRoute("WorkStation", "WorkStation", "~/WorkStation.aspx");
            }
            catch
            {

            }
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            try
            { 
            if (Request.AppRelativeCurrentExecutionFilePath == "~/")
                Response.Redirect("~/Home");
            }
            catch
            {

            }

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}