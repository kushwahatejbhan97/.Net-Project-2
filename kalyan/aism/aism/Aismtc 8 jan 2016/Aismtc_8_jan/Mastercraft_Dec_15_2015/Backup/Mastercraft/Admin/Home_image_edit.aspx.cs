using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mastercraft.Admin
{
    public partial class Home_image_edit : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        String uid;
        String access_lvl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                uid = (Session["ID"].ToString());
                access_lvl = (Session["access"].ToString());

            }
            else
            {
                //Session["login_redirector"] = "Item_add_UMP.aspx";
                Response.Redirect("../default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["ID"] = null;
            Session["access"] = null;
            Session.Abandon();
            Response.Redirect("../Default.aspx", false);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                string fn = DropDownList1.SelectedItem.ToString();
                string SaveLocation = Server.MapPath("../AISM_Slider/data1/images/banner") + fn + ".jpg";

                if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
                {

                    FileUpload2.PostedFile.SaveAs(SaveLocation);
                    string display = "Photo has been Updated";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                }


            }
            catch
            {



            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string fn = DropDownList2.SelectedItem.ToString();
                string SaveLocation = Server.MapPath("../images/img") + fn + ".jpg";

                if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                {

                    FileUpload1.PostedFile.SaveAs(SaveLocation);
                    string display = "Photo has been Updated";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                }


            }
            catch
            {



            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                string fn = DropDownList3.SelectedItem.ToString();
                string SaveLocation = Server.MapPath("../images/low_") + fn + ".jpg";

                if ((FileUpload3.PostedFile != null) && (FileUpload3.PostedFile.ContentLength > 0))
                {

                    FileUpload3.PostedFile.SaveAs(SaveLocation);
                    string display = "Photo has been Updated";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                }


            }
            catch
            {



            }

        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                string fn = DropDownList4.SelectedItem.ToString();
                string SaveLocation = Server.MapPath("../images/low") + fn + ".jpg";

                if ((FileUpload4.PostedFile != null) && (FileUpload4.PostedFile.ContentLength > 0))
                {

                    FileUpload4.PostedFile.SaveAs(SaveLocation);
                    string display = "Photo has been Updated";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
                }


            }
            catch
            {



            }

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if ((FileUpload5.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {


                String path = Server.MapPath("../images/7.jpg");
                FileUpload5.SaveAs(path);


            }

        }
    }
}