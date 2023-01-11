<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="ListDetails.aspx.cs" Inherits="LocalPandit.ListDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    a {
    color: #1fa287 !important;
    text-decoration: none;
      }
    .GoBtn
    {
    background: transparent;
    border: none;
    background-color: #1fa287;
    color: white;
    border-radius: 4px;
    }
    .SetGoBtn
    {
            position: fixed;
    left: 13px;
    z-index: 9;
    width: 100%;
    top: 10px;
}
    .search-layout2 .row > div {
    margin-bottom: 0px;
}

.notvisible
{
    display:none;
}
.btn-danger
{
    background-color:maroon;
}
.btn-undanger
{
    background-color:green;
}


</style>

<style>
@media only screen and (max-width: 479px)
{
       .s-space-custom3 
       {
         padding: 10px 0 30px;
       }
}
</style>
<style>
    
     .dpmapiconwp {
    display: table-cell;
    vertical-align: middle;
    width: 30px;
}

    .boxrating {
    min-width: 22px;
    font-size: 13px;
    color: #fff;
    font-weight: 600;
    background: #259004;
    border-radius: 2px;
    padding: 1px 3px;
    display: inline-block;
    box-sizing: border-box;
    text-align: center;
}

    .vendbtn {
    width: 50%;
    border: 1px solid #2b3a97;
    cursor: pointer;
    background: transparent;
    padding-left: 10px;
    padding-right: 10px;
    background: #2b3a97;
    padding-bottom: 1px;
}
.overrating {
    color: #a5a5a5;
    margin-left: 3px;
    font-size: 12px;
    line-height: 8.35px;
    box-sizing: border-box;
    display: inline-block;
}
.starsectionwrapper {
    margin: auto;
   width: 70px;
    float: none;
    height: 12px;
    padding: 0px 6px;
    vertical-align: middle;
}
.vendrating {
    width: auto;
    display: block;
    box-sizing: border-box;
    padding: 2px 0 3px;
    margin-bottom: 3px;
}

.vendbtnimg {
    width: 100%;
    float: left;
    text-align: center;
}

.btnimg {
    width: 23px;
    height: 23px;
    display: inline-block;
}

    .venddeatils {
    vertical-align: top;
    padding: 4px 0 0 0px;
}

.vendlocation, .vendpricing {
    font-size: 14px;
    position: relative;
    box-sizing: border-box;
}
.vendtitle 
{
    font-weight: 400;
    color: #222;
    font-size: 20px;
    padding-right: 0;
    width: auto;
    margin: 0;
    display: block;
    box-sizing: border-box;
    text-align:center;
    font-family:inherit;
}

.imagemain {
    width: 100%px;
        display: inline-block;
    background-size: cover;
    position: relative;
    margin: 0 2px;
    background-color: #ebebeb;
    vertical-align: middle;
    margin-top: 5px;
    margin-bottom: 5px;
}

