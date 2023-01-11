using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalPandit
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsearchMain_Click(object sender, EventArgs e)
        {
           string body = @"<table width='100%' border='0' cellspacing='0' cellpadding='0' style='width:100%;max-width:540px;border:2px solid #f3f3f3;text-align:left' align='center'>
                        <tbody>
                            <tr>
                                <td>
                                    <table width='100%' border='0' cellspacing='0' cellpadding='0' bgcolor='#ffffff' align='center' style='width:100%!important'>
                                        <tbody>
                                            <tr>
                                                <td width='100%' style='vertical-align:top;text-align:left;padding:20px 0 10px 20px;border-bottom:1px solid #f2efe6'>
                                                    <table width='100%' cellspacing='0' cellpadding='0'>
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <a href='http://www.localpandit.com/' target='_blank' >
                                                                      <center> <img src='http://www.localpandit.com/images/logo.png' border='0' class='CToWUd'> </a></center> 
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style='padding:20px 20px 5px;font-family:Roboto,arial;font-size:14px;vertical-align:top;line-height:20px;color:#626262'> Chandrashekar enquired for your business related category at Local Pandit </td>
                                            </tr>
                                            <tr>
                                                <td style='padding:10px 10px;font-family:Roboto,arial;font-size:20px;vertical-align:top;line-height:20px;color:#424242;background-color:#a2fd00;text-align:center'>Feedback Details </td>
                                            </tr>
                                            <tr>
                                                <td style='padding:5px 20px;font-family:Roboto,arial;vertical-align:top;line-height:20px;color:#626262'>
                                                    <table width='100%' border='0' cellspacing='0' cellpadding='0'>
                                                        <tbody>
                                                            <tr>
                                                                <td width='50%' style='color:#626262;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>Caller Name: </td>
                                                                <td width='50%' style='color:#222222;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>Mr Chandrashekar</td>
                                                            </tr>
                                                            <tr>
                                                                <td width='50%' style='color:#626262;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>Caller Requirement: </td>
                                                                <td width='50%' style='color:#222222;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>E Commerce Website Designers</td>
                                                            </tr>
                                                            <tr>
                                                                <td width='50%' style='color:#626262;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>Call Date &amp; Time: </td>
                                                                <td width='50%' style='color:#222222;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>Sat, 23 Dec 2017 10:19:06</td>
                                                            </tr>
                                       
                                                            <tr>
                                                                <td width='50%' style='color:#626262;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>City: </td>
                                                                <td width='50%' style='color:#222222;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>Hyderabad</td>
                                                            </tr>
                                                            <tr>
                                                                <td width='50%' style='color:#626262;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>Caller Phone: </td>
                                                                <td width='50%' style='color:#222222;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>+919515114375</td>
                                                            </tr>
                                                            <tr>
                                                                <td width='50%' style='color:#626262;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>Caller Email: </td>
                                                                <td width='50%' style='color:#222222;font-size:14px;vertical-align:top;line-height:20px;padding:5px'>
                                                                    <a href='mailto:chandarrasekar@gmail.com' style='color:#1274c0' target='_blank'>chandarrasekar@gmail.com</a>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                        
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>";
        }
    }
}