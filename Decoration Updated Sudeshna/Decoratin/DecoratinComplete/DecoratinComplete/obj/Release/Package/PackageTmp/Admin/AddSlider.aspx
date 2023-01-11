<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddSlider.aspx.cs" Inherits="DecoratinComplete.Admin.AddSlider" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>ADD SLIDER</h4>
                </div>
                <div class="form-body">
                   <div class="row">

                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtSliderName">Slider Name</label>
                             <asp:TextBox ID="txtSliderName" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ValidationGroup="Productform" ControlToValidate="txtSliderName" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>

                            
                        </div>

                           

                           
                           <div class="col-md-6">
                            <label for="chkStatus">Status</label>
                             <asp:CheckBox ID="chkStatus" CssClass="form-control" placeholder="" runat="server"></asp:CheckBox>
                            </div>
                        </div>


                       <div class="form-group row">
                               <div class="col-md-6">
                            <label for="txtSliderTitle">Title</label>
                             <asp:TextBox ID="txtSliderTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Productform" ControlToValidate="txtSliderTitle" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>

                            
                        </div>

                               <div class="col-md-6">
                            <label for="txtSliderSubTitle">SubTitle</label>
                             <asp:TextBox ID="txtSliderSubTitle" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Productform" ControlToValidate="txtSliderSubTitle" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>

                            
                        </div>
                        </div>


                       <div class="form-group row">
                               <div class="col-md-12">
                            <label for="txtUrl">URL</label>
                             <asp:TextBox ID="txtUrl" CssClass="form-control" placeholder="Name Must be below 20Characters" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Productform" ControlToValidate="txtUrl" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Slider Name"></asp:RequiredFieldValidator>

                            
                        </div>

                               
                        </div>
                       
                       <div class="form-group row">
                        <div class="col-md-6">
                            <label for="fileDesktop">Desktop Image</label>
                            <asp:FileUpload ID="fileDesktop" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 1904px * 778px</p>
                        </div>
                        <div class="col-md-6">

                        <label for="fileMobile">Mobile Image</label>
                            <asp:FileUpload ID="fileMobile" CssClass="form-control" runat="server" />
                            
                            <p class="help-block">* The image width and height should be 635px * 260px</p>
                        </div>
                        
                            
                        </div>
                        

                       </div>


                    <asp:Button ID="btnAddSlider" ValidationGroup="Productform" CssClass="btn btn-dark" runat="server" Text="Submit" OnClick="btnAddSlider_Click" />
                    
                </div>

                
                         
            </div>
    </div>
      </div>



    <div class="main-page">
        <div class="forms">
            <h2 class="title1"></h2>
            <div class="form-grids row widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>Edit Delete Slider</h4>
                </div>
                <div class="form-body" style="overflow-x:scroll;">
                   

                    
                    <asp:GridView ID="GridView1" CssClass="table table-bordered table-striped no-margin grd_tble" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="SliderTitle" HeaderText="Title" SortExpression="SliderTitle" />
                            <asp:BoundField DataField="SliderSubTitle" HeaderText="Sub Title" SortExpression="SliderSubTitle" />
                            
                           <asp:CheckBoxField DataField="show" HeaderText="show" SortExpression="show" />
                            <asp:TemplateField HeaderText="DeskImg" SortExpression="DeskImg">
                                
                                <ItemTemplate>
                                    <img src='/admin/Slider/Desktop/<%# Eval("DeskImg") %>' height="60" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-dark" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-dark" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandicraftAustralia %>" 
                        DeleteCommand="DELETE FROM [Slider] WHERE [id] = @id" 
                        
                        SelectCommand="SELECT [id], [name], [show], [DeskImg], [MblImg] , [SliderTitle], [SliderSubTitle] FROM [Slider]" 
                        UpdateCommand="UPDATE [Slider] SET  [show] = @show, [SliderTitle] = @SliderTitle, [SliderSubTitle] = @SliderSubTitle  WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                             <asp:Parameter Name="SliderTitle" Type="String" />
                             <asp:Parameter Name="SliderSubTitle" Type="String" />
                            <asp:Parameter Name="show" Type="Boolean" />
                            <asp:Parameter Name="DeskImg" Type="String" />
                            
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                   

                    
                </div>

                
                         
            </div>
    </div>
      </div>
</asp:Content>
