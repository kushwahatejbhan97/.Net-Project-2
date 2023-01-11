<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="aismtc.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="page-content">
					<div class="container-fluid">

                        <div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-body">
										<h4 class="card-title mb-12">Students Details</h4>
										
						 
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
