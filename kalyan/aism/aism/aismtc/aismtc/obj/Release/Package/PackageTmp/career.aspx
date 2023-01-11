<%@ Page Title="" Language="C#" MasterPageFile="~/aismtc.Master" AutoEventWireup="true" CodeBehind="career.aspx.cs" Inherits="aismtc.career" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

	<title>Asian Institute Of Safety Management | Hyderabad</title>
		
	 
<link rel="canonical" href="https://www.aismtc.com/career/" />
 <link href="https://www.aismtc.com/home" rel="shortlink"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<section class="breadcrumbs breadcrumbs2 about wow fadeInDown" data-wow-duration="0.25s" data-wow-delay="0.45s">
  <div class="boxedeb">
	<div class="container page-block-small">
	  <div class="col-md-12 col-sm-12 col-xs-12">
		  <h1 style="color:White">Career</h1>
		  <span class="line"></span>
		<div class="rightText">
			<a href="https://www.aismtc.com/home" title="Home">Home</a> / Career
		</div>
	  </div>
	</div><!--end-container-->
  </div> 
</section>

	<div class="container page-block text-center wow fadeInUp" data-wow-duration="0.50s" data-wow-delay="0.50s">
		<h3 class="prime"> Career</h3>
		<span class="line"></span>
		<p class="text-center">Once you have a solid career and clear idea of the direction you want your life to go in, it is important that you also have a career development plan to help you excel in the future and in your chosen field. We are ASIAN INSTITUTE OF SAFETY MANAGEMENT has assist your completely career development plan</p>
		<form  runat="server" >
		  <div class="col-md-12">
			<asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Your Name"></asp:TextBox>
		  </div>
		  <div class="col-md-6">
			<asp:TextBox ID="txtPhone" runat="server" class="form-control" placeholder="Your Phone"></asp:TextBox>
		  </div>
		  <div class="col-md-6">
			<asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Your Email"></asp:TextBox>
		  </div>
		 <div class="col-md-6">
			<asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Your Address"></asp:TextBox>
		  </div>
			<div class="col-md-6">
			<asp:TextBox ID="txtReference" runat="server" class="form-control" placeholder=" Reference"></asp:TextBox>
		  </div>
		  <div class="col-md-12">
			<asp:FileUpload ID="FileUpload2" class="form-control" runat="server" placeholder="Upload"/>
		  </div>
			
			
				
		  <div class="col-md-12">
			  <input type="text" id="security" name="security" class="form-control hide" value="" />
			 
			  <asp:Button ID="txtSubmit" runat="server" Text="Submit" 
				  class="btn btn-primary btn-lg" onclick="txtSubmit_Click"></asp:Button>
		  </div>
			
		</form>
	</div>

</asp:Content>
