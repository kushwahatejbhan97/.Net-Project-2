<%@ Page Title="" Language="C#" MasterPageFile="~/ListingApp.Master" AutoEventWireup="true" CodeBehind="List-tag-wise.aspx.cs" Inherits="LocalPandit.List_tag_wise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    
    .CompTitletext {
     display: block;
     width: 100px;
     overflow: hidden;
     white-space: nowrap;
     text-overflow: ellipsis;
    }

@media only screen and (max-width: 479px)
{
       .s-space-custom3 
       {
         padding: 10px 0 30px;
       }
}
</style>
<style>
   .service-box2 img {
    margin: 0 auto 0px;
    max-width: 100%;
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
    border: 1px solid #1fa287;
    cursor: pointer;
    background: transparent;
    padding-left: 3px;
    padding-right: 3px;
    background: #1fa287;
    padding-bottom: 0px;
    font-size: 12px;
    border-radius: 1px;
    
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
    padding: 2px 0 0;
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
    font-size: 12px;
    position: relative;
    box-sizing: border-box;
}
.vendtitle 
{
    font-weight: 400;
    color: #222;
    font-size: 15px;
    padding-right: 0;
    width: auto;
    margin: 0;
    display: block;
    box-sizing: border-box;
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
        <section class="search-layout2 bg-accent">
           <div class="search-layout2-holder" style=" padding-top: 50px; ">
                <div class="container-fluid">
                    <div id="cp-search-form" class="bg-body search-layout2-inner" style="    background: #1fa287;">
                        <div class="row">
                         <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                          <center style="margin-bottom:10px;"><a href="/search.aspx" style="margin-bottom: 6px;color: white;"><i class="fa fa-map-marker" style="font-size:15px;color:White;"></i> <asp:Label ID="lblCity" runat="server"></asp:Label>&nbsp;</a></center>
                           <asp:LinkButton ID="LinkButton4" PostBackUrl="~/search.aspx" runat="server"><img src="img/mainhlogo.png" class="img-responsive" style="width:100%" /></asp:LinkButton>
                         </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        

        <section class="service-layout1 bg-accent s-space-custom3">
            <div class="container" style="margin-bottom:20px;" id="YesFound" runat="server" visible="false">
                <div class="section-title-dark">
                    <p><span><asp:Label ID="lblTotalCount" runat="server"></asp:Label> Results for &nbsp;</span><span><asp:Label ID="lblkey" runat="server"></asp:Label></span>, &nbsp;<span><asp:Label ID="lblLocation" runat="server"></asp:Label></span></p>
                </div>
                <div class="row">
                <asp:Repeater ID="RepeaterlistProperty" runat="server" DataSourceID="SqlDataSourceListProperty">
                   <ItemTemplate>
                    <div class=" service-box2 bg-body col-lg-12 col-md-12 col-sm-12 col-12 item-mb" style="padding-right: 1px; padding-left: 1px; border: 1px solid #d1d1d1; margin-bottom: 5px;">
                        <div class=" col-md-3 col-sm-3 col-xs-3" style="padding-right: 5px;padding-left: 5px;" id="ImageAvailable" runat="server">
                            <a href='ListDetails.aspx?compid=<%# Eval("CompanyId")%>&CompImgID=<%# Eval("CompImgID")%>'><img class="imagemain" src="http://bestdial.co.in/uploads/comp-img/<%# Eval("CompImgID")%>.jpg" style="height:90px; width:100% !important;" alt='<%# Eval("CompanyName")%>' class="img-fluid"></a>
                        </div>
                        <%--<div class=" col-md-3 col-sm-3 col-xs-3" style="padding-right: 5px;padding-left: 5px;" id="NoImageAvailable" runat="server" visible="false">
                            <a href='ListDetails.aspx?compid=<%# Eval("CompanyId")%>'><img class="imagemain" src="http://bestdial.co.in/uploads/comp-img/no-image.jpg"  style="height:90px; width:100% !important;" alt='<%# Eval("CompanyName")%>'></a>
                        </div>--%>
                        <div class="col-md-7 col-sm-7 col-xs-7" style="padding-right: 5px;padding-left: 5px;">
                           <a href='ListDetails.aspx?compid=<%# Eval("CompanyId")%>&CompImgID=<%# Eval("CompImgID")%>' style="text-decoration:none;"><span class="vendtitle CompTitletext"><%# Eval("CompanyName")%></span></a>
                           <span class="vendall wrapper-list"><span class="wrapper-list"><span class="vendlocation"><%# Eval("Location")%>, <%# Eval("City")%></span></span></span>
                           <span class="vendrating"><span class="boxrating">5.0</span><span ><img src="img/rating.png" class="starsectionwrapper" /></span> <span class="overrating">10+ Ratings</span> </span>
                            <span><span class="vendbtn"><a href='ListDetails.aspx?compid=<%# Eval("CompanyId")%>&CompImgID=<%# Eval("CompImgID")%>' style="color:#fff; text-decoration:none;">View Detail</a></span> <span class="vendbtn"><a href="best-deal.aspx" style="color:#fff;text-decoration:none;"">Best Deal</a></span></span>
                        </div>
                         <div class=" col-md-2 col-sm-2 col-xs-2" style="padding-right: 5px;padding-left: 5px; margin-top:25px;">
                         <span><a href='/message.aspx?companyName=<%# Eval("CompanyName")%>&CompId=<%# Eval("CompanyId")%>&Location=<%# Eval("Location")%>&City=<%# Eval("City")%>'><span><i class="fa fa-envelope fa-2x"></i></span></a></span> 
                        </div>
                        <asp:HiddenField ID="postid" Value='<%# Eval("CompanyId")%>' runat="server"></asp:HiddenField>
                    </div>
                  </ItemTemplate>
                </asp:Repeater>
				 <asp:SqlDataSource ID="SqlDataSourceListProperty" runat="server" ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>">
                 </asp:SqlDataSource>
                </div>
            </div>
             <div class="container" style="margin-bottom:20px;" id="NotFound" runat="server" visible="false">
               <img src="img/Noresults.png" class="img-responsive img-rounded img-thumbnail" style="width:100%" />
            </div>
        </section>
</asp:Content>
