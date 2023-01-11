<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCouponSingle.aspx.cs" Inherits="DecoratinComplete.Admin.AddCouponSingle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Add Coupon</h4>
                </div>
                <div class="form-body">

                    <div class="row">

                        <div class="form-group row "></div>
           
                    <asp:DetailsView ID="DetailsView1"  runat="server" CssClass="table table-bordered table-striped no-margin grd_tble" DataKeyNames="CouponId" DataSourceID="SqlDataSource1" DefaultMode="Insert" AutoGenerateRows="False"  >
                        <Fields>
                            <asp:BoundField DataField="CouponId" HeaderText="CouponId" InsertVisible="False" ReadOnly="True" SortExpression="CouponId" />
                         
                            <asp:TemplateField HeaderText="CouponName" ControlStyle-CssClass="col-md-6" SortExpression="CouponName">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="" CssClass="form-control" Text='<%# Bind("CouponName") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Value" ControlStyle-CssClass="col-md-6" SortExpression="Value">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Value") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                          
                            <asp:TemplateField HeaderText="Type" SortExpression="Type">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Times" SortExpression="Times">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Times") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="FDate" SortExpression="FDate">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("FDate") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TDate" SortExpression="TDate">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("TDate") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="MaxDisc" SortExpression="MaxDisc">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("MaxDisc") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="MinAmount" SortExpression="MinAmount">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("MinAmount") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PaymentType" SortExpression="PaymentType">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("PaymentType") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ClientId" SortExpression="ClientId">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("ClientId") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description" SortExpression="Description">
                                
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                
                            </asp:TemplateField>
                        </Fields>
                    </asp:DetailsView>



           
                    <br />
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                        
                        InsertCommand="INSERT INTO [Coupon] ([CouponName], [Value], [Type], [Times], [FDate], [TDate], [MaxDisc], [MinAmount], [PaymentType], [ClientId], [Title], [Description]) VALUES (@CouponName, @Value, @Type, @Times, @FDate, @TDate, @MaxDisc, @MinAmount, @PaymentType, @ClientId, @Title, @Description)" ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" 
                        >
                        
                        <InsertParameters>
                            <asp:Parameter Name="CouponName" Type="String" />
                            <asp:Parameter Name="Value" Type="Int32" />
                            <asp:Parameter Name="Type" Type="Int32" />
                            <asp:Parameter Name="Times" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="FDate" />
                            <asp:Parameter DbType="Date" Name="TDate" />
                            <asp:Parameter Name="MaxDisc" Type="Int32" />
                            <asp:Parameter Name="MinAmount" Type="Int32" />
                            <asp:Parameter Name="PaymentType" Type="Int32" />
                            <asp:Parameter Name="ClientId" Type="Int32" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                        </InsertParameters>
                        
                    </asp:SqlDataSource>



           </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
