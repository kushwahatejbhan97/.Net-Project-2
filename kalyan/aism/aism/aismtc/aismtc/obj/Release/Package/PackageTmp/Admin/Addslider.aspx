<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Addslider.aspx.cs" Inherits="aismtc.Admin.Addslider" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
		.auto-style2 {
			position: relative;
			display: flex;
			-webkit-box-orient: vertical;
			-webkit-box-direction: normal;
			-ms-flex-direction: column;
			flex-direction: column;
			min-width: 0;
			word-wrap: break-word;
			background-clip: border-box;
			border-radius: .25rem;
			-webkit-box-shadow: 0 .75rem 1.5rem rgba(18, 38, 63, .03);
			box-shadow: 0 .75rem 1.5rem rgba(18, 38, 63, .03);
			left: 0px;
			top: 19px;
			border-style: none;
			border-color: inherit;
			border-width: 0;
			margin-bottom: 24px;
			background-color: #fff;
		}
	</style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

	<div class="page-content">
                    <div class="container-fluid">
          
                    
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0 font-size-18">Add Slider</h4>

                                  

                                </div>
                            </div>
                        </div>
                       

                        <div class="row">
                            
                            <div class="col-xl-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card mini-stats-wid">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body">
                                          
                               <div class="form-group">
                                <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <label >Slider Name</label>
                                    
                                    <asp:TextBox ID="TxtSlider" placeholder="Slider Name " MaxLength="32" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtSlider" ValidationGroup="abc" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter  Name"></asp:RequiredFieldValidator>

                                </div>
                                
                                    <div class="col-sm-6 col-md-6">
                                    <label >TextLine1</label>
                                    
                                    <asp:TextBox ID="TxtTextLine1" placeholder="*Enter TextLine1" MaxLength="50" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
                                        
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TxtTextLine1" ValidationGroup="abc" runat="server" ForeColor="Red" Display="Dynamic" ErrorMessage="*Enter Address"></asp:RequiredFieldValidator>

                                </div>
                                </div>
                                </div>
                              <div class="form-group">
                                <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <label >TextLine2 </label>
                                    
                                   <asp:TextBox ID="TxtTextLine2" placeholder="*Enter TextLine2" MaxLength="50" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TxtTextLine2" ValidationGroup="abc" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Please Enter Mobile Number"></asp:RequiredFieldValidator>
                                 
                                </div>
                                



                                    <div class="col-sm-6 col-md-6">
                                    <label >Slider Image</label>
                                        <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                                   
                                  
                                </div>
                                </div>
                                </div>

                                                          <div class="form-group">
                                <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <label >URL </label>
                                    
                                   <asp:TextBox ID="txturl" placeholder="*Enter URL" MaxLength="200" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
                                    
                                 
                                </div>
                                 </div>
                                </div>

                                
                                  <div class="form-group" style="text-align:center; padding-top:2%">
                                    <asp:Button ID="Button1" ValidationGroup="abc" CssClass="btn btn-primary" 
                                            runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button>
                                    </div>
                                                        
                                                   

                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                

                                
                            </div>
                        </div>
                       
                       
                        
                       
                    </div>

                    <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-12">Edit Delete Slider</h4>
                                        
                         
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap mb-0">
                                               
                                               
                                                
                                           </table>
                                        </div>
                                         
                                         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Sliderid" 
                                            DataSourceID="SqlDataSource1" class="table table-bordered table-responsive table-condensed"
                                            EmptyDataText="There are no data records to display.">
                                            <Columns>
                                                
                                               
                                                <asp:BoundField DataField="TextLine1" HeaderText="TextLine1" SortExpression="TextLine1" />
                                                <asp:BoundField DataField="TextLine2" HeaderText="TextLine2" SortExpression="TextLine2" />
                                                <asp:TemplateField HeaderText="Image" SortExpression="imgurl">
                                                    

                                                    <ItemTemplate>
                                                        
                                                        
                                                        <img src='/Admin/Banner/Images/<%# Eval("imgurl") %>' class="img-responsive" style="width:100px"/>  
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
                                                 <asp:CheckBoxField DataField="showtext" HeaderText="show Text" SortExpression="showtext" />
                                                <asp:CheckBoxField DataField="show" HeaderText="show" SortExpression="show" />
                                                <asp:TemplateField ShowHeader="False">
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete this event?');" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                                    </ItemTemplate>
                                                    <ControlStyle CssClass="btn btn-warning" />
                                                </asp:TemplateField>
                                              

          
                                            </Columns>
                                        </asp:GridView>

                                       
                                        
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:DbAismConnectionString1 %>" 
                                            DeleteCommand="DELETE FROM [aism_Slider] WHERE [Sliderid] = @Sliderid" 
                                            SelectCommand="SELECT [Sliderid], [slidername], [TextLine1], [TextLine2], [URL], [imgurl], [show], [showtext] FROM [aism_Slider]" 
                                            UpdateCommand="UPDATE [aism_Slider] SET [slidername] = @slidername, [TextLine1] = @TextLine1, [TextLine2] = @TextLine2, [URL] = @URL, [show] = @show, [showtext] = @showtext WHERE [Sliderid] = @Sliderid" InsertCommand="INSERT INTO [aism_Slider] ([slidername], [TextLine1], [TextLine2], [URL], [show]) VALUES (@slidername, @TextLine1, @TextLine2, @URL, @show)" >
                                            <DeleteParameters>
                                                <asp:Parameter Name="Sliderid" Type="Int32" />
                                            </DeleteParameters>
                                            
                                            <InsertParameters>
                                                <asp:Parameter Name="slidername" Type="String" />
                                                <asp:Parameter Name="TextLine1" Type="String" />
                                                <asp:Parameter Name="TextLine2" Type="String" />
                                                <asp:Parameter Name="URL" Type="String" />
                                                <asp:Parameter Name="show" Type="Boolean" />
                                            </InsertParameters>
                                            
                                            <UpdateParameters>
                                                <asp:Parameter Name="slidername" Type="String" />
                                                <asp:Parameter Name="TextLine1" Type="String" />
                                                <asp:Parameter Name="TextLine2" Type="String" />
                                                <asp:Parameter Name="URL" Type="String" />
                                                <asp:Parameter Name="show" Type="Boolean" />
                                                 <asp:Parameter Name="showtext" Type="Boolean" />
                                               <asp:Parameter Name="Sliderid" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <br />


                                    </div>
                                </div>
                            </div>
                        </div>
                   
                </div>
              
                
               
  
            </div>
	  
															 
														  



</asp:Content>
