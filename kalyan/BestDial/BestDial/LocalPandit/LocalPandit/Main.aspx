<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="LocalPandit.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
@media only screen and (max-width: 479px)
{
       .s-space-custom3 
       {
         padding: 10px 0 30px;
       }
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!-- Map Area End Here -->
        <!-- Search Area Start Here -->
        <section class="search-layout2 bg-accent">
            <div class="search-layout2-holder">
                <div class="container-fluid">
                    <div id="cp-search-form" class="bg-body search-layout2-inner" style="    background: #1fa287;">
                        <div class="row">
                         <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                           <center style="margin-bottom:10px;"><a href="/search.aspx" style="margin-bottom: 6px;color: white;"><i class="fa fa-map-marker" style="font-size:15px;color:White;"></i> <asp:Label ID="lblCity" runat="server" ></asp:Label>&nbsp;</a></center>
                           <asp:LinkButton ID="LinkButton4" PostBackUrl="~/search.aspx" runat="server"><img src="img/mainhlogo.png" class="img-responsive" style="width:100%" /></asp:LinkButton>
                         </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="map-layout1 fixed-menu-mt full-width-container">
            <div class="container-fluid">
                <div class="google-map-area">
                    <div class="">
                      <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                          <li data-target="#myCarousel" data-slide-to="1"></li>
                          <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                          <div class="item active">
                             <img src="/img/banner-1.jpg" style="height:150px; width:100%" />
                          </div>

                          <div class="item">
                            <img src="/img/banner-2.png" style="height:150px; width:100%"  />
                          </div>
    
                          <div class="item">
                             <img src="/img/banner-3.jpg"style="height:150px; width:100%"  />
                          </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                          <span class="glyphicon glyphicon-chevron-left"></span>
                          <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                          <span class="glyphicon glyphicon-chevron-right"></span>
                          <span class="sr-only">Next</span>
                        </a>
                      </div>
                   </div>
                </div>
            </div>
        </section>

        <section class="service-layout1 bg-accent s-space-custom3" style="background: #eaeaea;">
            <div class="container">
                <div class="section-title-dark" >
                  <div class="row">
                    <div class="container-fluid">
                        <div class="isotope-classes-tab isotop-btn">
                           <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" style="text-decoration:none">Popular</asp:LinkButton>
                           <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" style="text-decoration:none">Humen Resources</asp:LinkButton>
                           <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" style="text-decoration:none">Industries</asp:LinkButton>
                        </div>
                    </div>
                </div>
                </div>
                <div  id="home" class="row tab-pane" runat="server" visible="true">
                 <asp:Repeater ID="RepeaterPopular" runat="server" DataSourceID="SqlDataSourcePopular">
                   <ItemTemplate>
                     <div class="col-lg-4 col-md-4 col-sm-4 col-4 item-mb" style="padding-right: 1px;padding-left: 1px; max-width:33%">
                       <div class="service-box1 bg-body text-center">
                            <a href='tags.aspx?catid=<%# Eval("Catid")%>&Type=Industries&url=<%# Eval("urlc")%>&catImgId=<%# Eval("CatImageID")%>'><img src='http://bestdial.co.in/upload_category/icon/<%# Eval("CatIConImageID")%>.jpg' alt="service" class="img-fluid"></a>
                            <h3 class="title-medium-dark mb-none" style="height: 30px; margin-top:10px;">
                              <a href='tags.aspx?catid=<%# Eval("Catid")%>&Type=Industries&url=<%# Eval("urlc")%>&catImgId=<%# Eval("CatImageID")%>'><%# Eval("CategoryName")%></a>
                            </h3>
                        </div>
                    </div>
                   </ItemTemplate> 
                 </asp:Repeater>
                 <div class="container">
                    <div class="text-center item-mt item-mb" style="margin-bottom:46px;">
                      <a href="/Explore-A-to-Z.aspx?Type=Popular" class="cp-default-btn direction-img"> Explore A to Z</a>
                    </div>
                 </div>
                 <asp:SqlDataSource ID="SqlDataSourcePopular" runat="server"  ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                        SelectCommand="SELECT [Catid], [CategoryName], [Priority], [Enable], [urlc], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] WHERE ([Enable] = @Enable) ORDER BY [Priority], [Catid] DESC, [CategoryName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="true" Name="Enable" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div  id="menu1" class="row tab-pane" runat="server" visible="false">
                  <asp:Repeater ID="RepeaterMenpower" runat="server" DataSourceID="SqlDataSourceMenPower">
                   <ItemTemplate>
                     <div class="col-lg-4 col-md-4 col-sm-4 col-4 item-mb" style="padding-right: 1px;padding-left: 1px;max-width:33%;">
                        <div class="service-box1 bg-body text-center">
                            <a href='tags.aspx?catid=<%# Eval("Catid")%>&Type=Industries&url=<%# Eval("urlc")%>&catImgId=<%# Eval("CatImageID")%>'><img src='http://bestdial.co.in/upload_category/icon/<%# Eval("CatIConImageID")%>.jpg' alt="service" class="img-fluid"></a>
                            <h3 class="title-medium-dark mb-none" style="height: 30px; margin-top:10px;">
                              <a href='tags.aspx?catid=<%# Eval("Catid")%>&Type=Industries&url=<%# Eval("urlc")%>&catImgId=<%# Eval("CatImageID")%>'><%# Eval("CategoryName")%></a>
                            </h3>
                        </div>
                    </div>
                   </ItemTemplate>
                 </asp:Repeater>
                  <div class="container">
                    <div class="text-center item-mt item-mb" style="margin-bottom:46px;">
                      <a href="/Explore-A-to-Z.aspx?Type=Jobs" class="cp-default-btn direction-img"> Explore A to Z</a>
                    </div>
                 </div>
                  <asp:SqlDataSource ID="SqlDataSourceMenPower" runat="server"   ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                        SelectCommand="SELECT [Catid], [CategoryName], [Priority], [EnableBottom], [urlc], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] WHERE ([EnableBottom] = @EnableBottom) ORDER BY [Priority], [Catid] DESC, [CategoryName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="true" Name="EnableBottom" Type="Boolean" />
                        </SelectParameters>
                  </asp:SqlDataSource>
                </div>
                <div  id="menu2" class="row tab-pane" runat="server" visible="false">
                  <asp:Repeater ID="RepeaterIndustries" runat="server" DataSourceID="SqlDataSourceIndustries">
                   <ItemTemplate>
                     <div class="col-lg-4 col-md-4 col-sm-4 col-4 item-mb" style="padding-right: 1px;padding-left: 1px;max-width:33%;">
                        <div class="service-box1 bg-body text-center">
                           <a href='tags.aspx?catid=<%# Eval("Catid")%>&Type=Industries&url=<%# Eval("urlc")%>&catImgId=<%# Eval("CatImageID")%>'><img src='http://bestdial.co.in/upload_category/icon/<%# Eval("CatIConImageID")%>.jpg' alt="service" class="img-fluid"></a>
                            <h3 class="title-medium-dark mb-none" style="height: 30px; margin-top:10px;">
                              <a href='tags.aspx?catid=<%# Eval("Catid")%>&Type=Industries&url=<%# Eval("urlc")%>&catImgId=<%# Eval("CatImageID")%>'><%# Eval("CategoryName")%></a>
                            </h3>
                        </div>
                    </div>
                   </ItemTemplate>
                 </asp:Repeater>
                 <div class="container">
                    <div class="text-center item-mt item-mb" style="margin-bottom:46px;">
                      <a href="/Explore-A-to-Z.aspx?Type=Industries" class="cp-default-btn direction-img"> Explore A to Z</a>
                    </div>
                 </div>
                  <asp:SqlDataSource ID="SqlDataSourceIndustries" runat="server"  ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
                        SelectCommand="SELECT [Catid], [CategoryName], [Priority], [Industries], [urlc], [Industries], [CatIConImageID], [CatImageID] FROM [NewListing_Website_category_tbl] WHERE ([Industries] = @Industries) ORDER BY [Priority], [Catid] DESC, [CategoryName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="true" Name="Industries" Type="Boolean" />
                        </SelectParameters>
                  </asp:SqlDataSource>
                </div>
            </div>
            
        </section>
</asp:Content>
