<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="DecoratinComplete.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>CHANGE PASSWORD</h4>
                </div>
                <div class="form-body">
                   <div class="row">

                           <div class="form-group row ">
                               <div class="col-md-6">
                            <label for="txtNewPassword">Enter New Password</label>
                             <asp:TextBox ID="txtNewPassword" TextMode="Password" CssClass="form-control" placeholder="New Password" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Productform" ControlToValidate="txtNewPassword" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                       
                        </div>
                               <div class="col-md-6">
                            <label for="txtReNewPassword">Re-Enter New Password</label>
                             <asp:TextBox ID="txtReNewPassword" TextMode="Password" CssClass="form-control" placeholder="Re-Enter New Password" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Productform" ControlToValidate="txtReNewPassword" ForeColor="Red" runat="server" ErrorMessage="* Enter Content"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtReNewPassword" ControlToCompare="txtNewPassword" Operator="Equal" ForeColor="Red"  ErrorMessage="*Password does not match" ></asp:CompareValidator>
                               
                        </div>

                               </div>

                           </div>

                    <asp:Button ID="btnChangePass" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnChangePass_Click" />
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>
</asp:Content>
