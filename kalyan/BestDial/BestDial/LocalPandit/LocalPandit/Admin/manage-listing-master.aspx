<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="manage-listing-master.aspx.cs" Inherits="LocalPandit.Admin.manage_listing_master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


<style>
.myCheck
{
    width:100%;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="main-content">
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
   

    
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Manage Company</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" >
                       
                       



                        <asp:DetailsView ID="DetailsView1" runat="server" class="table fill-head" 
                            AutoGenerateRows="False" DataKeyNames="CompanyId" 
                            DataSourceID="SqlDataSource1" DefaultMode="Edit">
                            <Fields>
                                <asp:BoundField DataField="CompanyId" HeaderText="CompanyId" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="CompanyId" />
                                <asp:TemplateField HeaderText="CompanyName" SortExpression="Company Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CompanyName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ControlStyle CssClass="form-control" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="OwnerName" HeaderText="Owner Name" 
                                    SortExpression="OwnerName">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="YearEstablish" HeaderText="Year Establish" 
                                    SortExpression="YearEstablish">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="LandLine" HeaderText="LandLine" 
                                    SortExpression="LandLine">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Website" HeaderText="Website" 
                                    SortExpression="Website">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Location" SortExpression="Location">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ControlStyle CssClass="form-control" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="Address" HeaderText="Address" 
                                    SortExpression="Address">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="City" SortExpression="City">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ControlStyle CssClass="form-control" />
                                </asp:TemplateField>

                                <asp:BoundField DataField="Latitude" HeaderText="Latitude(Map)" SortExpression="Latitude">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Longitude" HeaderText="Longitude(Map)" SortExpression="Longitude">
                                <ControlStyle CssClass="form-control" />
                                </asp:BoundField>

                                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                                <ControlStyle CssClass="btn btn-primary" />
                                </asp:CommandField>
                            </Fields>
                        </asp:DetailsView>
                        
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                            DeleteCommand="DELETE FROM [NewListing_Website_listing_tbl] WHERE [CompanyId] = @CompanyId" 
                            InsertCommand="INSERT INTO [NewListing_Website_listing_tbl] ([CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url]) VALUES (@CatId, @CompanyName, @OwnerName, @YearEstablish, @Mobile, @LandLine, @Email, @Website, @Location, @Address, @City, @Map, @RegsitrationDate, @KeyWord, @Enable, @TotalReview, @url)" 
                            SelectCommand="SELECT [CompanyId], [CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url], [Latitude], [Longitude] FROM [NewListing_Website_listing_tbl] WHERE ([CompanyId] = @CompanyId)" 
                            
                            UpdateCommand="UPDATE [NewListing_Website_listing_tbl] SET  [CompanyName] = @CompanyName, [OwnerName] = @OwnerName, [YearEstablish] = @YearEstablish, [Mobile] = @Mobile, [LandLine] = @LandLine, [Email] = @Email, [Website] = @Website, [Location] = @Location, [Address] = @Address, [City] = @City, [Map] = @Map, [Latitude] =@Latitude, [Longitude] = @Longitude  WHERE [CompanyId] = @CompanyId">
                            <DeleteParameters>
                                <asp:Parameter Name="CompanyId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="CatId" Type="Int32" />
                                <asp:Parameter Name="CompanyName" Type="String" />
                                <asp:Parameter Name="OwnerName" Type="String" />
                                <asp:Parameter Name="YearEstablish" Type="String" />
                                <asp:Parameter Name="Mobile" Type="String" />
                                <asp:Parameter Name="LandLine" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Website" Type="String" />
                                <asp:Parameter Name="Location" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Map" Type="String" />
                                <asp:Parameter Name="RegsitrationDate" Type="String" />
                                <asp:Parameter Name="KeyWord" Type="String" />
                                <asp:Parameter Name="Enable" Type="Boolean" />
                                <asp:Parameter Name="TotalReview" Type="Int32" />
                                <asp:Parameter Name="url" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter DefaultValue="0" Name="CompanyId" 
                                    QueryStringField="compid" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="CatId" Type="Int32" />
                                <asp:Parameter Name="CompanyName" Type="String" />
                                <asp:Parameter Name="OwnerName" Type="String" />
                                <asp:Parameter Name="YearEstablish" Type="String" />
                                <asp:Parameter Name="Mobile" Type="String" />
                                <asp:Parameter Name="LandLine" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Website" Type="String" />
                                <asp:Parameter Name="Location" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Map" Type="String" />
                                <asp:Parameter Name="RegsitrationDate" Type="String" />
                                <asp:Parameter Name="KeyWord" Type="String" />
                                <asp:Parameter Name="Enable" Type="Boolean" />
                                <asp:Parameter Name="TotalReview" Type="Int32" />
                                <asp:Parameter Name="url" Type="String" />
                                <asp:Parameter Name="CompanyId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                       


                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="row">
        
         <div class="col-md-12">
         <div class="col-md-3">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Profile Image</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" >
                      <center><img style="height:200px; width:auto" src='/uploads/comp-img/<%=Server.UrlDecode(Request.QueryString["compid"]) %>.jpg' class="img img-responsive" /></center>  
                    </div>
                     <div class="form-group" style="margin:15px;">
                         <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                         <asp:Button ID="btnupImage" runat="server" CssClass="btn btn-primary" style="width:100%" Text="Update Image" onclick="btnupImage_Click" />
                     </div>
                </div>
                
            </div>
        </div>
        <div class="col-md-3">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i> Map</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" title="map" id="dvMap" style="height:292px; width:100%;" > 
                      
                    </div>
                </div>
                
            </div>
        </div>





        <div class="col-md-3">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Update Priority</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                
                   <div class="form-group" style="margin:15px;">
                       <asp:DetailsView ID="DetailsView3" runat="server" class="table fill-head"
                           AutoGenerateRows="False" DataKeyNames="CompanyId" DataSourceID="SqlDataSource3" 
                           DefaultMode="Edit">
                           <Fields>
                               <asp:TemplateField SortExpression="Priority">
                                   
                                   <EditItemTemplate>
                                       <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" maxlength="100000" Text='<%# Bind("Priority") %>'></asp:TextBox>
                                   </EditItemTemplate>
                                   
                                   <ControlStyle CssClass="form-control" />
                               </asp:TemplateField>
                               <asp:CommandField ButtonType="Button" ShowEditButton="True">
                               <ControlStyle CssClass="btn btn-primary" />
                               </asp:CommandField>
                           </Fields>
                       </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
            DeleteCommand="DELETE FROM [NewListing_Website_listing_tbl] WHERE [CompanyId] = @CompanyId" 
            InsertCommand="INSERT INTO [NewListing_Website_listing_tbl] ([CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url], [Password]) VALUES (@CatId, @CompanyName, @OwnerName, @YearEstablish, @Mobile, @LandLine, @Email, @Website, @Location, @Address, @City, @Map, @RegsitrationDate, @KeyWord, @Enable, @TotalReview, @url, @Password)" 
            SelectCommand="SELECT [CompanyId], [CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [url], [Password], [Priority] FROM [NewListing_Website_listing_tbl] WHERE ([CompanyId] = @CompanyId)" 
            UpdateCommand="UPDATE [NewListing_Website_listing_tbl] SET [Priority] = @Priority WHERE [CompanyId] = @CompanyId">
            <DeleteParameters>
                <asp:Parameter Name="CompanyId" Type="Int32" />
            </DeleteParameters>
            
            <SelectParameters>
            <asp:QueryStringParameter  DefaultValue="0" Name="CompanyId" QueryStringField="Compid" 
                    Type="Int32"/>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CatId" Type="Int32" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="OwnerName" Type="String" />
                <asp:Parameter Name="YearEstablish" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="LandLine" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Website" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Map" Type="String" />
                <asp:Parameter Name="RegsitrationDate" Type="String" />
                <asp:Parameter Name="KeyWord" Type="String" />
                <asp:Parameter Name="Enable" Type="Boolean" />
                <asp:Parameter Name="TotalReview" Type="Int32" />
                <asp:Parameter Name="url" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="CompanyId" Type="Int32" />
                <asp:Parameter Name="Priority" Type="Int32" />

                
            </UpdateParameters>
        </asp:SqlDataSource>
                    </div>
                </div>
                
            </div>
        </div>

        <div class="col-md-3">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Listing Type</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                   <div class="form-group" style="margin:15px;">
                         <asp:DropDownList ID="DropDownListType" class="form-control" runat="server">
                            <asp:ListItem Value="Free">Free</asp:ListItem>
                            <asp:ListItem Value="Paid">Paid</asp:ListItem>
                         </asp:DropDownList>
                     </div>
                     <div class="form-group" style="margin:15px;">
                        
                         <asp:Button ID="btnUpdtype" runat="server" CssClass="btn btn-primary" style="width:100%" Text="Update Type" onclick="btnUpdtype_Click" />
                     </div>
                </div>
                
            </div>
        </div>


        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Update Company Keywords/Tags</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                   <div  class="form-horizontal" >
                       
                        <table class="table fill-head">
                              <tr>
                                <td style="width: 37%;">Select Category</td>
                                <td style="direction:none;">
                                    <asp:DropDownList ID="DropDownList2" DataSourceID="SqlDataSourceCate" CssClass="form-control" DataTextField="CategoryName" 
                                            DataValueField="Catid" AutoPostBack="true" runat="server">
                                            <asp:ListItem Value="0">~Select~</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" InitialValue="0" ControlToValidate="DropDownList2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                </td>
                              </tr>
                          </table>

                           <table class="table fill-head">
                              <tr>
                                <td style="width: 37%;">Select Tags</td>
                                <td>
                                
                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Class="form-control"
                                           DataSourceID="SqlDataSourceTagsName" DataTextField="Tags" 
                                           RepeatDirection="Horizontal" 
                                           RepeatColumns="4" CssClass="myCheck" DataValueField="TagId">
                                           </asp:CheckBoxList>
                                 
                                </td>
                              </tr>
                          </table>

                           <table class="table fill-head">
                              <tr>
                                <td style="width: 37%;">Select Services Keyword</td>
                                <td>
                                
                                <asp:CheckBoxList ID="CheckBoxList2" runat="server" Class="form-control"
                                           DataSourceID="SqlDataSourceCatKeywordname" DataTextField="Keywords" 
                                           RepeatDirection="Horizontal" 
                                           RepeatColumns="3" CssClass="myCheck" DataValueField="KeywordId">
                                           </asp:CheckBoxList>
                                 
                                </td>
                              </tr>
                          </table>
                      
                     </div>
                     <div class="form-group" style="margin:15px;">
                        
                         <asp:Button ID="BtnUpdateKeyword" runat="server" CssClass="btn btn-primary" style="width:100%" Text="Update" onclick="btnUpdateKayTags_Click" />
                     </div>
                </div>
                
            </div>

        </div>

         </div>
    </div>
   <asp:SqlDataSource ID="SqlDataSourceCate" runat="server" 
             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
            SelectCommand="SELECT [Catid], [CategoryName] FROM [NewListing_Website_category_tbl]">
        </asp:SqlDataSource>
                            
            <asp:SqlDataSource ID="SqlDataSourceTagsName" runat="server" 
             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
            SelectCommand="SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl] WHERE ([Catid] = @Catid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSourceCatKeywordname" runat="server" 
             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
            SelectCommand="SELECT [KeywordId], [CatId], [Keywords] FROM [NewListing_Website_Cat_Keyword_tbl] WHERE ([Catid] = @Catid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <footer>
        <p>2017 © Local Pandit</p>
    </footer>

    <a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i class="fa fa-chevron-up"></i></a>
</div>


</asp:Content>
