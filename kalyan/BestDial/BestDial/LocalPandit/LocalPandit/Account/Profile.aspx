<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Company.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="LocalPandit.Account.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyByx6iS1veWFvYdrLaqjaRMVMh2ROOfpWc&libraries=places&language=en-AU"></script>
<script type="text/javascript">
var markers = [
<asp:Repeater ID="rptMarkers" runat="server">
<ItemTemplate>
            {
            "title": '<%# Eval("City") %>',
            "lat": '<%# Eval("Latitude") %>',
            "lng": '<%# Eval("Longitude") %>',
            "description": '<%# Eval("CompanyName") %>'
        }
</ItemTemplate>
<SeparatorTemplate>
    ,
</SeparatorTemplate>
</asp:Repeater>
];
</script>
<script type="text/javascript">
    window.onload = function () {
        var mapOptions = {
            center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
            zoom: 8,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var infoWindow = new google.maps.InfoWindow();
        var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
        for (i = 0; i < markers.length; i++) {
            var data = markers[i]
            var myLatlng = new google.maps.LatLng(data.lat, data.lng);
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: data.title
            });
            (function (marker, data) {
                google.maps.event.addListener(marker, "click", function (e) {
                    infoWindow.setContent(data.description);
                    infoWindow.open(map, marker);
                });
            })(marker, data);
        }
    }
</script>


<div class="tz-2 tz-2-admin">
					<div class="tz-2-com tz-2-main">
						<h4>Personal Information</h4>
						<div class="tz-2-main-com bot-sp-20">
                           <asp:Repeater ID="RepeaterPerInfo" runat="server" 
                                DataSourceID="SqlDataSourcePerInfo">
                              <ItemTemplate>
                                 <div class="row">
                              <div class="container-fluid">
                               <table class="table">
    
                                    <tbody>
           
                                      <tr class="success">
                                        <td>Company Name</td>
                                        <td><%# Eval("CompanyName")%></td>
                                      </tr>
                                      <tr class="danger">
                                        <td>Owner Name</td>
                                        <td><%# Eval("OwnerName")%></td>
                                      </tr>
                                      <tr class="info">
                                        <td>Mobile</td>
                                        <td><%# Eval("Mobile")%></td>
                                      </tr>
                                      <tr class="warning">
                                        <td>LandLine</td>
                                        <td><%# Eval("LandLine")%></td>
                                      </tr>
                                      <tr class="active">
                                        <td>Email</td>
                                        <td><%# Eval("Email")%></td>
                                      </tr>
                                        <td>Website</td>
                                        <td><%# Eval("Website")%></td>
                                      </tr>
                                      <tr class="danger">
                                        <td>Location</td>
                                        <td><%# Eval("Location")%></td>
                                      </tr>
                                      <tr class="info">
                                        <td>City</td>
                                        <td><%# Eval("City")%></td>
                                      </tr>
                                      <tr class="warning">
                                        <td>Address</td>
                                        <td><%# Eval("Address")%></td>
                                      </tr>
                                      <tr class="active">
                                        <td>Year Establish</td>
                                        <td><%# Eval("YearEstablish")%></td>
                                      </tr>
                                    </tbody>
                             </table>
                              </div>
                              <div class="container-fluid">
                              <div class="">
                               <h4 style="background: black;padding: 0.4em;color: white;">Cover Image</h4>
                                  <img src='/uploads/comp-img/<%# Eval("CompanyId") %>.jpg' class="img-responsive" />
                              </div>
                              

                              </div>
                              

                              <div class="container-fluid">
                              <div class="">
                               <h4 style="background: black;padding: 0.4em;color: white;">Map Location</h4>
                                  <div class="img-thumbnail" id="dvMap" style="width:100%; height:200px;">
                                 
                                 </div>
                              </div>
                              </div>

                            </div>
                              </ItemTemplate>
                            </asp:Repeater>
							
						    <asp:SqlDataSource ID="SqlDataSourcePerInfo" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                                SelectCommand="SELECT [CompanyId], [CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Website], [Email], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url], [Password] FROM [NewListing_Website_listing_tbl] WHERE ([CompanyId] = @CompanyId)">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="0" Name="CompanyId" SessionField="CompID" 
                                        Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
							
						</div>
						
					</div>
				</div>
</asp:Content>
