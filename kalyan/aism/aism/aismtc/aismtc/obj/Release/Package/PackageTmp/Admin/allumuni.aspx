<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="allumuni.aspx.cs" Inherits="aismtc.Admin.allumuni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

	<div class="page-content">
					<div class="container-fluid">
		  
					
						<div class="row">
							<div class="col-12">
								<div class="page-title-box d-flex align-items-center justify-content-between">
									<h4 class="mb-0 font-size-18">Add Certificate</h4>

								  

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
									<label >Certificate Number</label>
									
									<asp:TextBox ID="txtcertificate" placeholder="Enter Certificate Number " MaxLength="32" ValidationGroup="abc" class="form-control"  runat="server"  required=""></asp:TextBox>
									

								</div>
								
									<div class="col-sm-6 col-md-6">
									<label > Name</label>
									
									<asp:TextBox ID="txtName" placeholder="*Enter Name" MaxLength="50" ValidationGroup="abc" class="form-control"  runat="server" required=""></asp:TextBox>
										
								   

								</div>
								</div>
								</div>
							  <div class="form-group">
								<div class="row">
								<div class="col-sm-6 col-md-6">
									<label >Father's Name </label>
									
								   <asp:TextBox ID="txtfname" placeholder="*Enter Father's Name" MaxLength="50" ValidationGroup="abc" class="form-control" required=""  runat="server"></asp:TextBox>
								   
								 
								</div>
								



									<div class="col-sm-6 col-md-6">
									<label > Cource Name</label>
										<asp:TextBox ID="txtcource" type="text" CssClass="form-control" placeholder="Enter Cource Name" runat="server" required=""></asp:TextBox>
								   
								  
								</div>
								</div>
								</div>

														  <div class="form-group">
								<div class="row">
								<div class="col-sm-6 col-md-6">
									<label >Grade </label>
									
								   <asp:TextBox ID="Txtgrade" placeholder="*Enter Grade" MaxLength="200" ValidationGroup="abc" class="form-control"  runat="server" required=""></asp:TextBox>
									
								 
								</div>

									<div class="col-sm-6 col-md-6">
									<label >Date of Completion </label>
									
								   <asp:TextBox ID="txtcomplte" placeholder="*Enter Date of Completion   " MaxLength="200" ValidationGroup="abc" class="form-control"  runat="server" required=""></asp:TextBox>
									
								 
								</div>
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
										<h4 class="card-title mb-12">Certificate</h4>
										
						 
										<div class="table-responsive">
											<table class="table table-centered table-nowrap mb-0">
											   
											   
												
										   </table>
										</div>
										 
										 

									   
										
										<asp:GridView ID="GridView1" runat="server" 
		AllowPaging="True" AllowSorting="True"  GridLines="None"
		AutoGenerateColumns="False" class="table table-responsive-sm mb-0" DataSourceID="SqlDataSource1"
		EmptyDataText="There are no data records to display." DataKeyNames="certification_no">
		<Columns>
			<asp:BoundField DataField="date_of_completion" HeaderText="date_of_completion" SortExpression="date_of_completion" />
			<asp:BoundField DataField="fathers_name" HeaderText="fathers_name" SortExpression="fathers_name" />
			<asp:BoundField DataField="certification_no" HeaderText="certification_no" SortExpression="certification_no" ReadOnly="True" />
			<asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
			
			
			<asp:BoundField DataField="course_name" HeaderText="course_name" SortExpression="course_name" />
			
			
			<asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
		
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


	<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
		ConnectionString="<%$ ConnectionStrings:DbAismConnectionString1 %>" 

		SelectCommand="SELECT [date_of_completion], [fathers_name], [certification_no], [name], [course_name], [grade] FROM [aismtc_allumuni]" DeleteCommand="DELETE FROM [aismtc_allumuni] WHERE [certification_no] = @certification_no" InsertCommand="INSERT INTO [aismtc_allumuni] ([date_of_completion], [fathers_name], [certification_no], [name], [course_name], [grade]) VALUES (@date_of_completion, @fathers_name, @certification_no, @name, @course_name, @grade)" UpdateCommand="UPDATE [aismtc_allumuni] SET [date_of_completion] = @date_of_completion, [fathers_name] = @fathers_name, [name] = @name, [course_name] = @course_name, [grade] = @grade WHERE [certification_no] = @certification_no">
		<DeleteParameters>
			<asp:Parameter Name="certification_no" Type="String" />
		</DeleteParameters>
		<InsertParameters>
			<asp:Parameter Name="date_of_completion" Type="String" />
			<asp:Parameter Name="fathers_name" Type="String" />
			<asp:Parameter Name="certification_no" Type="String" />
			<asp:Parameter Name="name" Type="String" />
			<asp:Parameter Name="course_name" Type="String" />
			<asp:Parameter Name="grade" Type="String" />
		</InsertParameters>
		<UpdateParameters>
			<asp:Parameter Name="date_of_completion" Type="String" />
			<asp:Parameter Name="fathers_name" Type="String" />
			<asp:Parameter Name="name" Type="String" />
			<asp:Parameter Name="course_name" Type="String" />
			<asp:Parameter Name="grade" Type="String" />
			<asp:Parameter Name="certification_no" Type="String" />
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
