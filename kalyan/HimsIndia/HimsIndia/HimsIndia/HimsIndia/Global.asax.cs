using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace HimsIndia
{
    public class Global : System.Web.HttpApplication
    {
       

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoute(RouteTable.Routes);
        }

        private void RegisterRoute(RouteCollection routes)
        {
            routes.MapPageRoute("Home", "Home", "~/Default.aspx");
            routes.MapPageRoute("About","About","~/About.aspx");
            routes.MapPageRoute("Academy", "Academy", "~/Academy.aspx");
            routes.MapPageRoute("Apply", "Apply", "~/Apply.aspx");
            routes.MapPageRoute("Book", "Book", "~/Book.aspx");
            routes.MapPageRoute("Become-a-Model", "Become-a-Model", "~/Categories.aspx");
            routes.MapPageRoute("Artist-Registration", "Artist-Registration", "~/OtherCategory.aspx");
            routes.MapPageRoute("PostJobs", "PostJobs", "~/Post.aspx");
            routes.MapPageRoute("HimsIndiaTour", "HimsIndiaTour", "~/Tour.aspx");
            routes.MapPageRoute("Franchise", "Franchise", "~/Franchise.aspx");
            routes.MapPageRoute("Contact-Us", "Contact-Us", "~/Contact-Us.aspx");

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