.callBtn {
    font-size:13px;
    
}

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- Header Area Start Here -->
        <header>
            <!-- Mobile Menu Area Start -->
            <div class="mobile-menu-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mobile-menu" style="display:none;">
                                <nav id="dropdown">
                                    <%--<ul>
                                        <li><a href="#">Who We Are</a></li>
                                        <li><a href="#">How It Works?</a></li>
                                        <li><a href="#">Features</a></li>
                                    </ul>--%>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Mobile Menu Area End -->
        </header>
        <!-- Header Area End Here -->

 <!-- Map Area End Here -->
        <!-- Search Area Start Here -->
        <section class="search-layout2 bg-accent" style="margin-top: 39px;">
          
              <%--<div class="container-fluid" id="NoImageAvailable" runat="server" visible="false">
                 <center><img src="http://bestdial.co.in/uploads/comp-img/no-image.jpg"  style="width:100%; height:140px;" /></center> 
               </div>--%>
              <div class="container-fluid" id="ImageAvailable" runat="server">
                <center> <img src='http://bestdial.co.in/uploads/comp-img/<%= Request.QueryString["CompImgID"].ToString()%>.jpg'  style="width:100%; height:140px;" /></center>
              </div>
             
         </section>
        <section class="service-layout1 s-space-custom3">

        <asp:Repeater ID="RepeaterMainContactDetails" runat="server" DataSourceID="SqlDataSourceTopListTable" OnItemDataBound="RepeaterMainContactDetails_ItemDataBound">
         <ItemTemplate>
            <div class="container">
                 <div class="section-title-dark" style="text-align: left;">
                    <span class="vendtitle"><%# Eval("CompanyName")%> <span class="vendlocation"> <span class="vendrating"><span class="boxrating">5.0</span><span ><img src="img/rating.png" class="starsectionwrapper" /></span> <span class="overrating">10+ Ratings</span> </span><span><%# Eval("Location")%>, <%# Eval("City")%></span> </span></span>
                </div>
                <div class="row">
                    <div class=" service-box bg-body col-lg-12 col-md-12 col-sm-12 col-12 item-mb" style="padding-right: 1px;padding-left: 1px;">
                        <div class="container">
                         <div class=" col-md-4 col-sm-4 col-xs-4" style="padding-right: 5px;padding-left: 5px; margin-top:12px;">
                         <span><a href='tel:<%# Eval("Mobile") %>'><span><i class="fa fa-phone"></i></span><span> CALL</span></a></span> 
                        </div>
                        <div class=" col-md-4 col-sm-4 col-xs-4" style="padding-right: 5px;padding-left: 5px; margin-top:12px;">
                         <span><a href='/directions.aspx?companyName=<%# Eval("CompanyName")%>&CompId=<%# Eval("CompanyId")%>&Location=<%# Eval("Location")%>&City=<%# Eval("City")%>'><span><i class="fa fa-map-marker"></i></span><span> Directions</span></a></span> 
                        </div>
                        <div class=" col-md-4 col-sm-4 col-xs-4" style="padding-right: 5px;padding-left: 5px; margin-top:12px;">
                         <span><a href='/message.aspx?companyName=<%# Eval("CompanyName")%>&CompId=<%# Eval("CompanyId")%>&Location=<%# Eval("Location")%>&City=<%# Eval("City")%>'><span><i class="fa fa-envelope"></i></span><span> Message</span></a></span> 
                        </div>
                        </div>

                         <div class="container" style="padding: 1em 8em 1em 8em;">
                           <div class="row">
                             <a href='/best-deal.aspx' style="text-align:center; color:white !important;" class="cp-default-btn direction-img btn-block">BEST DEAL</a>
                           </div>
                         </div>

                         <div class="container" style="padding-left:2em; padding-right:2em;">
                           <div class="row">
                             <table class="table">
                               <tbody>
                               <tr>
                                   <td class="dpmapiconwp"><i class="fa fa-star-half-full"></i></td>
                                   <td>Click Here To <a href='Write-a-Review.aspx?companyName=<%# Eval("CompanyName")%>&CompId=<%# Eval("CompanyId")%>&Location=<%# Eval("Location")%>&City=<%# Eval("City")%>''>Write Review</a></td>
                                 </tr>

                                 <tr>
                                   <td class="dpmapiconwp"><i class="fa fa-phone"></i></td>
                                   <td><%# Eval("Mobile")%></td>
                                 </tr>

                                 <tr>
                                   <td class="dpmapiconwp"><i class="fa fa-map-o"></i></td>
                                   <td><%# Eval("Address")%></td>
                                 </tr>

                                 <tr class='<%# ( ( Eval("Website").ToString() == "" ) ? "notvisible" : "") %>'>
                                   <td class="dpmapiconwp"><i class="fa fa-firefox"></i></td>
                                   <td><a href='http://<%# Eval("Website")%>' target="_blank"><%# Eval("Website")%></a></td>
                                 </tr>

                                 <tr>
                                   <td class="dpmapiconwp"><i class="fa fa-empire"></i></td>
                                   <td> Year - <%# Eval("YearEstablish")%></td>
                                 </tr>

                               </tbody>
                             </table>
                           </div>
                         </div>
                         
                         <div class="container" style="padding-left:2em; padding-right:2em;">
                           <div class="row">
                             <table class="table">
                               <tbody>
                                 <tr >
                                   <td colspan="2" style="font-size: 17px;"><strong>Reviews & Ratings</strong></td>
                                 </tr>
                                 <asp:Repeater ID="RepeaterReview" runat="server"  DataSourceID="SqlDataSourceReviewList">
                                  <ItemTemplate>
                                   <tr>
                                    <td><img src="img/usericon.png" class=" img-responsive" style="max-width: 50px;" /></td>
                                    <td>
                                    <span class="vendall wrapper-list"><span class="wrapper-list"><span class="vendlocation"><%# Eval("Name")%></span></span></span>
                                    <span class="vendrating"><span ><img src="img/rating.png" style="width:75px !important;" class="starsectionwrapper" /></span> <span class="overrating">5.0</span> <span class="overrating"><%# DateTime.Parse( Eval("Date").ToString() ).ToString("MMM dd, yyy")%></span></span>
                                    <span><%# Eval("Text")%></span>
                                   </td>
                                 </tr>
                                  </ItemTemplate>
                                 </asp:Repeater>
                                 <tr >
                                  <td colspan="2">
                                  <div id="NotReview" runat="server" visible="false">
                                    No review to display.
                                    </div>
                                   </td>
                                 </tr>
                                  <tr>
                                   <td class="dpmapiconwp"><i class="fa fa-star-half-full"></i></td>
                                   <td>Click Here To <a href='Write-a-Review.aspx?companyName=<%# Eval("CompanyName")%>&CompId=<%# Eval("CompanyId")%>&Location=<%# Eval("Location")%>&City=<%# Eval("City")%>''>Write Review</a></td>
                                 </tr>
                                <asp:SqlDataSource ID="SqlDataSourceReviewList" runat="server" 
                                         ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                        SelectCommand="SELECT [Revid], [CompanyId], [Name], [Mobile], [Email], [Date], [star], [Text] FROM [NewListing_Website_Review_tbl] WHERE ([CompanyId] = @CompanyId)">
                                        <SelectParameters>
                                          <asp:QueryStringParameter QueryStringField="compid" DefaultValue="0" Name="CompanyId" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                 
                             </table>

                             <table class="table">
                             <asp:Repeater ID="RepeaterServiceOffered" runat="server"   DataSourceID="SqlDataSourceServiceOffered">
                                 <HeaderTemplate>
                                  <tr>
                                  <th class="text">Service/Product offeres</th>
                                </tr>
                                  <tbody></HeaderTemplate>
                                  <ItemTemplate>
                                
                                
                                <tr>
                                  <td><%# Eval("Tags")%></td>
                                </tr>
                            

                              </ItemTemplate>
                                <FooterTemplate>  </tbody></FooterTemplate>
                                </asp:Repeater>
                                    <asp:SqlDataSource ID="SqlDataSourceServiceOffered" runat="server" 
                                         ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                        SelectCommand="SELECT [CompTagId], [CompanyId], [Tags] FROM [NewListing_Website_listing_Tag_tbl] WHERE ([CompanyId] = @CompanyId)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter DefaultValue="0" Name="CompanyId" 
                                                QueryStringField="compid" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                             </table>
                           </div>
                         </div>
                    </div>
                    
                </div>
            </div>
         </ItemTemplate>
         </asp:Repeater>
         <asp:SqlDataSource ID="SqlDataSourceTopListTable" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                SelectCommand="SELECT [CompanyId], [CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url], [Password] FROM [NewListing_Website_listing_tbl] WHERE ([CompanyId] = @CompanyId)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="0" Name="CompanyId" 
                        QueryStringField="compid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </section>

        <script>
            function goBack() {
                window.history.back();
            }
</script>
</asp:Content>
