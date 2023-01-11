<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Company.Master" AutoEventWireup="true" CodeBehind="edit-listing-details.aspx.cs" Inherits="LocalPandit.Account.edit_listing_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="tz-2 tz-2-admin">
    <div class="tz-2-com tz-2-main">
        <div class="split-row">
            <div>
                <div class="box-inn-sp ad-inn-page">
                    <div class="tab-inn ad-tab-inn">
                     <h3 style="background: black;padding: 0.2em;color: white;">Listings Information</h3>
						<div class="">
                         
							<div class="container-fluid">

                                 <div class="row" style="display:none;" >
									<div class=" col s12">

                                        <asp:DropDownList ID="DropDownList2" DataSourceID="SqlDataSourceCatidByComp" class="select-dropdown"   DataTextField="Catid" 
                                            DataValueField="Catid" AutoPostBack="true" runat="server">
                                            <asp:ListItem Value="0">~Select~</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" InitialValue="0" ControlToValidate="DropDownList2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
									</div>
									
								</div>


								<div class="row" style="background: #347fd61a; padding: 0.5em;">
									<div class=" col s12">
                                     <label>| Select Tags*</label><hr />
                                       
                                        <asp:CheckBoxList ID="CheckBoxList1" runat="server"
                                           DataSourceID="SqlDataSourceTagsName" DataTextField="Tags" 
                                           RepeatDirection="Horizontal" 
                                           RepeatColumns="1" CssClass="myCheck" DataValueField="TagId">
                                           </asp:CheckBoxList>

									</div>
									
								</div>

                                <div class="row" style="background: #347fd61a; padding: 0.5em;">
									<div class=" col s12">
                                     <label>| Select Services Keyword*</label><hr />
                                       
                                         <asp:CheckBoxList ID="CheckBoxList2" runat="server" Class="form-control"
                                           DataSourceID="SqlDataSourceCatKeywordname" DataTextField="Keywords" 
                                           RepeatDirection="Horizontal" 
                                           RepeatColumns="1" CssClass="myCheck" DataValueField="KeywordId">
                                           </asp:CheckBoxList>

									</div>
									
								</div>
                                
								
								<div class="row" style="background: #347fd61a; padding: 0.5em;">
									<div class=" col s12"> 
                                      <asp:Button ID="Button1" 
                                            class="btn btn-primary" runat="server" 
                                            Text="Submit & Continue" onclick="btnaddlistingsite_Click"></asp:Button>
                                    </div>
								</div>
							</div>
						</div>
                        <asp:SqlDataSource ID="SqlDataSourceCatidByComp" runat="server" 
             ConnectionString="<%$ ConnectionStrings:BestdialConnectionString %>"
            SelectCommand="SELECT [CatId] FROM [NewListing_Website_listing_tbl] WHERE ([CompanyId] = @CompanyId)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="0" Name="CompanyId" SessionField="CompID" 
                    Type="Int32" />
            </SelectParameters>
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
					</div>  
                </div>
                
            </div>
        </div>
    </div>
</div>


</asp:Content>
