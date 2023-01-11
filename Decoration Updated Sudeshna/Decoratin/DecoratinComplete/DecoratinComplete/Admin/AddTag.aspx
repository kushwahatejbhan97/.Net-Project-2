<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddTag.aspx.cs" Inherits="DecoratinComplete.Admin.AddTag" %>
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
                                <label for="DrpCategory"> Select Category</label>

                                <asp:DropDownList ID="DrpCategory" AppendDataBoundaItems="true" AutoPostBack="true" CssClass="form-control" runat="server" DataSourceID="SqlDBCatNameId" DataTextField="CatName" DataValueField="CatId">
                                    <asp:ListItem Value="0">Select Category</asp:ListItem>
                                </asp:DropDownList>
                               
                                
                               
                                
                            </div>

                           <asp:SqlDataSource ID="SqlDBCatNameId" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" SelectCommand="SELECT [CatId], [CatName] FROM [Category]"></asp:SqlDataSource>

                        <div class="col-md-4">
                                   <label for="txtTagName">Tag Name</label>
                                <asp:TextBox ID="txtTagName" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtCatName_TextChanged" placeholder="" runat="server"></asp:TextBox>
                                   
                               </div>

                           <div class="col-md-4">
                                   <label for="txtTagURL">Tag URL</label>
                                <asp:TextBox ID="txtTagURL" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                   
                               </div>
                           
                               </div>

                           </div>

                    <asp:Button ID="BtnSubmitTag" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="BtnSubmitTag_Click"  />
                     
                    
                    
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>



    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Tag Details</h4>
                </div>
                <div class="form-body" style="overflow-x: scroll;">
                   
                           <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="TagId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                               <Columns>
                                   <asp:BoundField DataField="TagId" HeaderText="TagId" ReadOnly="True" SortExpression="TagId" />
                                   <asp:BoundField DataField="TagName" HeaderText="TagName" SortExpression="TagName" />
                                   <asp:BoundField DataField="CatId" HeaderText="CatId" SortExpression="CatId" />
                                   <asp:BoundField DataField="Url" HeaderText="Url" SortExpression="Url" />
                                   <asp:TemplateField ShowHeader="False" HeaderText="Action">
                                       <EditItemTemplate >
                                           <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CssClass="btn btn-dark" CommandName="Update" Text="Update"></asp:LinkButton>
                                           &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-warning" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                       </EditItemTemplate>
                                       <ItemTemplate>
                                           <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CssClass="btn btn-dark" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                           &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-warning" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                       </ItemTemplate>
                                   </asp:TemplateField>
                               </Columns>
                           </asp:GridView>
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                               DeleteCommand="DELETE FROM [Tag] WHERE [TagId] = @TagId" 
                               InsertCommand="INSERT INTO [Tag] ([TagName], [CatId], [Url]) VALUES (@TagName, @CatId, @Url)" 
                               SelectCommand="SELECT [TagId], [TagName], [CatId], [Url] FROM [Tag] WHERE ([CatId] = @CatId)" 
                               UpdateCommand="UPDATE [Tag] SET [TagName] = @TagName, [CatId] = @CatId, [Url] = @Url WHERE [TagId] = @TagId">
                               <DeleteParameters>
                                   <asp:Parameter Name="TagId" Type="Int32" />
                               </DeleteParameters>
                               <InsertParameters>
                                   <asp:Parameter Name="TagName" Type="String" />
                                   <asp:Parameter Name="CatId" Type="Int32" />
                                   <asp:Parameter Name="Url" Type="String" />
                               </InsertParameters>

                               <SelectParameters>

                            

                                   <asp:ControlParameter ControlID="DrpCategory" DefaultValue="0" Name="CatId" PropertyName="SelectedValue" Type="Int32" />

                            

                        </SelectParameters>

                               <UpdateParameters>
                                   <asp:Parameter Name="TagName" Type="String" />
                                   <asp:Parameter Name="CatId" Type="Int32" />
                                   <asp:Parameter Name="Url" Type="String" />
                                   <asp:Parameter Name="TagId" Type="Int32" />
                               </UpdateParameters>
                           </asp:SqlDataSource>
                   
                           </div>
                       
                  
                        
             </div>
            </div>

        </div>
</asp:Content>
