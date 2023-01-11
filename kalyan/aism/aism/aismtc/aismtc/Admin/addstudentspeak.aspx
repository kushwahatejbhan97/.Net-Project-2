<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addstudentspeak.aspx.cs" Inherits="aismtc.Admin.addstudentspeak" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="page-content">
					<div class="container-fluid">
		  
					
						<div class="row">
							<div class="col-12">
								<div class="page-title-box d-flex align-items-center justify-content-between">
									<h4 class="mb-0 font-size-18">Add Testimonial</h4>

								  

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
									<label >Page Name</label>
									
									<asp:TextBox ID="txtpagename" placeholder="Enter PageName " MaxLength="32" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
									

								</div>
								
									<div class="col-sm-6 col-md-6">
									<label > Writer</label>
									
									<asp:TextBox ID="txtwriter" placeholder="*Enter Writer" MaxLength="50" ValidationGroup="abc" class="form-control"  runat="server"></asp:TextBox>
										
								   

								</div>
								</div>
								</div>
							  <div class="form-group">
								<div class="row">
								<div class="col-sm-6 col-md-6">
									<label >Text </label>
									
								   <asp:TextBox ID="txttext" placeholder="*Enter Text" ValidationGroup="abc" class="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
								   
								 
								</div>
								



									
								</div>
								</div>

														  <div class="form-group">
								<div class="row">
								

									
								 </div>
								</div>

								
								  <div class="form-group" style="text-align:center; padding-top:2%">
								   <asp:Button ID="Button1" CssClass="btn btn-primary" ValidationGroup="abc" OnClick="Button1_Click" runat="server" Text="Insert" />
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
										<h4 class="card-title mb-12">Edit Delete Student Speak</h4>
										
						 
										<div class="table-responsive">
											<table class="table table-centered table-nowrap mb-0">
											   
											   
												
										   </table>
										</div>
										 
										   <asp:GridView  ID="GridView1"  runat="server" AllowPaging="True" 
											AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
											DataSourceID="SqlDataSource1" class="table table-bordered table-responsive table-condensed"
											EmptyDataText="There are no data records to display.">
											<Columns>
												<asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
												<asp:BoundField DataField="page_name" HeaderText="page_name" SortExpression="page_name" />
												<asp:BoundField DataField="writer" HeaderText="writer" SortExpression="writer" />
											   
												<asp:BoundField DataField="text" HeaderText="text" SortExpression="text" />
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
										<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbAismConnectionString1 %>" DeleteCommand="DELETE FROM [aismtc_student_speak] WHERE [id] = @id" InsertCommand="INSERT INTO [aismtc_student_speak] ([page_name], [writer], [text]) VALUES (@page_name, @writer, @text)" SelectCommand="SELECT [id], [page_name], [writer], [text] FROM [aismtc_student_speak]" UpdateCommand="UPDATE [aismtc_student_speak] SET [page_name] = @page_name, [writer] = @writer, [text] = @text WHERE [id] = @id">
											<DeleteParameters>
												<asp:Parameter Name="id" Type="Int32" />
											</DeleteParameters>
											<InsertParameters>
												<asp:Parameter Name="page_name" Type="String" />
												<asp:Parameter Name="writer" Type="String" />
												<asp:Parameter Name="text" Type="String" />
											</InsertParameters>
											<UpdateParameters>
												<asp:Parameter Name="page_name" Type="String" />
												<asp:Parameter Name="writer" Type="String" />
												<asp:Parameter Name="text" Type="String" />
												<asp:Parameter Name="id" Type="Int32" />
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
