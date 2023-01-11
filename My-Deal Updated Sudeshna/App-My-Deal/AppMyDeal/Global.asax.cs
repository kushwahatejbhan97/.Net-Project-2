using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;


namespace MyDeal
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        private void RegisterRoutes(RouteCollection routes)
        {
            try
            {
                routes.MapPageRoute("", "", "~/home.aspx");
                routes.MapPageRoute("default", "default", "~/default.aspx");
                routes.MapPageRoute("tag", "tag/{TagUrl}", "~/Tag.aspx");
                routes.MapPageRoute("details", "details/{DetailsUrl}", "~/ListingDetails.aspx");
                routes.MapPageRoute("category", "category/{CatUrl}", "~/Category.aspx");
                routes.MapPageRoute("search", "search/{keysearch}", "~/Search.aspx");
                routes.MapPageRoute("listing-login", "listing-login", "~/FreeListingLogin.aspx");
                routes.MapPageRoute("listing-regs", "listing-regs", "~/NewFreeListingRegs.aspx");
                routes.MapPageRoute("recover-password", "recover-password", "~/RecoverPassword.aspx");


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
                if (Request.AppRelativeCurrentExecutionFilePath == "~/home.aspx")
                    Response.Redirect("~/");
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