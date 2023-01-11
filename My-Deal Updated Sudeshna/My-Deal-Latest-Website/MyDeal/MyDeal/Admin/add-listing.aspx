<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LocalPanditAdmin.Master" ValidateRequest="false" AutoEventWireup="true" CodeBehind="add-listing.aspx.cs" Inherits="LocalPandit.Admin.add_listing" %>
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
   <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-title">
                    <h3><i class="fa fa-bars"></i>Add Listing</h3>
                    <div class="box-tool">
                        <a data-action="collapse" href="#"><i class="fa fa-chevron-up"></i></a>
                        <a data-action="close" href="#"><i class="fa fa-times"></i></a>
                    </div>
                </div>
                <div class="box-content">
                    <div  class="form-horizontal" >

                        <div class="form-group" style="padding:1em;">

                           <table class="table fill-head">
                             <%--<tr>
                                <td style="width: 37%;">Select Head Tag</td>
                                <td>
                                    <asp:CheckBoxList ID="CheckTag" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CheckBoxList1_CheckedChanged" RepeatDirection="Horizontal">
                                      <asp:ListItem Value="Enable">Popular</asp:ListItem>
                                      <asp:ListItem Value="EnableBottom">Human Resources</asp:ListItem>
                                      <asp:ListItem Value="Industries">Industries</asp:ListItem>
                                    </asp:CheckBoxList>
                                </td>
                              </tr>--%>

                              <tr>
                                <td style="width: 37%;">Select Category</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" DataSourceID="SqlDataSourceCate" DataTextField="CategoryName" DataValueField="CatId" CssClass="form-control"  
                                            AutoPostBack="true" runat="server">
                                    </asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" InitialValue="0" ControlToValidate="DropDownList2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                                </td>
                              </tr>


                               <tr>
                                <td style="width: 37%;">Select City</td>
                                <td>
                                    <asp:DropDownList ID="ddlcity" DataSourceID="SqlDataSourceCityName" DataTextField="CityName" DataValueField="CityName" CssClass="form-control"  
                                            AutoPostBack="true" AppendDataBoundItems="True" runat="server">
                                        <asp:ListItem Value="0">Choose City</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ControlToValidate="ddlcity" ID="RequiredFieldValidator1"
                                    ValidationGroup="AddListing" ForeColor="Red" ErrorMessage="*Please Choose City"
                                    InitialValue="0" runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <asp:SqlDataSource ID="SqlDataSourceCityName" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                                        SelectCommand="SELECT [ID], [CityName] FROM [Updated_State_City_List] ORDER BY [CityName]">
                                                    </asp:SqlDataSource>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" InitialValue="0" ControlToValidate="DropDownList2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
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
                                           RepeatColumns="5" CssClass="myCheck" DataValueField="TagId">
                                           </asp:CheckBoxList>
                                 
                                </td>
                              </tr>
                          </table>

                           <table class="table fill-head">
                              <tr>
                                <td style="width: 37%;">SeleSelect Services Keyword</td>
                                <td>
                                
                                <asp:CheckBoxList ID="CheckBoxList2" runat="server" Class="form-control"
                                           DataSourceID="SqlDataSourceCatKeywordname" DataTextField="Keywords" 
                                           RepeatDirection="Horizontal" 
                                           RepeatColumns="3" CssClass="myCheck" DataValueField="KeywordId">
                                           </asp:CheckBoxList>
                                 
                                </td>
                              </tr>
                          </table>
                            <asp:DetailsView ID="DetailsView1" runat="server" class="table fill-head"  oniteminserting="DetailsView1_ItemInserting" 
                                AutoGenerateRows="False" DataKeyNames="CompanyId" DataSourceID="SqlDataSource1" 
                                DefaultMode="Insert">
                                <Fields>
                                   
                                    <asp:TemplateField HeaderText="Company Name" SortExpression="CompanyName">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" BorderStyle="None" ControlToValidate="TextBox1" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Company Name"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Owner Name" SortExpression="OwnerName">
                                       
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("OwnerName") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" BorderStyle="None" ControlToValidate="TextBox4" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Owner Name"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                       
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Year Establish" SortExpression="YearEstablish">
                                       
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("YearEstablish") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" BorderStyle="None" ControlToValidate="TextBox5" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Year Establish"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                       
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                                       
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" BorderStyle="None" ControlToValidate="TextBox6" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Mobile Number"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Land Line No." SortExpression="LandLine">
                                        
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("LandLine") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator55" BorderStyle="None" ControlToValidate="TextBox7" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter LandLine Number"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                        
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" BorderStyle="None" ControlToValidate="TextBox8" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Email"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Password" SortExpression="Password">
                                        
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" BorderStyle="None" ControlToValidate="TextBox9" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Password"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Website" SortExpression="Website">
                                        
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Website") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" BorderStyle="None" ControlToValidate="TextBox10" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Website"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Location" SortExpression="Location">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" BorderStyle="None" ControlToValidate="TextBox2" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Location"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                       
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Address" SortExpression="Address">
                                        
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" BorderStyle="None"  ControlToValidate="TextBox11" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Address"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <%--<asp:TemplateField HeaderText="City" SortExpression="City">
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>--%>
                                     <asp:CheckBoxField DataField="Enable"  HeaderText="Enable" 
                                        SortExpression="Enable" />
                                  

                                    <asp:TemplateField HeaderText="Describtion" SortExpression="Describtion">
                                        
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox12"  runat="server" Text='<%# Bind("Describtion") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" BorderStyle="None" ControlToValidate="TextBox12" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Describtion"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Map" SortExpression="NewMap">
                                        
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("NewMap") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" BorderStyle="None" ControlToValidate="TextBox13" ValidationGroup="AddListing" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Map"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        
                                        <ControlStyle CssClass="form-control" />
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Media Upload" >
                                        <InsertItemTemplate>
                                            <asp:FileUpload ID="FUpBanner" runat="server" class="form-control"    />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="FUpBanner" ValidationGroup="AddListing" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*Upload Image"></asp:RequiredFieldValidator>
                                            <p class="help-block">* The image width and height should be 164px * 160px</p>
                                        </InsertItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField ShowHeader="False">
                                        <InsertItemTemplate>
                                            <asp:Button ID="Button1" runat="server" CausesValidation="True" ValidationGroup="AddListing" CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" ValidationGroup="AddListing" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                        </ItemTemplate>
                                        <ControlStyle CssClass="btn btn-primary" />
                                    </asp:TemplateField>
                                </Fields>
                            </asp:DetailsView>
                           
                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
                                InsertCommand="INSERT INTO [NewListing_Website_listing_tbl] ([CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord],[Enable], [url], [Describtion], [NewMap], [Password]) VALUES (@CatId, @CompanyName, @OwnerName, @YearEstablish, @Mobile, @LandLine, @Email, @Website, @Location, @Address, @City, @Map, @RegsitrationDate, @KeyWord, @Enable, @url, @Describtion, @NewMap, @Password) SELECT @NewProductID = SCOPE_IDENTITY()" 
                                ProviderName="<%$ ConnectionStrings:PriyamarketingConnectionString.ProviderName %>" 
                                SelectCommand="SELECT [CompanyId], [CatId], [CompanyName], [OwnerName], [YearEstablish], [Mobile], [LandLine], [Email], [Website], [Location], [Address], [City], [Map], [RegsitrationDate], [KeyWord], [Enable], [TotalReview], [Describtion], [NewMap], [Password] FROM [NewListing_Website_listing_tbl]" 
                                OnInserted="SqlDataSource1_Inserted">
                              
                                <InsertParameters>
                                   
                                    <asp:Parameter Name="CompanyName" Type="String" />
                                    <asp:Parameter Name="OwnerName" Type="String" />
                                    <asp:Parameter Name="YearEstablish" Type="String" />
                                    <asp:Parameter Name="Mobile" Type="String" />
                                    <asp:Parameter Name="LandLine" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Website" Type="String" />
                                    <asp:Parameter Name="Location" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                   
                                    <asp:Parameter Name="Map" Type="String" />
                                    <asp:Parameter Name="Enable" Type="Boolean" />
                                    <asp:Parameter Name="Describtion" Type="String" />
                                    <asp:Parameter Name="NewMap" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    
                                    <asp:Parameter Direction="Output" Name="NewProductID" Type="Int32" />
                                </InsertParameters>
                                
                            </asp:SqlDataSource>
                           
                            <asp:SqlDataSource ID="SqlDataSourceCate" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
            SelectCommand="SELECT [Catid], [CategoryName] FROM [NewListing_Website_category_tbl]">
        </asp:SqlDataSource>
                            
            <asp:SqlDataSource ID="SqlDataSourceTagsName" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
            SelectCommand="SELECT [TagId], [Catid], [Tags] FROM [NewListing_Website_tags_tbl] WHERE ([Catid] = @Catid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSourceCatKeywordname" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PriyamarketingConnectionString %>" 
            SelectCommand="SELECT [KeywordId], [CatId], [Keywords] FROM [NewListing_Website_Cat_Keyword_tbl] WHERE ([Catid] = @Catid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" DefaultValue="0" Name="Catid" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>


                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

   



    <footer>
        <p>2022 © My-Deal
    </footer>

    <a id="btn-scrollup" class="btn btn-circle btn-lg" href="#"><i class="fa fa-chevron-up"></i></a>
</div>

</asp:Content>
