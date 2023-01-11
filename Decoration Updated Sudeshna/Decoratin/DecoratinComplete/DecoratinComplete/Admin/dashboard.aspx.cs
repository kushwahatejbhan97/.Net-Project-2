using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class dashboard : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            String amount = dalclass.amount();

            LblRevenue.Text = amount;

            String revenue = dalclass.numberoforder();
            LblOrderRecieved.Text = revenue;
            String Users = dalclass.CountUsers();
            LblUsers.Text = Users;
            int visit = (int.Parse(Users) * 5) + 99;
            LblVisitors.Text = visit.ToString();

            String Stock = dalclass.Stock();
            //LblStock.Text = Stock.ToString();
            LblStock.Text = Stock;
        }
    }
}