<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Company.Master" AutoEventWireup="true" CodeBehind="reviews-list.aspx.cs" Inherits="LocalPandit.Account.reviews_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="tz-2 tz-2-admin">
    <div class="tz-2-com tz-2-main">
        <h4>User Review List</h4>
       

        <!-- Dropdown Structure -->
        <div class="split-row">
            <div class="">
                <div class="box-inn-sp ad-inn-page" id="DivYesReview" runat="server" visible="false">
                    <div class="tab-inn ad-tab-inn">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>User Name</th>
                                        <th>User Mobile</th>
                                        <th>User Email</th>
                                        <th>Date Time</th>
                                        <th>Review Message</th>
                                        
                                        
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                      <asp:Repeater ID="RepeaterCompEnquiry" runat="server" 
                                        DataSourceID="SqlDataSourceCompEnquList">
                                      <ItemTemplate>
                                       <tr>
                                        
                                        <td><a href="#"><span class="list-enq-name"><%# Eval("Name")%></span></a> </td>
                                        <td> <%# Eval("Mobile")%> </td>
                                        <td> <%# Eval("Email")%> </td>
                                        <td><%# Eval("Date")%> </td>
                                        <td><%# Eval("Text")%> </td>
                                       
                                        
                                      </tr>
                                      </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource ID="SqlDataSourceCompEnquList" runat="server" 
                                             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>" 
                                            SelectCommand="SELECT [Name], [Mobile], [Text], [Email], [Date] FROM [NewListing_Website_Review_tbl] WHERE ([CompanyId] = @CompanyId) ORDER BY Revid DESC">
                                            <SelectParameters>
                                                <asp:SessionParameter DefaultValue="0" Name="CompanyId" SessionField="CompID" 
                                                    Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                        
                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="split-row" id="DivNoReview" runat="server" visible="false">
                   <div class="">
                      <div class="box-inn-sp ad-inn-page">
                        <p style="padding:1em;"><i class="fa fa-commenting" aria-hidden="true"></i>&nbsp;No review found.</p>
                    </div>
               </div>
            </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>
