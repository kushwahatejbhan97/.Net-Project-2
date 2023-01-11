<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Contact-Us.aspx.cs" Inherits="HimsIndia.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-banner-w3l-2">
		<header>
			
		</header>

		</div>

	<div class="breadcrumb-agile">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">
					<a href="/Home">Home</a>
				</li>
				<li class="breadcrumb-item active" aria-current="page">Contact-Us</li>
			</ol>
		</nav>
	</div>
	<section class="wthree-row w3-contact py-5">
		<div class="container py-xl-5 py-lg-3">
			<!-- heading title -->
			<div class="text-center mb-lg-5 mb-4">
				<h3 class="title-wthree mb-2">
					Get In Touch<span class="mt-2 text-uppercase font-weight-bold">GOOD TO KNOW  MORE…. </span></h3>
			</div>
			<!-- //heading title -->
			<div class="row contact-form py-3">
				<!-- contact map -->
				<div class="col-lg-6 map text-center">
					<h4> </h4>
					<img src="images/map.jpg" alt="" class="img-fluid" />
				</div>
				<!-- //contact map -->
				<!-- contact form -->
				<div class="col-lg-6 wthree-form-left mt-lg-0 mt-5">
					<div class="contact-top1">
						<div action="#" method="get" class="f-color">
							<div class="form-group">
								<label>Name</label>
								<asp:TextBox ID="txtName" runat="server" CssClass="contact-formw3ls form-control" required="true"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtName" runat="server" ForeColor="red" ErrorMessage="Enter Your Name"></asp:RequiredFieldValidator>
								<%--<input type="text" class="contact-formw3ls form-control" name="text" id="contactusername" required>--%>
							</div>
							<div class="form-group">
								<label>Email</label>
								<asp:TextBox ID="txtemail" runat="server" CssClass="contact-formw3ls form-control" required="true"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtemail" runat="server" ForeColor="red" ErrorMessage="Enter Your Email"></asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
								<%--<input type="email" class="contact-formw3ls form-control" name="email" id="contactemail" required>--%>
							</div>
							<div class="form-group">
								<label>Mobile</label>
								<asp:TextBox ID="txtmobile" runat="server" CssClass="contact-formw3ls form-control" required="true"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtmobile" runat="server" ForeColor="red" ErrorMessage="Enter Your Mobile Number"></asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtmobile" ValidationGroup="BuyLotChkEmail" runat="server" ErrorMessage="Invalid Phone Number" ForeColor="Red" Display="Dynamic"
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
								<%--<input type="email" class="contact-formw3ls form-control" name="email" id="contactemail" required>--%>
							</div>
							<div class="form-group">
								<label>Your Message</label>
								<asp:TextBox ID="txtmessage" runat="server" Height="200" TextMode="Multiline" CssClass="contact-formw3ls form-control" required="true"></asp:TextBox>
								<%--<textarea class="contact-formw3ls form-control" rows="5" name="message" id="contactcomment" required></textarea>--%>
							</div>

							<asp:Button ID="Button1" CssClass="btn btn-info btn-lg-block w3ls-btn px-sm-4 px-3 text-capitalize mr-sm-2" OnClick="submit" runat="server" Text="submit" />
							<%--<button type="submit" class="btn submit contact-submit mt-4">Submit</button>--%>
						</div>
					</div>
				</div>
				<!-- //contact form -->
			</div>
		</div>
	</section>

</asp:Content>
