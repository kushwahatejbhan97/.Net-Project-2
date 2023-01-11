<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Company.Master" AutoEventWireup="true" CodeBehind="Change-password.aspx.cs" Inherits="LocalPandit.Account.Change_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="tz-2 tz-2-admin">
    <div class="tz-2-com tz-2-main">
        <h4>Change Password</h4> 
        
       

        <!-- Dropdown Structure -->
        <div class="split-row">
            <div class="col-md-12">
                <div class="box-inn-sp ad-mar-to-min">
                    <div class="tab-inn ad-tab-inn">
                        <div class="tz2-form-pay tz2-form-com ad-noto-text">
                            <div class="container" style="padding:2em;">
                                <div class="row">
                                    <div class=" col-md-10">
                                        <label>Enter News Password</label>
                                        <asp:TextBox ID="txtpass" class="form-control" runat="server" TextMode="Password" Placeholder="Enter your new password" required=""></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class=" col-md-10">
                                         <label>Confirm Password</label>
                                        <asp:TextBox ID="txtconpass" class="form-control" runat="server" TextMode="Password" Placeholder="Enter confirm password" required=""></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtpass" ControlToValidate="txtconpass" runat="server" ForeColor="Red" ErrorMessage="Password Mismatch!"></asp:CompareValidator>
                                    </div>
                                </div>
                               
                                <div class="row">
                                    <div class=" col-md-10" style="    padding: 2em;">
                                        <asp:Button ID="btnChngPass" runat="server"  class="waves-effect waves-light btn-large" onclick="ChangPassClick" Text="SUBMIT" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
