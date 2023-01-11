<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="LocalPandit.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- BEGIN Content -->
        <div id="main-content">
            <!-- BEGIN Page Title -->
            <div class="page-title">
                <div>
                   
                </div>
            </div>
            <!-- END Page Title -->

            <!-- BEGIN Breadcrumb -->
          
            <!-- END Breadcrumb -->

            <!-- BEGIN Tiles -->
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        

                      
                            

                          
                                <div class="col-md-3">
                                    <div class="tile tile-green">
                                        <div class="img">
                                            <i class="fa fa-copy" style="background: #1126b7;"></i>
                                        </div>


                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceTotalBussiness">
                                          <ItemTemplate>
                                             <div class="content">
                                            <p class="big">+0<%# Eval("EXP1")%></p>
                                            <p class="title">Total Listing</p>
                                        </div>
                                          </ItemTemplate>
                                        </asp:Repeater>
                                       

                                    </div>
                              </div>
                      
                       
                        <div class="col-md-3">
                            <div class="tile tile-orange">
                                <div class="img">
                                    <i class="fa fa-comments"></i>
                                </div>
                                 <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSourceVisitorCounter">
                                          <ItemTemplate>
                                <div class="content">
                                    <p class="big"><%# Eval("Count") %></p>
                                    <p class="title">Total Visitors</p>
                                </div>
                                </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="tile tile-dark-blue">
                                <div class="img">
                                    <i class="fa fa-download" style="background: #bb0006;"></i>
                                </div>
                                 <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSourceTotalEnquiry">
                                          <ItemTemplate>
                                <div class="content">
                                    <p class="big">0<%# Eval("EXP2")%></p>
                                    <p class="title">Total Enquiry</p>
                                </div>
                                </ItemTemplate></asp:Repeater>
                            </div>
                        </div>
                   
                   <div class="col-md-3">
                            <div class="tile tile-dark-blue">
                                <div class="img">
                                    <i class="fa fa-users" style="background: #273a7e;"></i>
                                </div>
                                 <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSourceTotalPostR">
                                          <ItemTemplate>
                                <div class="content">
                                    <p class="big">0<%# Eval("EXP3")%></p>
                                    <p class="title">Total User Requirement</p>
                                </div>
                                </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="col-md-12" style="border:1px solid #78080b57;">
                 <div class="tz-2 tz-2-admin">
                  <div class="tz-2-com tz-2-main">
                 <div class="split-row">
            <div class="col-md-12">
            <h3>User Requirement</h3><hr />
                <div class="box-inn-sp ad-inn-page">
                    <div class="tab-inn ad-tab-inn">
                        <div class="table-responsive">
                            <table class="table fill-head">
                                <thead>
                                    <tr>
                                        <th>User Name</th>
                                        <th>Looking For</th>
                                        <th>User City</th>
                                        <th>User Mobile</th>
                                        <th>User Email</th>
                                        <th>Date Time</th>
                                    </tr>
                                </thead>
                                <tbody>
                                      <asp:Repeater ID="RepeaterCompEnquiry" runat="server" 
                                        DataSourceID="SqlDataSourceCompEnquList">
                                      <ItemTemplate>
                                       <tr>
                                        
                                        <td><a href="#"><span class="list-enq-name"><%# Eval("Name")%></span></a> </td>
                                         <td><%# Eval("LookingFor")%> </td>
                                         <td><%# Eval("City")%> </td>
                                        <td> <%# Eval("Mobile")%> </td>
                                        <td> <%# Eval("Email")%> </td>
                                        <td><%# Eval("Date")%> </td>
                                      </tr>
                                      </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource ID="SqlDataSourceCompEnquList" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>"  
                                            SelectCommand="SELECT Top(10) [Quoteid], [Date], [LookingFor],[City], [Name], [Mobile], [Message], [Email], [Date] FROM [NewListing_Website_Get_quote_tbl]  ORDER BY Quoteid DESC">
                                        </asp:SqlDataSource>
                        
                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
                </div>
                </div>
                 </div>
                
            </div>

           
            <footer>
                <p>2017 © Localpandit.</p>
            </footer>
            <asp:SqlDataSource ID="SqlDataSourceTotalBussiness" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
            SelectCommand="SELECT COUNT([CompanyId]) AS EXP1 FROM [NewListing_Website_listing_tbl]">
        </asp:SqlDataSource>

         <asp:SqlDataSource ID="SqlDataSourceTotalEnquiry" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
            SelectCommand="SELECT COUNT([EnquiryId])  AS EXP2 FROM [NewListing_Website_Inquiry_tbl]">
        </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourceTotalPostR" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
            SelectCommand="SELECT COUNT([Quoteid])  AS EXP3 FROM [NewListing_Website_Get_quote_tbl]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceVisitorCounter" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
            SelectCommand="SELECT [Count] FROM [NewListing_Website_visiting_counter]">
        </asp:SqlDataSource>
            <a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i class="fa fa-chevron-up"></i></a>
        </div>
        <!-- END Content -->
</asp:Content>
