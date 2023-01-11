using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HimsIndia.Admin
{
    public partial class AddModelImage : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                try
                {
                    int ModelId = int.Parse(Request.QueryString["ModelId"]);

                    if (ModelId != 0)
                    {

                        
                        SqlDataSource1.SelectCommand = "SELECT [ModelId], [Title], [ModelSliderId], [ALT] FROM [ModelSlider] Where [ModelId]='" + ModelId + "'";
                        SqlDataSource1.DataBind();
                        GridView1.DataBind();
                    }
                }
                catch
                {
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int ModelId = int.Parse(Request.QueryString["ModelId"]);
                string fn1 = dalclass.InsertImage("\\Admin\\Model\\", 8) + ".jpg";

                string SaveLocation1 = Server.MapPath("\\Admin\\" + "\\Model\\" + fn1);
                if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation1);
                    dalclass.ItemSliderInsert(ModelId, fn1, txtFname.Text, "HIMSIndia" + txtFname.Text);

                }

                if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
                {

                    string fn2 = dalclass.InsertImage("\\Admin\\" + "\\Model\\", 8) + ".jpg";
                    string SaveLocation2 = Server.MapPath("\\Admin\\" + "\\Model\\" + fn2);
                    FileUpload2.PostedFile.SaveAs(SaveLocation2);
                    dalclass.ItemSliderInsert(ModelId, fn2, txtFname.Text, "HIMSIndia" + txtFname.Text);


                }
                if ((FileUpload3.PostedFile != null) && (FileUpload3.PostedFile.ContentLength > 0))
                {
                    string fn3 = dalclass.InsertImage("\\Admin\\" + "\\Model\\", 8) + ".jpg";
                    string SaveLocation3 = Server.MapPath("\\Admin\\" + "\\Model\\" + fn3);
                    FileUpload3.PostedFile.SaveAs(SaveLocation3);
                    dalclass.ItemSliderInsert(ModelId, fn3, txtFname.Text, "HIMSIndia" + txtFname.Text);
                }
                if ((FileUpload4.PostedFile != null) && (FileUpload4.PostedFile.ContentLength > 0))
                {
                    string fn4 = dalclass.InsertImage("\\Admin\\" + "\\Model\\", 8) + ".jpg";
                    string SaveLocation4 = Server.MapPath("\\Admin\\" + "\\Model\\" + fn4);
                    FileUpload4.PostedFile.SaveAs(SaveLocation4);
                    dalclass.ItemSliderInsert(ModelId, fn4, txtFname.Text, "HIMSIndia" + txtFname.Text);
                }
                if ((FileUpload5.PostedFile != null) && (FileUpload5.PostedFile.ContentLength > 0))
                {
                    string fn5 = dalclass.InsertImage("\\Admin\\" + "\\Model\\", 8) + ".jpg";
                    string SaveLocation5 = Server.MapPath("\\Admin\\" + "\\Model\\" + fn5);
                    FileUpload5.PostedFile.SaveAs(SaveLocation5);
                    dalclass.ItemSliderInsert(ModelId, fn5, txtFname.Text, "HIMSIndia" + txtFname.Text);


                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                          "alert('Successfully Updated your Information.'); window.location='" + "/';", true);

            }
            catch(Exception ex)
            {
                string msg;
                msg = ex.Message;
            }

        }


    }
}
    