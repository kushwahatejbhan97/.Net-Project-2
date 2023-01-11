using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;
namespace aismtc
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoute(RouteTable.Routes);
        }

        private void RegisterRoute(RouteCollection routes)
        {
            routes.MapPageRoute("home", "home", "~/Default.aspx");
            routes.MapPageRoute("aboutus", "aboutus", "~/aboutus.aspx");
            routes.MapPageRoute("alumni", "alumni", "~/alumni.aspx");
            routes.MapPageRoute("mission-vision", "mission-vision", "~/missionvision.aspx");
            routes.MapPageRoute("career", "career", "~/career.aspx");
            routes.MapPageRoute("contact-us", "contact-us", "~/contact-us.aspx");
            routes.MapPageRoute("directorsmessage", "directorsmessage", "~/directorsmessage.aspx");
            routes.MapPageRoute("history", "history", "~/history.aspx");
            routes.MapPageRoute("internationalcources", "internationalcources", "~/internationalcources.aspx");
            routes.MapPageRoute("packages", "packages", "~/packages.aspx");
            routes.MapPageRoute("pgdiploma", "pgdiploma", "~/pgdiploma.aspx");
            routes.MapPageRoute("qualitypolicies", "qualitypolicies", "~/qualitypolicies.aspx");
            routes.MapPageRoute("services", "services", "~/services.aspx");
            routes.MapPageRoute("studentspeak", "studentspeak", "~/studentspeak.aspx");
            routes.MapPageRoute("successstory", "successstory", "~/successstory.aspx");
            routes.MapPageRoute("testimonials", "testimonials", "~/testimonials.aspx");
            routes.MapPageRoute("trainigs", "trainigs", "~/trainigs.aspx");
            routes.MapPageRoute("traneer1", "traneer1", "~/traneer1.aspx");
            routes.MapPageRoute("traneer2", "traneer2", "~/traneer2.aspx");
            routes.MapPageRoute("traneer3", "traneer3", "~/traneer3.aspx");
            routes.MapPageRoute("traneer4", "traneer4", "~/traneer4.aspx");
            routes.MapPageRoute("imagegallery", "imagegallery", "~/imagegallery.aspx");
            routes.MapPageRoute("videogallery", "videogallery", "~/videogallery.aspx");
            routes.MapPageRoute("goals", "goals", "~/goals.aspx");
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

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