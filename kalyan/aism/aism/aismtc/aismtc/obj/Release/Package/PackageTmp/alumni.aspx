<%@ Page Title="" Language="C#" MasterPageFile="~/aismtc.Master" AutoEventWireup="true" CodeBehind="alumni.aspx.cs" Inherits="aismtc.alumni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

	<title>Asian Institute Of Safety Management | Hyderabad</title>
	<link href="css/bootstrap.css" rel="stylesheet" />
<link rel="canonical" href="https://www.aismtc.com/alumni/" />
 <link href="https://www.aismtc.com/alumni/" rel="shortlink"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="breadcrumbs breadcrumbs2 about wow fadeInDown" data-wow-duration="0.25s" data-wow-delay="0.45s">
  <div class="boxedeb">
	<div class="container page-block-small">
	  <div class="col-md-12 col-sm-12 col-xs-12">
		  <h1 style="color:White">Alumni</h1>
		  <span class="line"></span>
		<div class="rightText">
			<a href="https://www.aismtc.com/home" title="Home">Home</a> / Alumni
		</div>
	  </div>
	</div><!--end-container-->
  </div> 

	
</section>


	<div class="container page-block text-center wow fadeInUp" data-wow-duration="0.50s" data-wow-delay="0.50s">
		<h3 class="prime"> Alumni</h3>
		<span class="line"></span>
		<p class="text-center">
We are here to assist the students as well as company clients for their requirements of authentication of the documents, as we know the demand of the authentication. Candidates as well as clients they can easily access the authentication of the particular candidate.</p>
		
		
		
		<form  runat="server" >
			  <section class="BGlight page-block-large services zeroM">
				  <div class="container">
					         
 
    <div class="container">
		  <div class="col-md-12">
			 <label>Get immediate verification by entering the Certificate / enrolment number</label>
			<asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Your Roll Number"></asp:TextBox>
		  </div>
		
			
			
				
		  <div class="col-md-12">
			  
			 
			  <asp:Button ID="txtSubmit" runat="server" Text="View" 
				  class="btn btn-primary btn-lg" onclick="txtSubmit_Click"></asp:Button>
		  </div>
		</div>
	 

					         
					  </div>

</section>
			

						<div class="form-group" runat="server" id="notExist"  style=" width:100%;"   >
						<center style=" color:Red;">
						  <span class="col-sm-6">This Roll Number doesn't exits.</span>
						  </center>
							
						</div>

						<div class="form-group" runat="server"  style="  background-image: url('/img/allumini/Form-Alumini.JPG'); background-repeat: no-repeat; width:800px; height:550px; background-size: cover; margin: 25px auto;" id="certificate" >
						  <span class="col-sm-3"> 
							 
							 </span>
							  <br />
							
							<div class="abhi" style=" margin-top:48px; width:700px; margin-left:30%; font-weight:600; color:Maroon; font-size:21px; font-family:Times New Roman; ">
							   
							<asp:Label ID="Label1" runat="server" style=" text-transform:capitalize" Text=""></asp:Label>
							<div class=" clearfix" style=" height: 13px;"></div>
							<asp:Label ID="Label4" style=" text-transform:capitalize"  runat="server"  Text=""></asp:Label>
						   <div class=" clearfix" style=" height: 13px;"></div>
							<asp:Label ID="Label5"  style=" text-transform:capitalize" runat="server" Text=""></asp:Label>
						   <div class=" clearfix" style=" height: 13px;"></div>
							<asp:Label ID="Label6"  style=" text-transform:capitalize" runat="server" Text=""></asp:Label>
							<div class=" clearfix" style=" height: 13px;"></div>
							<asp:Label ID="Label7"  style=" text-transform:capitalize" runat="server" Text=""></asp:Label>
						  <div class=" clearfix" style=" height: 13px;"></div>
							   <asp:Label ID="Label8" style=" text-transform:capitalize" runat="server" Text=""></asp:Label>
							 <div class=" clearfix" style=" height: 13px;"></div>
							</div>
							  </div> 
					   
			
		</form>
	</div>


</asp:Content>
