<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PaymentStatusUpdate.aspx.cs" Inherits="DecoratinComplete.PaymentStatusUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Payment Status Update</h4>
                </div>

                

                <div class="form-body">
                   <div class="row">

                       
                           <div class="form-group row ">
                               <div class="col-md-6">
                            <label for="txtOrderId">OrderId</label>
                             <asp:TextBox ID="txtOrderId" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   

                            
                        </div>
                               <div class="col-md-6">
                            <label for="drpPaymentMode">PaymentMode</label>
                        <asp:DropDownList ID="drpPaymentMode" CssClass="form-control" runat="server">
                            <asp:ListItem>Cash on Delivery</asp:ListItem>
                                        <asp:ListItem>PayuMoney</asp:ListItem>
                                         <asp:ListItem>Paytm</asp:ListItem>
                                        <asp:ListItem>RazorPay</asp:ListItem>
                                        <asp:ListItem>Razorpay link</asp:ListItem>
                                        <asp:ListItem>Payment link</asp:ListItem>
                                        <asp:ListItem>PhonePe</asp:ListItem>
                                        <asp:ListItem>Google Pay</asp:ListItem>
                                        <asp:ListItem>Other Wallet</asp:ListItem>
                                        <asp:ListItem>Other Payment Mode</asp:ListItem>
                        </asp:DropDownList>
                             
                        
                            
                        </div>

                               </div>

                           <div class="form-group row">
                           

                               <div class="col-md-6">
                            <label for="DrpPaymentStatus">PaymentStatus</label>
                               <asp:DropDownList ID="DrpPaymentStatus" CssClass="form-control" runat="server">
                                        <asp:ListItem Value="Unpaid">Unpaid</asp:ListItem>
                                        <asp:ListItem Value="Failed">Failed</asp:ListItem>
                                        <asp:ListItem Value="Success">Success</asp:ListItem>
                                        <asp:ListItem Value="Pending">Pending</asp:ListItem>
                                        <asp:ListItem Value="failed">failed</asp:ListItem>
                                        <asp:ListItem Value="success">success</asp:ListItem>
                                          <asp:ListItem Value="pending">pending</asp:ListItem>
                                        <asp:ListItem Value="Partial Payment">Partial Payment</asp:ListItem>
                                    </asp:DropDownList>
                             
                            
                        </div>

                               <div class="col-md-6">
                            <label for="txtNetPayable">Net Payable</label>
                             <asp:TextBox ID="txtNetPayable" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                               

                            
                        </div>

                           
                               </div>

                           
                           

                           </div>

                    <asp:Button ID="btnPaymentStatusUpdate" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit"  />

                   
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>

</asp:Content>
