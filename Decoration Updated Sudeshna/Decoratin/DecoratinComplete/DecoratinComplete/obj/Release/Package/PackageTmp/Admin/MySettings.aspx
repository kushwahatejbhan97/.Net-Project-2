<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="MySettings.aspx.cs" Inherits="DecoratinComplete.MySettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    



    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Tab Details</h4>
                </div>
                <div class="form-body">
                   <div class="row">
                       
                       


                       <div class="form-group row ">
                               <div class="col-md-3">
                                   <label for="DrpTab1">Tab1</label>
                                   
                                   <asp:DropDownList ID="DrpTab1"    CssClass="form-control" runat="server"  DataTextField="CatName" DataValueField="CatId" >
                                      
                                   </asp:DropDownList>

                                    

                               </div>
                        <div class="col-md-3">
                                   <label for="DrpTab2">Tab2</label>
                                   
                                   <asp:DropDownList ID="DrpTab2"    CssClass="form-control" runat="server"  DataTextField="CatName" DataValueField="CatId" >
                                      
                                   </asp:DropDownList>

                                    

                               </div>
                           <div class="col-md-3">
                                   <label for="DrpTab3">Tab3</label>
                                   
                                   <asp:DropDownList ID="DrpTab3"    CssClass="form-control" runat="server"  DataTextField="CatName" DataValueField="CatId" >
                                      
                                   </asp:DropDownList>

                                    

                               </div>
                           <div class="col-md-3">
                                   <label for="DrpTab4">Tab4</label>
                                   
                                   <asp:DropDownList ID="DrpTab4"    CssClass="form-control" runat="server"  DataTextField="CatName" DataValueField="CatId" >
                                      
                                   </asp:DropDownList>

                                    

                               </div>
                               </div>

                           </div>

                    <asp:Button ID="btnSubmitProductSize" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnSubmitProductSize_Click"  />
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>

    
</asp:Content>
