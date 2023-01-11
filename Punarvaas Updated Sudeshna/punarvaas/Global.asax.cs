using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace punarvaas
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        private void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("home", "home", "~/Default.aspx");
            routes.MapPageRoute("about", "about", "~/about.aspx");
            routes.MapPageRoute("why-punarvaas", "why-punarvaas", "~/why-punarvaas.aspx");
            routes.MapPageRoute("how-we-help", "how-we-help", "~/how-we-help.aspx");
            routes.MapPageRoute("alcohol-treatment", "alcohol-treatment", "~/alcohol-treatment.aspx");
            routes.MapPageRoute("drug-rehabilitation", "drug-rehabilitation", "~/drug-rehabilitation.aspx");
            routes.MapPageRoute("contact", "contact", "~/contact.aspx");

        }
        
        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            if (Request.AppRelativeCurrentExecutionFilePath == "~/Default.aspx")
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