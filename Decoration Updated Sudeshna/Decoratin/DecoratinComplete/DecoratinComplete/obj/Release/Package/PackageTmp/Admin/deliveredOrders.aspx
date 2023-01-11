<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="deliveredOrders.aspx.cs" Inherits="DecoratinComplete.Admin.deliveredOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>ORDER RECIEVED</h4>
                </div>
                <div class="form-body">
                   <div class="row">

                           <div class="form-group row ">
                               <div class="col-md-6">
                            <label for="txtOrderID">Order ID</label>
                             <asp:TextBox ID="txtOrderID" CssClass="form-control" placeholder="Enter Order ID" runat="server"></asp:TextBox>
                                   

                            
                        </div>
                               

                               </div>

                           

                           </div>

                    <asp:Button ID="btnBookedOrders" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnBookedOrders_Click"/>
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Orders</h4>
                </div>
                <div class="form-body" style="overflow-x:scroll;">
              
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" DataKeyNames="OrderId" AutoGenerateColumns="False"  EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="OrderId" DataNavigateUrlFormatString="OrderDetailsDelete.aspx?orderid={0}" DataTextField="OrderId" HeaderText="OrderId" />
                            
                            <asp:BoundField DataField="ClientId" HeaderText="ClientId" SortExpression="ClientId" />
                            <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
                            <asp:BoundField DataField="Date" HeaderText="Order DateTime	" SortExpression="Date" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            
                            
                            <asp:BoundField DataField="OrderDetails" HeaderText="OrderDetails" SortExpression="OrderDetails" />
                            <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" SortExpression="SubTotal" />
                            <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
                            <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
                            <asp:BoundField DataField="GrandTotal" HeaderText="GrandTotal" SortExpression="GrandTotal" />
                            <asp:BoundField DataField="DeliveryCharge" HeaderText="DeliveryCharge" SortExpression="DeliveryCharge" />
                            <asp:BoundField DataField="Saving" HeaderText="Saving" SortExpression="Saving" />
                            <asp:BoundField DataField="ProductCount" HeaderText="ProductCount" SortExpression="ProductCount" />
                            <asp:BoundField DataField="Packcount" HeaderText="Packcount" SortExpression="Packcount" />
                            <asp:BoundField DataField="PaymentMode" HeaderText="PaymentMode" SortExpression="PaymentMode" />
                            <asp:BoundField DataField="PaymentStatus" HeaderText="PaymentStatus" SortExpression="PaymentStatus" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="ABN" HeaderText="ABN" SortExpression="ABN" />
                            

                            
                        </Columns>
                    </asp:GridView>
                    
              
            </div>
                
             </div>
            </div>

        </div>
</asp:Content>
