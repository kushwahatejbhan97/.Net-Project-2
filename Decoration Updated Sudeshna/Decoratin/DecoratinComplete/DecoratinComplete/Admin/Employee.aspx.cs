using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DecoratinComplete.Admin
{
    public partial class Employee : System.Web.UI.Page
    {
        DAL.Admin dalclass = new DAL.Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEmpoyee_Click(object sender, EventArgs e)
        {
            try
            {
                String DelName = txtName.Text;
                String DelAddress = txtAddress.Text;
                String DelPhone = txtPhone.Text;
                String DelAddressProof = txtAddressProof.Text;
                String DelPassword = txtPassword.Text;

                int EmpId = dalclass.insertEmpIdtoDel(DelName, DelAddress, DelPhone, DelAddressProof, DelPassword);

            }
            catch
            {

            }
        }
    }
}