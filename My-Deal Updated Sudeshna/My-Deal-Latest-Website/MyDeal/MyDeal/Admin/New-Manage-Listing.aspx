<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" AutoEventWireup="true" CodeBehind="New-Manage-Listing.aspx.cs" Inherits="MyDeal.Admin.New_Manage_Listing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    @media (min-width: 992px) {
        .col-md-4 {
            width: 33.33333333%;
            padding: 15px;
        }
        
        
    }

    @media (min-width: 992px){
        .col-md-12 {
            width: 100%;
            padding: 13px;
        }
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main-content">
   

   

    
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
                 <div class="container" style="background:#006699; padding:1em;">
                       <div class=" col-md-4">
                       <label style="color:White;">Select Category</label>
                           <asp:DropDownList ID="DdlCategory" CssClass="form-control" runat="server" AutoPostBack="true" 
                               DataSourceID="SqlDataSourceCategoryList" AppendDataBoundItems="True" DataTextField="CategoryName" 
                               DataValueField="CatId" OnSelectedIndexChanged="DdlCategory_SelectedIndexChanged">
                                <asp:ListItem Value="0">Select Category</asp:ListItem>
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSourceCategoryList" runat="server" 
                               ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                               SelectCommand="SELECT [CatId], [CategoryName] FROM [NewListing_Website_category_tbl]">
                           </asp:SqlDataSource>
                       </div>
                        <div class=" col-md-4">
                            <label style="color:White;">Select City</label>
                            <asp:DropDownList ID="DropCityName" runat="server" class="form-control" 
                                                       ValidationGroup="SearchForm" 
                                                        DataSourceID="SqlDataSourceCityName" DataTextField="CityName" 
                                                        DataValueField="CityName" AutoPostBack="true" OnSelectedIndexChanged="DdlCategory_SelectedIndexChanged">

                                                 
                                                </asp:DropDownList>

                       
                            

                            <asp:SqlDataSource ID="SqlDataSourceCityName" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                                        SelectCommand="SELECT [ID], [CityName] FROM [Updated_State_City_List] ORDER BY [CityName]">
                                                    </asp:SqlDataSource>
                            
                       </div>
                       <div class=" col-md-4">
                        <label style="color:White;">Company</label>
                            <asp:DropDownList ID="DDcompany" CssClass="form-control" runat="server" AutoPostBack="true" 
                                DataSourceID="SqlDataSourceListType" DataTextField="CompanyName" DataValueField="CompanyId" OnSelectedIndexChanged="DDcompany_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceListType" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [CompanyId], [CompanyName] FROM [NewListing_Website_listing_tbl] WHERE ([CatId] = @Catid)">

                                <SelectParameters>
                                           <asp:ControlParameter ControlID="DdlCategory" Name="Catid" PropertyName="SelectedValue" DefaultValue="0" Type="Int32" />
                                       </SelectParameters>

                            </asp:SqlDataSource>
                       </div>
                    </div>
            <div class="container" style="background:#b6d1f2; padding:1em;">

                <div class=" col-md-4">
                        <label>
Company Name</label>
                             <asp:TextBox ID="txtCompanyName" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   
                       </div>
                <div class=" col-md-4">
                        <label>Owner Name</label>
                             <asp:TextBox ID="txtOwnerName" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   
                       </div>
                <div class=" col-md-4">
                        <label>Year Establish</label>
                             <asp:TextBox ID="TxtYearEstablish" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   
                       </div>

                <div class=" col-md-4">
                        <label>Mobile</label>
                             <asp:TextBox ID="TxtMobile" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   
                       </div>
                <div class=" col-md-4">
                        <label>Land Line No.</label>
                             <asp:TextBox ID="TxtLandLine" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   

                       </div>
                <div class=" col-md-4">
                        <label>Email</label>
                             <asp:TextBox ID="TxtEmail" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   

                       </div>
                <%--<div class=" col-md-4">
                        <label>Company</label>
                             <asp:TextBox ID="TxtCompany" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   

                       </div>--%>
                <div class=" col-md-4">
                        <label>Password</label>
                             <asp:TextBox ID="TxtPassword" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   

                       </div>
                <div class=" col-md-4">
                        <label>Website</label>
                             <asp:TextBox ID="TxtWebsite" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   

                       </div>
                <div class=" col-md-4">
                        <label>Location</label>
                             <asp:TextBox ID="TxtLocation" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   

                       </div>
                <div class=" col-md-4">
                        <label>Address</label>
                             <asp:TextBox ID="TxtAddress" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   

                       </div>
                <div class=" col-md-4">
                        <label>Enable</label>
                              <asp:CheckBox ID="ChkEnable" CssClass="form-control" placeholder="" runat="server" />
                                   

                       </div>

                <div class=" col-md-4">
                        <label>Describtion</label>
                             <asp:TextBox ID="TxtDescribtion" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   

                       </div>

                <div class=" col-md-4">
                        <label>Map</label>
                             <asp:TextBox ID="TextMap" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   

                       </div>

                <div class="form-group row">
                <div class="col-md-1">
                               
                            <asp:Image ID="Image1" CssClass="img-fluid" onerror="this.src='../uploads/comp-img/NoImage.jpg;" style=" height:60px; " runat="server" /> 
                          
                        </div>
                <div class=" col-md-4">
                        <label>Media Upload</label>
                             <asp:FileUpload ID="fileDesktop" CssClass="form-control" runat="server" />
                                
                                <p class="help-block">* The image width and height should be 164px * 160px</p>
                                   

                       </div>
                     </div>

                <div class="col-md-12">
                                <label for="ChkTrending"  >Select General Tags</label>

                                <asp:CheckBoxList ID="CBGeneralList"  RepeatDirection="Horizontal"  CssClass="form-control" runat="server">
                                   
                                    <asp:ListItem Value="Popular">Popular</asp:ListItem>
                                    <asp:ListItem Value="Human Resources" >Human Resources</asp:ListItem>
                                    <asp:ListItem Value="Industries">Industries</asp:ListItem>
                                </asp:CheckBoxList>

                                
                               
                                

                                
                            </div>


                <div class="col-md-12">
                                <label for="ChkTrending"  >Select Category Tags</label>

                                <asp:CheckBoxList ID="CheckBoxListtag" DataSourceID="SqlDataSourceTagsName"  RepeatDirection="Horizontal" DataTextField="Tags" DataValueField="TagId" CssClass="form-control" runat="server">
                                   
                                   
                   
                                </asp:CheckBoxList>

                                
                               <asp:SqlDataSource ID="SqlDataSourceTagsName" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
            SelectCommand="SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl] WHERE ([Catid] = @Catid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DdlCategory" DefaultValue="0" Name="Catid" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

                                
                           
                                

                                
                            </div>

                <div class="col-md-12" style="padding:14px;">
                <asp:Button ID="btnSubmitEditListing" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Update" OnClick="btnSubmitEditListing_Click" />

                    <asp:Button ID="btndelete" ValidationGroup="Productform" CssClass="btn btn-warning" runat="server" Text="Delete" OnClick="btndelete_Click"  />
                    </div>
               
                   

                    
                          
            </div>
        </div>
    </div>



        
   
   
    <footer>
        <p>2022 © My-Deal</p>
    </footer>

    <a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i class="fa fa-chevron-up"></i></a>
</div>
</asp:Content>
