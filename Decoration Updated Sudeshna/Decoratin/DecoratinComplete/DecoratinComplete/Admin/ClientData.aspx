<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ClientData.aspx.cs" Inherits="DecoratinComplete.ClientData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <%--<div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>SEND SMS</h4>
                </div>
                <div class="form-body">

                   <div class="row">

                       <div class="form-group row ">
                             
                               
                               <div class="col-md-12">
                                   

                                   <h4 class="newstyle" style="color:black;">Single Message</h4>


                            
                             <asp:TextBox ID="TextphnNo" CssClass="form-control" placeholder="10 Digit Mobile Number" runat="server"></asp:TextBox>
                               

                            
                        </div>

                               </div>


                           <div class="form-group row ">
                             
                               <div class="col-md-12">
                                   
                            
                             <asp:TextBox ID="txtmsg" TextMode="MultiLine" CssClass="form-control" placeholder="Your Message" runat="server"></asp:TextBox>
                                   

                            
                        </div>
                               

                               </div>


                       

                           

                           </div>

                    <asp:Button ID="btnClientData" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Send" />
                           </div>



                <div class="form-body">

                   <div class="row">

                       


                           <div class="form-group row ">
                             
                               <div class="col-md-12">
                                   
                            <h4 class="newstyle" style="color:black;">Message All Client</h4>
                             <asp:TextBox ID="TextSearchClient" TextMode="MultiLine" CssClass="form-control" placeholder="Your Message" runat="server"></asp:TextBox>
                      
                        </div>
                           </div>


                           </div>

                    <asp:Button ID="Button1" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Send" />
                           </div>


                <div class="form-body">

                   <div class="row">

                       


                           <div class="form-group row ">
                             
                               <div class="col-md-12">
                                   
                            <h4 class="newstyle" style="color:black;">Search Client</h4>
                             <asp:TextBox ID="TextBox1" TextMode="MultiLine" CssClass="form-control" placeholder="Your Message" runat="server"></asp:TextBox>
                      
                        </div>
                           </div>


                           </div>

                    <asp:Button ID="Button2" ValidationGroup="" CssClass="btn btn-dark" runat="server" Text="Send" />
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>--%>



    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Client Data</h4>
                </div>
                <div class="form-body" style="overflow-x:scroll;">
                 
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="ClientId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="ClientId" HeaderText="ClientId" ReadOnly="True" SortExpression="ClientId" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Mobile"  HeaderText="Mobile" SortExpression="Mobile" />
                            <asp:BoundField DataField="Email"  HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="BusinessDetails"  HeaderText="Business Details" SortExpression="BusinessDetails" />
                            <asp:BoundField DataField="Address"  HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="PostalPIN" HeaderText="PostalPIN" SortExpression="PostalPIN" />
                            <asp:BoundField DataField="ABN"  HeaderText="ABN" SortExpression="ABN" />
                            <asp:BoundField DataField="ReferCode"  HeaderText="ReferCode" SortExpression="ReferCode" />
                            <asp:CheckBoxField DataField="Block"  HeaderText="Block" SortExpression="Block" />
                            <asp:CheckBoxField DataField="Approval" HeaderText="Approval" SortExpression="Approval" />
                            <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                    <EditItemTemplate>
                                        <asp:Button ID="Button1" CssClass="btn btn-dark" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:Button ID="Button2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        
                                        
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" CssClass="btn btn-dark" runat="server" CausesValidation="False" CommandName="Edit" Text="Approval" />
                                        
                                        

                                    </ItemTemplate>
                                </asp:TemplateField>
                           
                        </Columns>

                       
                           
                    </asp:GridView>
                    <asp:Button ID="Button3" ValidationGroup="" CssClass="btn btn-dark" runat="server" Text="Export Excel" />
                           </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                        
                        
                        ProviderName="<%$ ConnectionStrings:HandicraftAustralia.ProviderName %>" 
                        SelectCommand="SELECT [ClientId], [Name], [Mobile], [Email], [Address], [PostalPIN], [ABN], [ReferCode], [Block], [Approval], [BusinessDetails] FROM [Client]" 
                        UpdateCommand="UPDATE [Client] SET [Name] = @Name, [Mobile] = @Mobile, [Email] = @Email, [Address] = @Address, [PostalPIN] = @PostalPIN, [ABN] = @ABN, [ReferCode] = @ReferCode, [Block] = @Block, [Approval] = @Approval, [BusinessDetails] = @BusinessDetails WHERE [ClientId] = @ClientId">
                        
                        
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Mobile" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="PostalPIN" Type="Int32" />
                            <asp:Parameter Name="ABN" Type="String" />
                            <asp:Parameter Name="ReferCode" Type="String" />
                            <asp:Parameter Name="Block" Type="Boolean" />
                            <asp:Parameter Name="Approval" Type="Boolean" />
                            <asp:Parameter Name="ClientId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
            
            </div>
                
             </div>
            </div>

        
</asp:Content>
