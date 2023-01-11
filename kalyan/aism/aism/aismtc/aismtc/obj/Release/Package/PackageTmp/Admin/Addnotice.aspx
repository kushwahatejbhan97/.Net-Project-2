<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Addnotice.aspx.cs" Inherits="aismtc.Admin.Addnotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	

	<div class="page-content">
                    <div class="container-fluid">
          
                    
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0 font-size-18">Add Notice</h4>

                                  

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
                                    <label >Image_url</label>
                                    
                                    <asp:TextBox ID="txtid" placeholder="Enter Image_url " MaxLength="32" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
                                    

                                </div>
                                
                                    <div class="col-sm-6 col-md-6">
                                    <label > Heading</label>
                                    
                                    <asp:TextBox ID="txtheading" placeholder="*Enter Heading" MaxLength="50" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
                                        
                                   

                                </div>
                                </div>
                                </div>
                              <div class="form-group">
                                <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <label >Notice </label>
                                    
                                   <asp:TextBox ID="txtnotice" placeholder="*Enter Notice" MaxLength="50" ValidationGroup="abc" class="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                   
                                 
                                </div>
                                



                                    
                                </div>
                                </div>

                                                          <div class="form-group">
                                <div class="row">
                                

                                    
                                 </div>
                                </div>

                                
                                  <div class="form-group" style="text-align:center; padding-top:2%">
                                   <asp:Button ID="Button1" CssClass="btn btn-primary" ValidationGroup="abc" OnClick="Button1_Click" runat="server" Text="Save" />
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
                                        <h4 class="card-title mb-12">Notice</h4>
                                        
                         
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap mb-0">
                                               
                                               
                                                
                                           </table>
                                        </div>
                                         
                                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-bordered table-responsive table-condensed" DataKeyNames="id" DataSourceID="SqlDataSource1">
												<Columns>
													<asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
													<asp:BoundField DataField="heading" HeaderText="Heading" SortExpression="heading" />
													<asp:BoundField DataField="img_url" HeaderText="img_url" SortExpression="img_url" />
													<asp:BoundField DataField="text" HeaderText="Text" SortExpression="text" />
												
												<asp:TemplateField ShowHeader="False">
				<EditItemTemplate>
					<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
					&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
				</EditItemTemplate>
				<ItemTemplate>
					<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
					&nbsp;<asp:LinkButton ID="LinkButton2"  OnClientClick="return confirm('Are you sure you want to delete this event?');" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
				</ItemTemplate>
				<ControlStyle CssClass="btn btn-warning" />
			</asp:TemplateField>
												</Columns>
											</asp:GridView>

                                       
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DbAismConnectionString1 %>" DeleteCommand="DELETE FROM [aismtc_notice] WHERE [id] = @original_id AND (([heading] = @original_heading) OR ([heading] IS NULL AND @original_heading IS NULL)) AND (([img_url] = @original_img_url) OR ([img_url] IS NULL AND @original_img_url IS NULL)) AND (([text] = @original_text) OR ([text] IS NULL AND @original_text IS NULL))" InsertCommand="INSERT INTO [aismtc_notice] ([heading], [img_url], [text]) VALUES (@heading, @img_url, @text)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [aismtc_notice]" UpdateCommand="UPDATE [aismtc_notice] SET [heading] = @heading, [img_url] = @img_url, [text] = @text WHERE [id] = @original_id AND (([heading] = @original_heading) OR ([heading] IS NULL AND @original_heading IS NULL)) AND (([img_url] = @original_img_url) OR ([img_url] IS NULL AND @original_img_url IS NULL)) AND (([text] = @original_text) OR ([text] IS NULL AND @original_text IS NULL))">
												<DeleteParameters>
													<asp:Parameter Name="original_id" Type="Int32" />
													<asp:Parameter Name="original_heading" Type="String" />
													<asp:Parameter Name="original_img_url" Type="String" />
													<asp:Parameter Name="original_text" Type="String" />
												</DeleteParameters>
												<InsertParameters>
													<asp:Parameter Name="heading" Type="String" />
													<asp:Parameter Name="img_url" Type="String" />
													<asp:Parameter Name="text" Type="String" />
												</InsertParameters>
												<UpdateParameters>
													<asp:Parameter Name="heading" Type="String" />
													<asp:Parameter Name="img_url" Type="String" />
													<asp:Parameter Name="text" Type="String" />
													<asp:Parameter Name="original_id" Type="Int32" />
													<asp:Parameter Name="original_heading" Type="String" />
													<asp:Parameter Name="original_img_url" Type="String" />
													<asp:Parameter Name="original_text" Type="String" />
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
