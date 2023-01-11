<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="NewOrder.aspx.cs" Inherits="DecoratinComplete.NewOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>New Order</h4>
                </div>

                <div class="form-body">
                   <div class="row">

                           <div class="form-group row ">
                               <div class="col-md-6">
                            <label for="txtPhoneNo">Phone No</label>
                             <asp:TextBox ID="txtPhoneNo" CssClass="form-control" placeholder="Mobile Number" runat="server"></asp:TextBox>
                                   

                            
                        </div>

                               <div class="col-md-6">
                            <label for="TextClientName">Client's Name</label>
                             <asp:TextBox ID="TextClientName" CssClass="form-control" placeholder="Client's Name" runat="server"></asp:TextBox>
                                   

                            
                        </div>

                               </div>

                           <div class="form-group row">
                           

                               

                               <div class="col-md-12">
                            <label for="TextClientEmail">Client's Email</label>
                             <asp:TextBox ID="TextClientEmail" CssClass="form-control" placeholder="Client's Email" runat="server"></asp:TextBox>
                                   

                            
                        </div>

                           
                               </div>

                         
                           </div>

                    <asp:Button ID="btnNewOrder" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit"  />

                           </div>
                    
             </div>
            </div>

        </div>
</asp:Content>
