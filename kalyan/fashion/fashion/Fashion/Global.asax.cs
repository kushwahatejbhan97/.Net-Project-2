using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace fashion
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoute(RouteTable.Routes);
        }

        private void RegisterRoute(RouteCollection routes)
        {
            routes.MapPageRoute("home", "home", "~/default.aspx");
            routes.MapPageRoute("about", "about", "~/aboutus.aspx");
            routes.MapPageRoute("business", "business", "~/business.aspx");
            routes.MapPageRoute("contact", "contact", "~/contact.aspx");
            routes.MapPageRoute("electronics", "electronics", "~/electronics.aspx");
            routes.MapPageRoute("ewastemanagement", "ewastemanagement", "~/ewastemanagement.aspx");
            routes.MapPageRoute("jeans", "Jeans", "~/jeans.aspx");
            routes.MapPageRoute("joggers", "joggers", "~/joggers.aspx");
            routes.MapPageRoute("shirts", "shirts", "~/shirts.aspx");
            routes.MapPageRoute("shorts", "shorts", "~/shorts.aspx");
            routes.MapPageRoute("trousers", "trousers", "~/trousers.aspx");
            routes.MapPageRoute("tshirts", "tshirts", "~/tshirts.aspx");
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            if (Request.AppRelativeCurrentExecutionFilePath == "~/")
                Response.Redirect("~/Home");
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