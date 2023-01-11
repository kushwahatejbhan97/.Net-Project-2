<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="DecoratinComplete.Admin.SubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Tag Details</h4>
                </div>
                <div class="form-body">
                   <div class="row">
                       
                       


                       <div class="form-group row ">

                               <div class="col-md-4">
                                   <label for="DrpCategory">Select Category</label>
                                   
                                   <asp:DropDownList ID="DrpCategory" DataSourceID="SqlDBCatNameId" CssClass="form-control" runat="server"  DataTextField="CatName" DataValueField="CatId" >

                                   </asp:DropDownList>

                               </div>

                           <asp:SqlDataSource ID="SqlDBCatNameId" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [CatId], [CatName] FROM [Category]"></asp:SqlDataSource>

                        <div class="col-md-4">
                                   <label for="DrpTagName">Tag Name</label>
                                   
                                   <asp:DropDownList ID="DrpTagName" CssClass="form-control" runat="server"  DataTextField="CatName" DataValueField="CatId" >
                                      
                                   </asp:DropDownList>

                                    

                               </div>
                           <div class="col-md-4">
                                   <label for="DrpTabUrl">Url</label>
                                   
                                   <asp:DropDownList ID="DrpTabUrl"  CssClass="form-control" runat="server"  DataTextField="CatName" DataValueField="CatId" >
                                      
                                   </asp:DropDownList>

                                    

                               </div>
                           
                               </div>

                           </div>

                    <asp:Button ID="BtnSubmitTag" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit"  />
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>
</asp:Content>
