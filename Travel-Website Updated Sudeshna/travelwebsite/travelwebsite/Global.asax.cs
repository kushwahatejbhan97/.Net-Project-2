using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace travelwebsite
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }
        private void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("home", "home", "~/default.aspx");
            routes.MapPageRoute("about", "about", "~/about.aspx");
            routes.MapPageRoute("services", "services", "~/services.aspx");
            routes.MapPageRoute("explore-south-east-asia", "explore-south-east-asia", "~/explore-south-east-asia.aspx");
            routes.MapPageRoute("study-abroad", "study-abroad", "~/study-abroad.aspx");
           
            routes.MapPageRoute("contact", "contact", "~/contact.aspx");

        }
        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            if (Request.AppRelativeCurrentExecutionFilePath == "~/default.aspx")
                Response.Redirect("/home");
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