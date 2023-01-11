using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mastercraft
{
    public partial class Default : System.Web.UI.Page
    {
        DAL.Class1 dalclass = new DAL.Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = dalclass.text_finder(1);
                Label2.Text = dalclass.text_finder(2);
                Label3.Text = dalclass.text_finder(3);
                Label4.Text = dalclass.text_finder(4);
                Label5.Text = dalclass.text_finder(11);
                Label6.Text = dalclass.text_finder(12);
                Label7.Text = dalclass.text_finder(13);
                Label8.Text = dalclass.text_finder(14);
                Label9.Text = dalclass.text_finder(15);
                Label10.Text = dalclass.text_finder(5);
                Label11.Text = dalclass.text_finder(16);
                Label12.Text = dalclass.text_finder(6);
                Label13.Text = dalclass.text_finder(17);
                Label14.Text = dalclass.text_finder(7);
                Label15.Text = dalclass.text_finder(8);
                Label16.Text = dalclass.text_finder(9);
                Label17.Text = dalclass.text_finder(10);
               
            
               
                
                wows1_0.Attributes.Add("title", dalclass.text_finder(78));
                Label18.Text = dalclass.text_finder(79);
                wows1_1.Attributes.Add("title", dalclass.text_finder(80));
                Label19.Text = dalclass.text_finder(81);
                wows1_2.Attributes.Add("title", dalclass.text_finder(82));
                Label20.Text = dalclass.text_finder(83);
                wows1_3.Attributes.Add("title", dalclass.text_finder(84));
                Label21.Text = dalclass.text_finder(85);
                wows1_4.Attributes.Add("title", dalclass.text_finder(86));
                Label22.Text = dalclass.text_finder(87);
                wows1_5.Attributes.Add("title", dalclass.text_finder(88));
                Label23.Text = dalclass.text_finder(89);
               
               /// ="Our Office"

             
                //wows1_0.Attributes.Add(""


                
                //ArrayList arr = dalclass.notice_finder();
                //for (int i = 0; i < (arr.Count / 2); i++)
                //{
                //    TableRow tr = new TableRow();
                //    TableCell data = new TableCell();
                //    HyperLink hl = new HyperLink();
                //    hl.Text = arr[2 * i].ToString();
                //    hl.NavigateUrl = arr[2 * i + 1].ToString();
                //    hl.Target = "_blank";
                //    hl.Width = 200;
                //    hl.CssClass = "hlsty";
                //    data.Controls.Add(hl);
                //    tr.Cells.Add(data);

                //    Table1.Rows.Add(tr);

                //}
            }
            catch
            {
            }



        }
    }
}