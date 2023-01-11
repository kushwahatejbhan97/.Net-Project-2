using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;

namespace DecoratinComplete
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        private void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("", "", "~/Default.aspx");
            routes.MapPageRoute("home", "home", "~/Home.aspx");
            routes.MapPageRoute("login", "login","~/login.aspx");
            routes.MapPageRoute("register", "register", "~/Register.aspx");
            routes.MapPageRoute("checkout", "checkout","~/Demo.aspx");
            routes.MapPageRoute("checkoutes", "checkoutes", "~/LoginCheckout.aspx");
            routes.MapPageRoute("search", "search/{keysearch}/", "~/SearchPage.aspx");
            routes.MapPageRoute("searches", "searches/{keysearch}/", "~/loginSearch.aspx");
            routes.MapPageRoute("product", "product/{ProductUrl}", "~/Single.aspx");
            routes.MapPageRoute("productes", "productes/{ProductUrl}", "~/LoginSingle.aspx");
            routes.MapPageRoute("category", "category/{CatUrl}", "~/Category.aspx");
            routes.MapPageRoute("categories", "categories/{CatUrl}", "~/loginCategory.aspx");
            routes.MapPageRoute("tag","tag/{tagSearch}","~/Tag.aspx");
            routes.MapPageRoute("tags", "tags/{tagSearch}", "~/LoginTag.aspx");
            routes.MapPageRoute("profile", "profile", "~/profile.aspx");
            routes.MapPageRoute("order", "order", "~/Order.aspx");
            routes.MapPageRoute("return", "return", "~/Return.aspx");
            routes.MapPageRoute("address", "address", "~/LoginAddAddress.aspx");
            routes.MapPageRoute("addAddress", "addAddress", "~/AddAddress.aspx");
            routes.MapPageRoute("ReturnPolicy", "ReturnPolicy", "~/ReturnPolicy.aspx");
            routes.MapPageRoute("PrivacyPolicy", "PrivacyPolicy", "~/Privecy.aspx");
            routes.MapPageRoute("Contact", "Contact", "~/Contact.aspx");
            //routes.MapPageRoute("OrderHistory", "OrderHistory/{OrderUrl}", "~/loginOrderHistory.aspx");

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            if (Request.AppRelativeCurrentExecutionFilePath == "~//")
                Response.Redirect("~/");
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